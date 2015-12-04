<?php

  class CustomerHelper {

    private $customers;

    public function __construct($customers) {
      $this->customers = $customers;
    }

    public function htmlList() {
      return $this->htmlFromArray($this->customerArray());
    }

    public function customerArray() {
      $result = array();
      foreach($this->customers as $customer) {

        if ($customer->parent == 0) {
          $result[] = array( "id" => $customer->id, "name" => $customer->name, "nodes" => $this->itemWithChildren($customer) );
        }

      }
      return $result;
    }

    public function formattedTree() {
      $arr = $this->customerArray();
      $reformatted = $this->reformat( $arr );
      //$reformatted = array_map(array($this, 'fixelement'), $arr, array_keys($arr));
      return $reformatted;
    }

    private function reformat( $array ) {
      return array_map(array($this, 'fixelement'), $array, array_keys($array));
    }

    private function fixelement($e, $k)
    {
        //build new element from old
        $n=array();
        $n['text']=$k;

        if(count($e) > 0) {
          $n['nodes']=$this->reformat($e);
        }else{
          //$n['nodes']=$e;
        }

        //return value will be placed into array
        return $n;
    }

    private function childrenOf($customer) {
      $result = array();
      foreach($this->customers as $i) {
        if ($i->parent == $customer->id) {
          $result[] = $i;
        }
      }
      return $result;
    }

    private function itemWithChildren($customer) {
      $result = array();
      $children = $this->childrenOf($customer);
      foreach ($children as $child) {
          $result[] = array( "id" => $child->id, "name" => $child->name, "nodes" => $this->itemWithChildren($child) );
      }
      return $result;
    }

    private function htmlFromArray($array) {
      $html = '';
      foreach($array as $k=>$v) {
        $html .= '<ul>';
        $html .= '<li>'.$k.' <button>test</button></li>';
        if(count($v) > 0) {
          $html .= $this->htmlFromArray($v);
        }
        $html .= '</ul>';
      }
      return $html;
    }
  }

?>