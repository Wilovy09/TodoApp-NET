using Microsoft.EntityFrameworkCore;
using TodoApp.Core.Infraestructure.Data;
using Proto = TodoApp.Core.Protos.Task;

namespace TodoApp.Core.Infraestructure;

public class TaskRepositorie
{
    public List<Proto.RawTask> GetAllTasks()
    {
        var tasks = new List<Proto.RawTask>();

        using (var context = new TaskDbContext())
        {
            var conn = context.Database.GetDbConnection();
            conn.Open();

            using (var command = conn.CreateCommand())
            {
                command.CommandText = "[dbo].[get_all_tasks]";
                command.CommandType = System.Data.CommandType.StoredProcedure;

                try
                {
                    using (var reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // Append -> Add: tasks es de tipo List<Proto.RawTask>.
                            // Append no es un método válido para List<T>; por eso se usa Add
                            tasks.Add(
                                new Proto.RawTask
                                {
                                    TaskId = reader.GetInt64(reader.GetOrdinal("TaskId")),
                                    Uuid = reader.GetString(reader.GetOrdinal("Uuid")),
                                    Title = reader.GetString(reader.GetOrdinal("Nombre")),
                                    Description = reader.GetString(
                                        reader.GetOrdinal("Description")
                                    ),
                                    Complete = reader.GetBoolean(reader.GetOrdinal("Complete")),
                                }
                            );
                        }
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(
                        "An error occurred while fetching tasks from the database.",
                        e
                    );
                }
            }
        }

        return tasks;
    }
}
