package nursery.models.animals;

import nursery.models.AnimalGroup;
import nursery.models.AnimalRepresentative;

import java.util.Date;

public abstract class PackAnimal extends MansFriend {

    private int liftingWeight;

    public PackAnimal(AnimalRepresentative animalRepresentative, String animalName, Date animalBirthdate, int liftingWeight) {
        super(AnimalGroup.PACK_ANIMAL, animalRepresentative, animalName, animalBirthdate);
        this.liftingWeight = liftingWeight;
    }

    public int getLiftingWeight() {
        return liftingWeight;
    }

    @Override
    public String toString() {
        return super.toString() + String.format("lift:%s  ", liftingWeight);
    }
}
