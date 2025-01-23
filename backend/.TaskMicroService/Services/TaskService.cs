using Grpc.Core;

namespace TaskMicroService.Services;

public class TaskService : TaskManager.TaskManagerBase
{
    private readonly ILogger<TaskService> _logger;

    public TaskService(ILogger<TaskService> logger)
    {
        _logger = logger;
    }

    public override Task<TaskList> Read(Empty request, ServerCallContext context)
    {
        var taskList = new TaskList();

        taskList.Tasks.Add(
            new RawTask
            {
                Uuid = "1234123412341234",
                Title = "Aasdf",
                Description = "adsfasdfasdf",
                Complete = false,
            }
        );

        return Task.FromResult(taskList);
    }
}
