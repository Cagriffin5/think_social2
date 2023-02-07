<?php 
require('config.php');
require_once('includes/functions.php'); 
require('includes/parse-login.php'); 
require('includes/header.php'); 
?>

<main class="flex">
    <div class="container flex">
        <section class="one flex">

            <figure>
                <img src="images/TSLOGO.png" alt="Think Social">
            </figure>
            <!-- <div class="trending flex">
                    <img src="images/images.png" alt="">
                    <img src="images/images.png" alt="">
                    <img src="images/images.png" alt="">
            </div> -->

        </section>

        <section class="two flex">

        <div class="important-form ">
		<h1>Log In</h1> 
        <?php show_feedback($feedback, array(), $feedback_class); ?>
		<form class="flex" method="post" action="login.php">
			<label>Username</label>
			<input type="text" name="username">

			<label>Password</label>
			<input type="password" name="password">

			<input type="submit" value="Log In" >

			<input type="hidden" name="did_login" value="true">
		</form>
        
	    </div>

        </section> 
    </div>
</main>
<?php require('includes/footer.php'); ?>