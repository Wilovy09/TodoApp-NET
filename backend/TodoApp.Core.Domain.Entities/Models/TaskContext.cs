using Microsoft.EntityFrameworkCore;

namespace TodoApp.Core.Domain.Entities;

public class TaskContext : DbContext
{
    required public TaskContext(DbContextOptions options)
        : base(options) { }

    public DbSet<TaskModel> Tasks { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);
        modelBuilder.Entity<TaskModel>().HasIndex(c => c.Uuid).IsUnique();
    }
}
