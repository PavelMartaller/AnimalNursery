package nursery.controllers;

import nursery.models.animals.HomeAnimal;
import nursery.models.animals.MansFriend;
import nursery.services.HomeAnimalRepository;

import java.util.Collection;
import java.util.Date;

public class HomeAnimalController implements ViewObserver {

    private final Model model;
    private final View viewMenu;
    private final HomeAnimalRepository homeAnimalRepository;
    private Collection<MansFriend> mansFriends;

    public HomeAnimalController(Model model, View view, HomeAnimalRepository homeAnimalRepository){
        this.model = model;
        this.viewMenu = view;
        this.homeAnimalRepository = homeAnimalRepository;
        view.setObserver(this);
    }

    public int onCreateAnimal(String represent, String name, Date birth, String command){
        return homeAnimalRepository.createAnimal((HomeAnimal) model.createAnimal(represent, name, birth, command));
    }

}
