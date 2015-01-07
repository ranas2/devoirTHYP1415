<?php

class ControController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
    }

    public function indexAction()
    {
        // action body
    }
    public function listeabsAction()
    {
    	if($_POST){
    		$id=$_POST["id"];
    		$connex=$this->BddConnec();
    		$query="SELECT date  FROM  absences WHERE id_etudiant='$id'";
    		$rep= $connex->query($query);
    		while ($donner=$rep->fetch()){
    			$data[]=$donner;
    		}
    		$this->view->data=$data;
    	}
    	 
    }
    public function listepreAction()
    {
    	if($_POST){
    		$id=$_POST["id"];
    		$connex=$this->BddConnec();
    		$query="SELECT date  FROM  presences WHERE id_etudiant='$id'";
    		$rep= $connex->query($query);
    		while ($donner=$rep->fetch()){
    			$data[]=$donner;
    		}
    		$this->view->data=$data;
    	}
    
    }
    public function ajouterpreAction()
    {
    	
        if($_POST){
            $date= date('Y-m-d H:i:s');
        	$id=$_POST["id"];
        	$connex = $this->BddConnec();
        	$connex->exec("INSERT INTO presences(date,id_etudiant) VALUES('$date','$id')");
        	$this->view->data = "ok";
        }
    
    }
    public function ajouterabsAction()
    {
    	if($_POST){
    	    $date= date('Y-m-d H:i:s');
    		$id=$_POST["id"];
    
    		//insere la presence
    		$connex=$this->BddConnec();
    		$connex->exec("INSERT INTO absences(date,id_etudiant) VALUES('$date','$id')");
    		$this->view->data = "ok";
    		
    	}
    
    
    }

    public function viewAction()
    {
    	$connex=$this->BddConnec();
    	$query="SELECT id_etudiant,nom,url_image FROM etudiant";
    	$rep= $connex->query($query);
    	while ($donner=$rep->fetch()){
    		$data[]=$donner;
    	}
    	$this->view->data=$data;
    
    
    
    }
    public function sauvviewAction()
    {
        $xml = simplexml_load_file("https://picasaweb.google.com/data/feed/base/user/107401320610499259896/albumid/6065229773950541889?alt=rss&kind=photo&authkey=Gv1sRgCNak7e60l-7VlgE&hl=fr");
        $connex=$this->BddConnec();
        foreach ($xml->channel->item as $photo){//parcourir le tableau
            $nomEtu=$photo->title;
            $source=$photo->enclosure['url'];
            
            $connex->exec("INSERT INTO etudiant(nom,url_image) VALUES('$nomEtu','$source')");
            echo"OK";
        }
    	 
    }
    
    
    public function BddConnec(){
    	
        try {
        	
            $bdd=new PDO('mysql:host=localhost;dbname=flux_etu','root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            return $bdd;
            
        } catch (Exception $e) {
                echo $e;
        }
        
    }
}

