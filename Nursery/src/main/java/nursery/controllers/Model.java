package nursery.controllers;

import nursery.models.animals.HomeAnimal;
import nursery.models.animals.MansFriend;

import java.util.Collection;
import java.util.Date;

public interface Model {

    HomeAnimal createAnimal(String represent, String name, Date birth, String command);

}
