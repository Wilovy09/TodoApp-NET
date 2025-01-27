using Microsoft.EntityFrameworkCore;

namespace TodoApp.Core.Domain.Entities;

public class TaskContext : DbContext
{
    public TaskContext(DbContextOptions options)
        : base(options) { }

    public DbSet<TaskModel> Tasks { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);
        modelBuilder.Entity<TaskModel>().HasIndex(a => a.TaskId).IsUnique();
        modelBuilder.Entity<TaskModel>().HasIndex(b => b.Uuid).IsUnique();
    }
}
