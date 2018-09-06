<?php

class Controller {
    protected $host;
    protected $user;
    protected $pass;
    protected $db;
    public $dbConn;
    public function __construct() {
        $this->host = "localhost:3306";
        $this->user = "root";
        $this->pass = "";
        $this->db = "tonia_extension";
        $this->dbConn = $this->connect($this->host, $this->db, $this->user, $this->pass);
    }

    public function connect($host, $db, $user, $pass) {
        $dbConn;
        try {
            $dbConn = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
            $dbConn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $e) {
            echo "Connection failed: " . $e->getMessage();
        }
        return $dbConn;
    }

    public function search($itemID) {
        $query = "SELECT * FROM branches LEFT JOIN quantities ON branches.id = quantities.branch_id WHERE quantities.product_id = " . $itemID;
        $stmt = $this->dbConn->prepare($query);
        $stmt->execute();
        $result = $stmt->fetchAll();
        foreach($result as $r) {
            print_r($r);
            echo "\n\n";
        }
    }
}

$c = new Controller();

$result = $c->search(3);

print_r($result);