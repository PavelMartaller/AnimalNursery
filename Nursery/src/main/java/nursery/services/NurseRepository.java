package nursery.services;

import nursery.models.AnimalCommand;
import nursery.models.animals.MansFriend;

import java.util.List;

public interface NurseRepository<T, Tid> {
    List<T> getAll();
//    T getById(Tid id);
    Tid createAnimal(T animal);
    Tid addCommand(Tid id);
    List<AnimalCommand> showCommands(Tid id);
}
