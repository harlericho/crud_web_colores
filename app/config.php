<?php
class Conexion
{
    public static function __dbConexion()
    {
        try {
            $pdo = new PDO("mysql:host=localhost;dbname=db_crudweb_colores", "charlie", "Charlie86*");
            return $pdo;
            //echo "conectado";
        } catch (\Throwable $th) {
            die($th->getMessage());
        }
    }
}
//Conexion::__dbConexion();
