package main.com.myApp.controller;

import main.com.myApp.model.UserModel;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String showHomePage(Model model)
    {
        model.addAttribute("userModel", new UserModel());
        return "formPage";
    }

    @RequestMapping("/processForm")
    public String processForm(@Valid @ModelAttribute("userModel") UserModel userModel, BindingResult bindingResult, Model model)
    {
        if (bindingResult.hasErrors()) {
            return "formPage";
        }

        //step2: add name to model
        model.addAttribute("userModelObj" , userModel);

        //step3: return view page
        return "resultPage";
    }

    @InitBinder
    private void removeWhiteSpace(WebDataBinder dataBinder) {
        StringTrimmerEditor trimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, trimmerEditor);
    }
}


