package io.github.platovd.controller;

import io.github.platovd.service.AppealService;
import io.github.platovd.service.CourseService;
import io.github.platovd.service.PetProjectService;
import io.github.platovd.service.TechnologyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/")
@org.springframework.stereotype.Controller
public class Controller {
    private final AppealService appealService;
    private final TechnologyService technologyService;
    private final CourseService courseService;
    private final PetProjectService petProjectService;

    @Autowired
    public Controller(AppealService appealService, TechnologyService technologyService, CourseService courseService, PetProjectService petProjectService) {
        this.appealService = appealService;
        this.technologyService = technologyService;
        this.courseService = courseService;
        this.petProjectService = petProjectService;
    }

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
}
