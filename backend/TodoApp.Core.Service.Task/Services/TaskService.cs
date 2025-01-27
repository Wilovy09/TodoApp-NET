using Grpc.Core;
using TodoApp.Core.Infraestructure;
using Proto = TodoApp.Core.Protos.Task;
using Tasks = System.Threading.Tasks;

namespace TodoApp.Core.Service.Task;

public class TaskService : Proto.TaskManager.TaskManagerBase
{
    private readonly ILogger<TaskService> _logger;

    public TaskService(ILogger<TaskService> logger)
    {
        _logger = logger;
    }

    public override Tasks.Task<Proto.TaskList> Read(Proto.Empty request, ServerCallContext context)
    {
        var tasksRepository = new TaskRepositorie();

        var tasks = tasksRepository.GetAllTasks();

        var taskList = new Proto.TaskList();

        // E Argument 1: cannot convert from 'System.Collections.Generic.List<TodoApp.Core.Protos.Task.RawTask>'
        // to 'System.Collections.Generic.IEnumerable<TodoApp.Core.Protos.Task.RawTask>' csharp (CS1503) [30, 33]
        taskList.Tasks.Add(
            tasks.Select(t => new Proto.RawTask
            {
                Uuid = t.Uuid,
                TaskId = t.TaskId,
                Title = t.Title,
                Complete = t.Complete,
                Description = t.Description,
            })
        );

        return Tasks.Task.FromResult(taskList);
    }
}
