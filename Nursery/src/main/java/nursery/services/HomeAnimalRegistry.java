package nursery.services;

import nursery.models.AnimalCommand;
import nursery.models.animals.HomeAnimal;

import java.util.List;

/**
 * Реестр работы с домашними животными.
 * Паттерн Repository
 * ЗДЕСЬ РЕАЛИЗОВАНА РАБОТА С БД ЧЕРЕЗ ORM MyBatis, например
 */
public class HomeAnimalRegistry implements HomeAnimalRepository {

    @Override
    public List<HomeAnimal> getAll() {
        return null;
    }

    @Override
    public Integer createAnimal(HomeAnimal animal) {
        return 1;
    }

    @Override
    public Integer addCommand(Integer id) {
        return null;
    }

    @Override
    public List<AnimalCommand> showCommands(Integer id) {
        return null;
    }
}
