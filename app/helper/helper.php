<?php
	
	class Helper{


		public static function getPaginationHTML($projects, $options, $custom_class = ''){

	        $url_addtions = array();
	        if($options){
	            foreach($options as $key => $value){
	                $url_addtions[] = $key.'='.$value;
	            }
	            $url_suffix = '?'.implode('&', $url_addtions);
	        }else{
	            $url_suffix = '';
	        }

	        $steps = floor($projects->getTotal()/$options['count'])+1;
	        $next = $projects->getCurrentPage() +1;
	        $prev = $projects->getCurrentPage() -1;
	        echo '<ul class="pagination '.$custom_class.'">';
	            if($prev > 0) echo '<li><a href="'.URL::current(). $prev . $url_suffix.'">&laquo;</a></li>';
	            for($i=1; $i <= $steps;$i++){
	                $active = '';
	                if($projects->getCurrentPage() == $i)
	                    $active = ' class="active"';
	                echo '<li'.$active.'><a href="'.URL::current(). $i . $url_suffix.'">'.$i.'</a></li>';
	            }
	            if($next <= $steps) echo '<li><a href="'.URL::current(). $next . $url_suffix.'">&raquo;</a></li>';
	        echo '</ul>';
	    }
	  }
?>