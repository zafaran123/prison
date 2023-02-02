<?php
 /**
  * 
  */
 class Admin_Model extends CI_Model
 {
 	
 	function viewPrison(){
 		$query=$this->db->get('tbl_prisons');
 		return $query->result();
 	}
 	function viewPrisoner(){
 		$this->db->where('status','Active');
 		$query=$this->db->get('tbl_prisoners');
 		return $query->result();
 	}
 	function viewRemand(){
 		$this->db->where('status','Active');
 		$query=$this->db->get('tbl_remand_prisoners');
 		return $query->result();
 	}
 	function pasivePrisoner(){
 		$this->db->where('status','Passive');
 		$query=$this->db->get('tbl_prisoners');
 		return $query->result();
 	}
 	function pasiveRemand(){
 		$this->db->where('status','Passive');
 		$query=$this->db->get('tbl_remand_prisoners');
 		return $query->result();
 	}
 	function viewLog(){
 		$query=$this->db->get('tbl_logs');
 		return $query->result();
 	}
 	function viewPolice(){
        $this->db->where('status','Active');
 		$query=$this->db->get('tbl_police');
 		return $query->result();
 	}
    function pasivepolice(){
        $this->db->where('status','Passive');
        $query=$this->db->get('tbl_police');
        return $query->result();
    }


 	function addPrison($formarray){
 		$query=$this->db->insert('tbl_prisons',$formarray);

 		if($this->db->affected_rows()>0){
 			return "Data is successifull inserted";
 		}
 		else{
 			return "Operation failed";
 		}

 	}

 	function deletePrison($id){
 		$this->db->where('id',$id);
 		$this->db->delete('tbl_prisons');
 	}

 	function deletePolice()
 	{
 		$this->db->where('police_no',$police_no);
 		$this->db->delete('tbl_police');

 	}

 	function editPrison($id){
 		$this->db->where('id',$id);
 		$query=$this->db->get('tbl_prisons');
 		return $query->row_array();
 	}

 	function editPrisonAction($form_aarray,$id){
 		$this->db->where('id',$id);
 		$this->db->update('tbl_prisons',$form_aarray);
 	}

    function Handler($username,$password)
    {
        $this->db->where('user_name',$username and 'pwd',$password);
        $queryy=$this->db->get('tbl_police');
       if($this->db->affected_rows()>0){
            return "Okay";
        }
        else{
            return "Operation failed";
        }
    }
 }
 ?>