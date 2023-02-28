package nursery.models.animals.representatives.packAnimals;

import nursery.models.AnimalRepresentative;
import nursery.models.animals.PackAnimal;

import java.util.Date;

public class Horse extends PackAnimal {

    public Horse(String animalName, Date animalBirthdate, int liftingWeight) {
        super(AnimalRepresentative.HORSE, animalName, animalBirthdate, liftingWeight);
    }
}
