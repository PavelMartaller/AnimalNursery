package nursery.views;

import nursery.controllers.HomeAnimalController;
import nursery.models.AnimalRepresentative;
import nursery.models.animals.AnimalModel;
import nursery.services.HomeAnimalRegistry;

import javax.swing.*;
import java.util.Arrays;
import java.util.Date;

public class GUI extends JFrame {
    private JPanel rootPanel;
    private JButton creAnimalButton;
    private JList listAnimals;
    private JTextField animalName;
    private JLabel result;

    public GUI() {
        setContentPane(rootPanel);
        setVisible(true);

        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        AnimalModel model = new AnimalModel();
        Menu view = new Menu();
        HomeAnimalRegistry homeAnimalRegistry = new HomeAnimalRegistry();
        HomeAnimalController homeAnimalController = new HomeAnimalController(model, view, homeAnimalRegistry);

        creAnimalButton.addActionListener(e -> view.addNewAnimal(listAnimals.getSelectedValue().toString(), animalName.getText(), new Date(), "Sit"));

        result.setText("Animal added");
    }


}
