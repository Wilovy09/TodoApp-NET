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

    public override Tasks.Task<Proto.RawTask> Find(
        Proto.TaskUuid request,
        ServerCallContext context
    )
    {
        var tasksRepository = new TaskRepositorie();
        var task = tasksRepository.FindTask(request.Uuid);
        return Tasks.Task.FromResult(
            new Proto.RawTask
            {
                Uuid = task.Uuid,
                Title = task.Title,
                TaskId = task.TaskId,
                Description = task.Description,
                Complete = task.Complete,
            }
        );
    }

    public override Tasks.Task<Proto.RawTask> Create(
        Proto.CreateTask request,
        ServerCallContext context
    )
    {
        var tasksRepository = new TaskRepositorie();
        var createTask = new Proto.PartialTask
        {
            Uuid = tasksRepository.GenerateUUID(),
            Title = request.Title,
            Description = request.Description,
            Complete = request.Complete,
        };

        // /home/wilovy/Dev/TodoApp/backend/TodoApp.Core.Service.Task/Services/TaskService.cs(72,47):
        // error CS1503: Argument 1: cannot convert from 'TodoApp.Core.Protos.Task.PartialTask
        // [/home/wilovy/Dev/TodoApp/backend/TodoApp.Core.Service.Task/obj/Debug/net8.0/Task.cs(989)]'
        // to 'TodoApp.Core.Protos.Task.PartialTask [/home/wilovy/Dev/TodoApp/backend/TodoApp.Core.Infraestructure/obj/Debug/net8.0/ref/TodoApp.Core.Infraestructure.dll]'
        // [/home/wilovy/Dev/TodoApp/backend/TodoApp.Core.Service.Task/TodoApp.Core.Service.Task.csproj]
        var task = tasksRepository.CreateTask(createTask);

        return Tasks.Task.FromResult(
            new Proto.RawTask
            {
                Uuid = task.Uuid,
                TaskId = task.TaskId,
                Title = task.Title,
                Description = task.Description,
                Complete = task.Complete,
            }
        );
    }
}
