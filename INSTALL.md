
CONTEIDOS DE ESTE ARCHIVO
------------------------

 * Requerimientos
 * Instalacion
 * Permisos

REQUERIMIENTOS
--------------

- Web Server: Apache 2.x con mod_rewrite y 'AllowOverride All' en la configuración del Virtual Host.
- Database Server: MySQL 5.0.15 o superior.
- PHP: Version 5.3, con las extensiones hash, json, PDO, pdo_mysql, XML, GD. 128MB de memory_limit.
- Capacidad de enviar emails ya sea por sendmail o un servidor SMTP.
- Drupal Shell (http://drupal.org/project/drush)
- Git

INSTALACION
-----------

1. Dentro de la carpeta del repositorio ejecutar build de instalacion:

     drush make --working-copy=. build.make /var/www/public_html

   /var/www/public_html sera la carpeta donde se descargaran el core de Drupal y los módulos de terceros.
   Debe ser la carpeta pública del Web Server.

2. Instalar Drupal

     cd /var/www/public_html
     drush si base --db-url=mysql://[db_usuario]:[db_contraseña]@[db_host]/[db_nombre] -v

   Reemplazar [db_usuario], [db_contraseña], [db_host] y [db_nombre] por los valores que correspondan.

   Al finalizar la instalación el script devolvera la contraseña del usuario de administracion.

   Revisar si en la URL correspondiente la instalacion de prueba de Drupal funciona correctamente.

PERMISOS
--------

   Es recomendable que todos los archivos y carpetas sean de un usuario diferente al del Web Server,
   exceptuando la carpeta sites/default/files, la cual Drupal utilizará para crear archivos CSS y JS
   compactos además de subir las imágenes cargadas por los usuarios.
