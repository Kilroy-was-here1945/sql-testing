CREATE TABLE [animals] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [names] nvarchar(255),
  [first_admitted] timestamp,
  [type_of_animal] nvarchar(255)
)
GO

CREATE TABLE [animal_by_id] (
  [history] nvarchar(255),
  [how_long_its_been_there] timestamp
)
GO

ALTER TABLE [animal_by_id] ADD FOREIGN KEY ([history]) REFERENCES [animals] ([id])
GO
