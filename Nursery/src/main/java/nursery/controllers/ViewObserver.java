package nursery.controllers;

import java.util.Date;

public interface ViewObserver {
    int onCreateAnimal(String represent, String name, Date birth, String command);
}
