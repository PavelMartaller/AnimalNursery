package nursery.models;

public class AnimalCommand {

    private int commandId;
    private String commandName;

    public AnimalCommand(int commandId, String commandName) {
        this(commandName);
        this.commandName = commandName;
    }

    public AnimalCommand(String commandName) {
        this.commandName = commandName;
    }

    public String getCommandName() {
        return commandName;
    }
}
