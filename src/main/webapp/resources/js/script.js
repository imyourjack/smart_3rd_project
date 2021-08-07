    function logoutFn(){
    	   $.ajax({
    	      url: "logout.do",
    	      type:"get",
    	      success:function(){ 
    	         location.href="home.do"
    	      },
    	     error:function(){alert("error");}	      
    	   });	   
    	}	