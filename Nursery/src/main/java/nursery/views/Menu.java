package nursery.views;

import nursery.controllers.View;
import nursery.controllers.ViewObserver;

import java.util.Date;

public class Menu implements View {

    private ViewObserver observer;

    public void setObserver(ViewObserver observer){
        this.observer = observer;
    }

    public int addNewAnimal(String represent, String name, Date birth, String command) {
        return observer.onCreateAnimal(represent, name, birth, command);
    }

    public void printResult(int number){

    }


}
