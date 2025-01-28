using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using TodoApp.Core.Infraestructure.Data;
using Proto = TodoApp.Core.Protos.Task;

namespace TodoApp.Core.Infraestructure;

public class TaskRepositorie
{
    public string GenerateUUID()
    {
        Guid guid = Guid.NewGuid();
        string uuid = guid.ToString("D");
        return uuid;
    }

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
                finally
                {
                    conn.Close();
                }
            }
        }
        return tasks;
    }

    public Proto.RawTask FindTask(string UUID)
    {
        using (var context = new TaskDbContext())
        {
            var conn = context.Database.GetDbConnection();
            conn.Open();
            using (var command = conn.CreateCommand())
            {
                command.CommandText = "[dbo].[find_task]";
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@uuid", UUID));
                try
                {
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            return new Proto.RawTask
                            {
                                TaskId = reader.GetInt64(reader.GetOrdinal("TaskId")),
                                Uuid = reader.GetString(reader.GetOrdinal("Uuid")),
                                Title = reader.GetString(reader.GetOrdinal("Nombre")),
                                Description = reader.GetString(reader.GetOrdinal("Description")),
                                Complete = reader.GetBoolean(reader.GetOrdinal("Complete")),
                            };
                        }
                        else
                        {
                            throw new KeyNotFoundException($"Task with UUID {UUID} not found.");
                        }
                    }
                }
                catch (Exception e)
                {
                    throw new Exception(
                        "An error occurred while fetching task from the database.",
                        e
                    );
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }

    public Proto.RawTask CreateTask(Proto.PartialTask request)
    {
        using (var context = new TaskDbContext())
        {
            var conn = context.Database.GetDbConnection();
            conn.Open();
            using (var command = conn.CreateCommand())
            {
                command.CommandText = "";
                command.CommandType = System.Data.CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@uuid", request.Uuid));
                command.Parameters.Add(new SqlParameter("@nombre", request.Title));
                command.Parameters.Add(new SqlParameter("@description", request.Description));
                command.Parameters.Add(new SqlParameter("@complete", request.Complete));
                try
                {
                    using (var reader = command.ExecuteReader())
                    {
                        if (!reader.Read())
                            throw new Exception("An error ocurred while creating task.");
                        return new Proto.RawTask
                        {
                            Uuid = reader.GetGuid(reader.GetOrdinal("Uuid")).ToString(),
                            TaskId = reader.GetInt64(reader.GetOrdinal("TaskId")),
                            Title = reader.GetString(reader.GetOrdinal("Nombre")),
                            Description = reader.GetString(reader.GetOrdinal("Description")),
                            Complete = reader.GetBoolean(reader.GetOrdinal("Complete")),
                        };
                    }
                }
                catch (Exception e)
                {
                    throw new Exception($"Error ocurred creating task: {e}");
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }

    public void DeleteTask(String UUID) { }

    public void UpdateTask(String UUID) { }
}
