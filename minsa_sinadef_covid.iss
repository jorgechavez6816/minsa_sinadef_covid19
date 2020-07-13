Sub Main
	IgnoreWarning(True)
	Client.RunPython "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Macros.ILB\minsa_sinadef_covid.py"
	Call TextImport()		'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\fallecidos_sinadef.csv
	Call TextImport1()	'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\fallecidos_covid.csv
	Client.RefreshFileExplorer	
End Sub

' Archivo - Asistente de importación: Texto delimitado
Function TextImport
	dbName = "fallecidos_sinadef.IMD"
	Client.ImportUTF8DelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\fallecidos_sinadef.csv", dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importación.ILB\fallecidos_sinadef.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function

' Archivo - Asistente de importación: Texto delimitado
Function TextImport1
	dbName = "fallecidos_covid.IMD"
	Client.ImportUTF8DelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\fallecidos_covid.csv", dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importación.ILB\fallecidos_covid.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function

