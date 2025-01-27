using Microsoft.EntityFrameworkCore;

namespace TodoApp.Core.Infraestructure.Data;

public class TaskDbContext : DbContext
{
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        if (!optionsBuilder.IsConfigured)
        {
            optionsBuilder.UseSqlServer(
                "Server=localhost,1433;Database=TodoAppNET;User Id=sa;Password=Testing123.;Trusted_Connection=False;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=True;Connection Timeout=30;"
            );
        }
    }
}
