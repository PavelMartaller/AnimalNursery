package nursery.models;

/**
 * animal's representative of some group
 */
public enum AnimalRepresentative {
    CAT("Cat"),
    DOG("Dog"),
    HAMSTER("Hamster"),
    HORSE("Horse"),
    CAMEL("Camel"),
    DONKEY("Donkey");

    private final String represent;

    private AnimalRepresentative(String represent) {
        this.represent = represent;
    }

    public String getRepresentStr() {
        return represent;
    }
}
