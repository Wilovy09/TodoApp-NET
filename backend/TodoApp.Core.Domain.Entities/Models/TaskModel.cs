using System.ComponentModel.DataAnnotations;

namespace TodoApp.Core.Domain.Entities;

public class TaskModel
{
    public string Uuid { get; set; } = null!;

    [MaxLength(50, ErrorMessage = "El campo {0} debe tener máximo {1} catactéres.")]
    public string Nombre { get; set; } = null!;

    [DataType(DataType.MultilineText)]
    [MaxLength(500, ErrorMessage = "El campo {0} debe tener máximo {1} catactéres.")]
    public string Description { get; set; } = null!;

    public bool Complete { get; set; }
}
