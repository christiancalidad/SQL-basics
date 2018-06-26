# Introducción al lenguaje SQL y el gestor de bases de datos relacionales MySQL

Haga click [aquí](http://nbviewer.jupyter.org/github/jdvelasq/SQL-for-analytics/tree/master/01-SQL/)
para visualizar este repositorio en nbviewer.


## Descripción

Una de las principales fuentes de datos en Analítica y Ciencia de los Datos son los
gestores de bases de datos relacionales, y es por ello que la comprensión del lenguaje SQL
es uno de los requerimientos básicos para el profesional del área. Este repo contiene un
tutorial introductorio a la programación en SQL usando el gestor MySQL.

El siguiente grafo muestra donde encaja este tutorial en el proceso.

![readme.jpg](images/readme.jpg)

## Objetivos

Al finalizar este tutorial el lector debe estar en capacidad de usar el lenguaje SQL para:

* Crear, manipular y borrar bases de datos y otras entidades.
* Realizar consultas de baja complejidad.
* Aplicar filtros y criterios de selección.  
* Insertar, borrar y modificar información.


## Requerimientos

Para realizar este tutorial usted debe tener instalados:

* [MySQL Community Edition](https://dev.mysql.com/downloads/mysql/), por lo menos el MySQL Community Server.

	Haga click [aquí](https://dev.mysql.com/doc/refman/5.6/en/installing.html) para acceder
	a la guía de instalación de MySQL para diferentes sistemas operativos.  

	Lea las siguientes recomendaciones de instalación:

- MySQL Server requiere la instalación o actualización de Microsoft Visual C++, esta acción se puede ver impedida durante  la consiguración del instalador por algunos antivirus. Asegurese de que su antivirus no bloquee dicha acción. 

- Para controlar el acceso a las bases de dato, MySQL Server permite la gestión de usuarios y contraseñas. Con el objetivo de conectar el producto con Python, se requiere elegir la forma **NO** recomendada por el sistema para evitar la encriptación de los datos de usuario.

- El instalador crea directorios para el almacenamiento de datos del programa y para la gestión de la información en las bases de datos en el disco C:. Este último se encuentra por defecto oculto en el explorador de archivos, por lo tanto es necesario hacer visibles todas las carpetas ocultas, en Windows. 

- Cuando se complete la instalación, es necesario desactivar el modo `secure-file-priv` que impide que los archivos en el directorio de datos sean visualizados por fuera del servidor. Para ello, se debe abrir el archivo `my.ini` que se encuentra en el directorio `C:\ProgramData\MySQL\MySQL Server 8.0` para Windows y asegurarse de que el campo identificado como `#Secure File Priv.` se encuentre de la siguiente forma:

	`# Secure File Priv.`

	`secure-file-priv=""`

	Luego, reinicie el equipo para actualizar la sesión de MySQL Server. 

* [Anaconda Python](https://www.anaconda.com/download/#macos)
* Y los paquetes:
   * [`ipython-sql`](https://github.com/catherinedevlin/ipython-sql).
   * `PyMySQL`.
   * `Traitlets`.
   
> Nota: Instale los paquetes con `pip install ipython-sql; pip install pymysql`; `pip install traitlets`.

## Conexión entre Jupyter y MySQL Server.
Para seguir las instrucciones, asegurese de contar con Jupyter Notebook conectado al kernel de Python a través del promt de comandos o desde Anaconda promt, y tener correctamente instalados los paquetes mencionados. 

	1. Abra una un libro de Jupyter con el kernel de Python
	
	2. Ejecute los siguientes comandos:
		
		from traitlets.config import Bool, Unicode
		
		%load_ext sql
		
		%sql mysql+pymysql://USUARIO:CONTRASEÑA@localhost

## Información adicional

El shell de MySQL permite crear sesiones interactivas usando JavaScript, Python y SQL.

* [Instalador](https://dev.mysql.com/downloads/shell/).
* [Guía del usuario](https://dev.mysql.com/doc/mysql-shell-excerpt/5.7/en/).

Para cambiar el password de administrador use:


      SET PASSWORD FOR 'root'@'localhost' = PASSWORD('MyNewPass');


      ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';


En mac OS, para cambiar el valor de la variable. entre al directorio /Library/LaunchDaemons
y agregue la línea:

	 <string>—secure-file-priv=</string>

en el archivo 'com.oracle.oss.mysql.mysqld.plist'

---

**Juan David Velásquez Henao**    
jdvelasq@unal.edu.co  
Universidad Nacional de Colombia, Sede Medellín  
Facultad de Minas  
Medellín, Colombia  
[LinkedIn](https://co.linkedin.com/in/juan-david-velásquez-henao-94078979), [GitHub](https://github.com/jdvelasq), [ResearchGate](https://www.researchgate.net/profile/Juan_Velasquez8)


[Licencia](https://github.com/jdvelasq/SQL-for-analytics/tree/master/LICENSE)
