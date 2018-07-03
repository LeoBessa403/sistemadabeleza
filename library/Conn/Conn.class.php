<?php

/**
 * Conn.class [ CONEXÃO ]
 * Classe abstrata de conexão. Padrão SingleTon.
 * Retorna um objeto PDO pelo método estático getConn();
 * 
 * @copyright (c) 2014, Leo Bessa
 */
abstract class Conn {

    private static $Host = HOST;
    private static $User = USER;
    private static $Pass = PASS;
    private static $Dbsa = DBSA;

    /** @var PDO */
    private static $Connect = null;

    /**
     * Conecta com o banco de dados com o pattern singleton.
     * Retorna um objeto PDO!
     */
    private static function Conectar() {
        try {
            if (self::$Connect == null):
                $dsn = 'mysql:host=' . self::$Host . ';dbname=' . self::$Dbsa;
                $options = array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES UTF8');
                self::$Connect = new PDO($dsn, self::$User, self::$Pass, $options);
            endif;
        } catch (PDOException $e) {
            PHPErro($e->getCode(), $e->getMessage(), $e->getFile(), $e->getLine());
            die;
        }

        self::$Connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return self::$Connect;
    }

    /** Retorna um objeto PDO Singleton Pattern. */
    protected static function getConn() {
        return self::Conectar();
    }

    public function inicializarConexao()
    {
        $conn = mysqli_connect(HOST, USER, PASS);
        mysqli_select_db($conn, DBSA);
        if (!mysqli_set_charset($conn, "utf8")) {
            mysqli_query($conn, "SET NAMES utf8");
        }
        return $conn;
    }

    protected function liberaAuditoria($Tabela)
    {
        // Auditoria
        $sem_auditoria = explode(', ', SEM_AUDITORIA);
        if (TABELA_AUDITORIA && !in_array($Tabela, $sem_auditoria)) {
            return true;
        }
        return false;
    }

}
