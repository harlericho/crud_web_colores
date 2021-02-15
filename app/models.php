<?php
require_once "config.php";
class Models extends Conexion
{
    public static function __listadoColor()
    {
        try {
            $sql = "CALL new_procedure";
            $query = Conexion::__dbConexion()->prepare($sql);
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        } catch (\Throwable $th) {
            die($th->getMessage());
        }
    }

    public static function __guardarColor($data)
    {
        try {
            $sql = "INSERT INTO colores(nombre,descripcion)
            VALUES(:nombre,:des)";
            $query = Conexion::__dbConexion()->prepare($sql);
            $query->bindParam(":nombre", $data['nombre'], PDO::PARAM_STR);
            $query->bindParam(":des", $data['des'], PDO::PARAM_STR);
            return $query->execute();
        } catch (\Throwable $th) {
            die($th->getMessage());
        }
    }

    public static function __cambioEstado($id)
    {
        try {
            $sql = "CALL new_procedure1(:id)";
            $query = Conexion::__dbConexion()->prepare($sql);
            $query->bindParam(":id", $id, PDO::PARAM_INT);
            $query->execute();
            return $query->fetchAll(PDO::FETCH_OBJ);
        } catch (\Throwable $th) {
            die($th->getMessage());
        }
    }
}
