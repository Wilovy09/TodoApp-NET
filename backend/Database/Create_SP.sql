DROP TABLE [Tasks];

CREATE TABLE [Tasks] (
    [TaskId] BIGINT NOT NULL PRIMARY KEY IDENTITY(1,1),
    [Uuid] UNIQUEIDENTIFIER UNIQUE NOT NULL,
    [Nombre] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(500) NULL,
    [Complete] BIT NOT NULL,
);

CREATE PROCEDURE create_task (@uuid UNIQUEIDENTIFIER, @nombre NVARCHAR(50), @description NVARCHAR(500), @complete BIT)
AS
BEGIN
    INSERT INTO Tasks (Uuid, Nombre, Description, Complete)
    Values (@uuid, @nombre, @description, @complete);
    SELECT * FROM Tasks WHERE Uuid = @uuid;
END
GO

EXEC create_task '3ad52dd1-5e9a-45ba-910d-08cafffb5b5a', 'TestTask', 'Test Task description', 0

CREATE PROCEDURE find_task (@uuid UNIQUEIDENTIFIER)
AS
BEGIN
    SELECT * FROM Tasks WHERE Uuid = @uuid;
END
GO

EXEC find_task '3ad52dd1-5e9a-45ba-910d-08cafffb5b5a'

CREATE PROCEDURE get_all_tasks
AS
BEGIN
    SELECT TaskId, CAST(Uuid as NVARCHAR(50)) as Uuid, Nombre, Description, Complete FROM Tasks;
END
GO

EXEC get_all_tasks

CREATE PROCEDURE delete_task (@uuid UNIQUEIDENTIFIER)
AS
BEGIN
   DELETE FROM Tasks WHERE Uuid = @uuid;
END
GO

EXEC delete_task '3ad52dd1-5e9a-45ba-910d-08cafffb5b5a'

CREATE PROCEDURE update_task (@uuid UNIQUEIDENTIFIER, @nombre NVARCHAR(50), @description NVARCHAR(500), @complete BIT)
AS
BEGIN
   UPDATE Tasks SET Nombre = @nombre, Description = @description, Complete = @complete WHERE Uuid = @uuid;
END
GO

EXEC update_task '3ad52dd1-5e9a-45ba-910d-08cafffb5b5a', 'TestTask', 'Test Task description', 1

