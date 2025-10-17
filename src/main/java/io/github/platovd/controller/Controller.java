package io.github.platovd.controller;

import io.github.platovd.service.*;
import lombok.RequiredArgsConstructor;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@org.springframework.stereotype.Controller
@RequiredArgsConstructor
@RequestMapping("/")
public class Controller {
    private final AppealService appealService;
    private final TechnologyService technologyService;
    private final CourseService courseService;
    private final PetProjectService petProjectService;
    private final PsychologyTestService psychologyTestService;


    @RequestMapping("")
    public ModelAndView indexView() {
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("technologies", technologyService.getAllTechnology());
        modelAndView.addObject("pets", petProjectService.getAllPetProject());
        return modelAndView;
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

    @RequestMapping("/psychology")
    public String psychology(Model model) {
        model.addAttribute("resultList", psychologyTestService.getAllTestResultsSorted());
        return "psychology";
    }

    @RequestMapping("/schulte")
    public String schulte() {
        return "schulte";
    }
}
