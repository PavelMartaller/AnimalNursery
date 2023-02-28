package nursery.models.animals;

import nursery.models.AnimalGroup;
import nursery.models.AnimalRepresentative;

import java.util.Date;

public abstract class HomeAnimal extends MansFriend {

    public HomeAnimal(AnimalRepresentative animalRepresentative, String animalName, Date animalBirthdate) {
        super(AnimalGroup.HOME_ANIMAL, animalRepresentative, animalName, animalBirthdate);
    }
}
