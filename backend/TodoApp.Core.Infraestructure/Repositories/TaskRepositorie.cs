namespace TodoApp.Core.Infraestructure;

public class TaskRepositorie
{
    public class GetAllTasks
    {
        var context = new TodoApp.Core.Infraestructure.Data.TaskDbContext;
    }

    public class FindTask { }

    public class CreateTask { }

    public class DeleteTask { }

    public class UpdateTask { }
}
