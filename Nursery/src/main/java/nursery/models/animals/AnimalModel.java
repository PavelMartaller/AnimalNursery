package nursery.models.animals;

import nursery.controllers.Model;
import nursery.models.AnimalCommand;
import nursery.models.AnimalRepresentative;

import java.util.Date;

public class AnimalModel implements Model {

    @Override
    public HomeAnimal createAnimal(String represent, String name, Date birth, String command) {

        HomeAnimal homeAnimal = new HomeAnimal(AnimalRepresentative.CAT, name, birth) {
            @Override
            public int getAnimalId() {
                return super.getAnimalId();
            }

        };
        AnimalCommand newCommand = new AnimalCommand(command);
        homeAnimal.getCommands().add(newCommand);
        return homeAnimal;
    }
}
