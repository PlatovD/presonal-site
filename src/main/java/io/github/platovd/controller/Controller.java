package io.github.platovd.controller;

import io.github.platovd.model.Appeal;
import io.github.platovd.service.AppealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@RequestMapping("/")
@org.springframework.stereotype.Controller
public class Controller {
    private final AppealService appealService;

    public Controller(AppealService appealService) {
        this.appealService = appealService;
    }

    @RequestMapping("")
    public String indexView() {
        return "index";
    }

    @RequestMapping("/biography")
    public String biographyView() {
        return "biography";
    }

    @RequestMapping("/technologies")
    public String technologiesView() {
        return "technologies";
    }

    @RequestMapping("/pet-projects")
    public String petProjectsView() {
        return "pet-projects";
    }

    @RequestMapping("/contacts")
    public String contacts() {
        return "contacts";
    }

    @RequestMapping(value = "/saveAppeal", method = RequestMethod.POST)
    public RedirectView saveAppeal(@RequestParam("name") String name, @RequestParam("contact") String contact, @RequestParam("message") String message) {
        appealService.saveAppeal(new Appeal(name, contact, message));
        return new RedirectView("/contacts");
    }
}
