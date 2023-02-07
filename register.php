<?php 
require('config.php');
require('includes/functions.php'); 
require('includes/parse-register.php'); 
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
		<h1>Sign Up</h1> 
        <?php show_feedback($feedback, array(), $feedback_class); ?>
		<form method="post" action="register.php">
		<label>Username:</label>
		<input type="text" name="username"  >

		<label>Email Address:</label>
		<input type="email" name="email"  >

		<label>Password:</label>
		<input type="password" name="password"  >

		<label>
			<input type="checkbox" name="policy" value="1" >
			<span class="checkable">I agree to the <a href="#" target="_blank">terms of service.</a></span>
		</label>

		<input type="submit" value="Sign Up">
		<input type="hidden" name="did_register" value="1">
	</form>
        
	    </div>

        </section> 
    </div>
</main>
<?php require('includes/footer.php'); ?>