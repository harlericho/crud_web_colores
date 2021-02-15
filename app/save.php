<?php
require_once "models.php";
$arrayName = array(
    'nombre' => strtoupper($_POST['nombre']),
    'des' => strtoupper($_POST['des']),
);
echo Models::__guardarColor($arrayName);
