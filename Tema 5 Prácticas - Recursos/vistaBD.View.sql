CREATE VIEW [dbo].[ProductosDet]
AS SELECT dbo.[PRODUCTO].IdProducto, dbo.[PRODUCTO].DesPro,
dbo.[PRODUCTO].PrePro, dbo.[PRODUCTO].IdUnidad,
dbo.[PRODUCTO].IdTipo, dbo.[TIPO].DesTip
 FROM dbo.[PRODUCTO] INNER JOIN
 dbo.[TIPO] ON dbo.[PRODUCTO].IdTipo = dbo.[TIPO].IdTipo
