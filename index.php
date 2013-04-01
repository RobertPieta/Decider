<!DOCTYPE html>
<html lang="en">
<head>
	<script src="bootstrap/js/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
<title>Oh hai</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>


<div class="container"><button class="btn btn-info">Testing FB Login</button></div>

<div id="fb-root"></div>
<div id="inset_form"></div>

<script>

  // Additional JS functions here
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '153783808115722', // App ID
      channelUrl : '//https://decider.azurewebsites.net//channel.html', // Channel File
      status     : true, // check login status
      cookie     : true, // enable cookies to allow the server to access the session
      xfbml      : true  // parse XFBML
    });

    // Additional init code here

  };

  // Load the SDK Asynchronously
  (function(d){
     var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement('script'); js.id = id; js.async = true;
     js.src = "//connect.facebook.net/en_US/all.js";
     ref.parentNode.insertBefore(js, ref);
   }(document));

  function login() {
    FB.login(function(response) {
        if (response.authResponse) {

        	var ID = 0;
        	FB.api('/me', function(response) {
        		ID = response.id;
        		email = response.email;
        		name = response.name;
        		
        		$('#inset_form').html('<form action="./userPage.php" name="send" method="post" style="display:none;"><input type="text" name="id" value="' + ID + '" /><input type="text" name="email" value="' + email + '" /><input type="text" name="name" value="' + name + '" /></form>');
    			document.forms['send'].submit();

        	}, { perms: 'email' });
           	
        } else {
            // cancelled
        }
    }, {scope: 'email'});
	}

	function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
        console.log('Good to see you, ' + response.id + '.');
    });
	}

	$(document).ready(function(){
		$('button').click(function(){ 
			login();  
		});
	});
</script>



</body>
</html>