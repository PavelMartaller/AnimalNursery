package nursery.models.animals;

import nursery.models.AnimalCommand;
import nursery.models.AnimalGroup;
import nursery.models.AnimalRepresentative;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

public abstract class MansFriend {

    private static int counter;
    private int animalId;
    private AnimalGroup animalGroup;
    private AnimalRepresentative animalRepresentative;
    private String animalName;
    private Date animalBirthdate;
    private Collection<AnimalCommand> animalCommands = new ArrayList<>();

    public MansFriend(AnimalGroup animalGroup, AnimalRepresentative animalRepresentative, String animalName, Date animalBirthdate) {
        animalId = ++counter;
        this.animalGroup = animalGroup;
        this.animalRepresentative = animalRepresentative;
        this.animalName = animalName;
        this.animalBirthdate = animalBirthdate;
    }

    public int getAnimalId() {
        return animalId;
    }

    public Collection<AnimalCommand> getCommands() {
        return animalCommands;
    }

    @Override
    public String toString() {

        return String.format("Animal id:%s  group:%s  representative:%s  name:%s  birthdate:%s  ",
                animalId, animalGroup.getGroupStr(), animalRepresentative.getRepresentStr(), animalName, animalBirthdate);
    }
}
