package nursery.models;

public enum AnimalGroup {
    HOME_ANIMAL("Home"),
    PACK_ANIMAL("Pack");

    private final String group;

    private AnimalGroup(String group) {
        this.group = group;
    }

    public String getGroupStr() {
        return group;
    }
}
