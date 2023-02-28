package nursery.models.animals.representatives.homeAnimals;

import nursery.models.AnimalRepresentative;
import nursery.models.animals.HomeAnimal;

import java.util.Date;

public class Cat extends HomeAnimal {
    public Cat(String animalName, Date animalBirthdate) {
        super(AnimalRepresentative.CAT, animalName, animalBirthdate);
    }
}
