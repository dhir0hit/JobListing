package com.example.joblisting.Controller;

import com.example.joblisting.Model.User;
import com.example.joblisting.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("user")
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("all")
    public @ResponseBody List<User> getAll() {
        return userService.getAllUser();
    }

    /**
     * Get Mapping
     * for showing user by getting id from param
     *
     * if user is logged in as that user he can edit
     * */
    @GetMapping("{id}")
    public ModelAndView getUserById(
            @PathVariable("id") UUID id,
            @ModelAttribute("command") User user,
            HttpSession session)
    {
        user = userService.getUserById(id)
                 .orElse(null);

        ModelAndView modelAndView = new ModelAndView("User/index");
        modelAndView.getModel().put("user", user);

        try {
            modelAndView.getModel().put("canEdit", user.getId() == (UUID) session.getAttribute("user-id"));
        } catch (Exception e) {}


        if(user == null) {
            // TODO: show error page and tell user not found
        }

        // TODO: error on if user cannot be find
        return modelAndView;
    }

    /**
     * Get Mapping
     * for editing user account
     * showing them form to edit account
     * */
    @GetMapping("edit/{id}")
    public RedirectView updateUserRouter(
            @PathVariable("id") UUID id,
            @ModelAttribute("command") User user,
            HttpSession session)
    {
        user = userService.getUserById(id)
                .orElse(null);

        RedirectView redirectView;

        // Return login page if not logged in
        if (session.getAttribute("user-id") != null
                && userService.getUserById((UUID) session.getAttribute("user-id"))
                .orElse(null) != null) {
            // Creating Redirect class and redirecting to account
            redirectView = new RedirectView("/user/login");
            return redirectView;
        }

        // return to edit page
        redirectView = new RedirectView("/edit/" + id);
        return redirectView;

        // TODO: get update user working
    }

    /**
     * post mapping
     * for user to save edited data
     * */
    @PostMapping("edit/{id}")
    public void updateUser(
            @PathVariable("id") UUID id,
            @ModelAttribute("command") User user,
            HttpSession session)
    {
        user = userService.getUserById(id)
                .orElse(null);

        ModelAndView modelAndView = new ModelAndView("User/Edit");
        modelAndView.getModel().put("user", user);


    }

    /**
     * Get mapping
     * for get user to show user details
     * */
    @GetMapping
    public RedirectView getUser(
            @ModelAttribute("command") User user,
            HttpSession session)
    {
        RedirectView redirectView;

        // getting Session value
        UUID id = (UUID) session.getAttribute("user-id");

        User findUser = userService.getUserById((UUID) session.getAttribute("user-id"))
                .orElse(null);

        // remove id from session if there is no user that is in session
        if(findUser == null) {
            session.removeAttribute("user-id");
        }


        // Check if user Signed in and redirect to user home page
        if (id != null) {
            redirectView = new RedirectView("/user/" + id);
            return redirectView;
        }

        // Creating Redirect class and redirecting to account
        redirectView = new RedirectView("/user/login");
        return redirectView;
    }

    /**
     * get mapping
     * for register page for user to fill out information
     * to register
     * */
    @GetMapping("/register")
    public ModelAndView getRegister(
            @ModelAttribute("command") User user,
            HttpSession session)
    {
        ModelAndView modelAndView = new ModelAndView("User/Register");
        modelAndView.getModel().put("user", user);

        return modelAndView;
    }

    /**
     * Post mapping
     * for register to register user in database
     * */
    @PostMapping("/register")
    public RedirectView Register(
            @ModelAttribute("command") User user,
            HttpSession session)
    {
        ModelAndView modelAndView = new ModelAndView("User/index");
        modelAndView.getModel().put("user", user);

        // Adding user to database
        UUID id = userService.addUser(user);

        // Adding value to Session
        session.setAttribute("user-id", id);

        // Creating Redirect class and redirecting to account
        RedirectView redirectView = new RedirectView("/user/" + id);
        return redirectView;
    }

    /**
     * Get mapping
     * for Login page
     * */
    @GetMapping("/login")
    public ModelAndView getLogin(
            @ModelAttribute("command") User user,
            HttpSession session)
    {
        ModelAndView modelAndView = new ModelAndView("User/Login");
        modelAndView.getModel().put("user", user);

        return modelAndView;
    }

    /**
     * Login Page with error to display
     * */
    @GetMapping("/login/{error}")
    public ModelAndView getLoginWithError(
            @ModelAttribute("command") User user,
            ModelMap model,
            @PathVariable("error") String error)
    {
        ModelAndView modelAndView = new ModelAndView("User/Login");
        modelAndView.getModel().put("user", new User());
        if(error.equals("404")) {
            modelAndView.getModel().put("error", "Wrong Password or Email");
        } else {
            modelAndView.getModel().put("error", "Something went wrong please try again");
        }
        return modelAndView;
    }

    /**
     * Redirecting Login to user page
     * or to error page if user not found
     * */
    @PostMapping("/login")
    public RedirectView Login(
            @ModelAttribute("command") User user,
            HttpSession session)
    {
        UUID id = userService.checkLogin(user);
        RedirectView redirectView;
        if(id != null) {
            /*TODO: Login*/
            redirectView = new RedirectView("/user/" + id);
            return redirectView;
        }
        redirectView = new RedirectView("/user/login/404");
        return redirectView;
    }
}
