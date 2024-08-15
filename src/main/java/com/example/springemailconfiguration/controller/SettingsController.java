package com.example.springemailconfiguration.controller;

import com.example.springemailconfiguration.model.EmailSettings;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/settings")
public class SettingsController {

    @GetMapping
    public String showSettingsForm(Model model) {
        EmailSettings settings = new EmailSettings();
        settings.setLanguage("English");
        settings.setPageSize(25);
        settings.setSpamFilter(false);
        settings.setSignature("Thor\nKing, Asgard");

        model.addAttribute("settings", settings);
        return "settingsForm";
    }

    @PostMapping
    public String updateSettings(@ModelAttribute("settings") EmailSettings settings) {
        return "redirect:/settings";
    }
}
