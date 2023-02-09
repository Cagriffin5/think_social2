<?php require_once('config.php');
require_once('includes/functions.php');
require('includes/header.php');?>
		<main class="content home">
			<div class="posts-container flex one two-600 three-900">
				<?php 
				//write it 
				//get the 20 most recent published post
				$result = $DB->prepare('SELECT posts.*, categories.*, users.profile_pic, users.	username, users.user_id
										FROM posts, users, categories
										WHERE posts.is_published = 1
										AND posts.user_id = users.user_id
										AND posts.category_id = categories.category_id
										ORDER BY posts.date DESC
										LIMIT 21'); 
				//run it 
				$result->execute();
				//check it 
				if($result->rowCount() > 0 ){
				//loop it 
				while( $post = $result->fetch() ){
					// print_r($post);
				
				?>
				<article class="post">
					<div class="card">
						<div class="post-image-header">
							<a href="single.php?post_id=<?php echo $post['post_id'];?>">
								<?php show_post_image( $post['image'], 'medium', $post['title']); ?>
							</a>
							<<?php 
							if( $logged_in_user AND $logged_in_user['user_id'] == $post['user_id'] ){
								$post_id = $post['post_id'];
								echo "<a href='edit-post.php?post_id=$post_id' class='button edit-post-button'> EDIT</a>";
							}
							?>
						</div>
						<footer>
							<div class="post-header flex two">
								<div class="user four-fifth flex">
									<img src="<?php echo $post['profile_pic'] ?>">
									<span><?php echo $post['username']; ?><span>
								</div>
							<div class="likes fifth">
								<?php 
								if($logged_in_user){
									$user_id = $logged_in_user['user_id'];
								}else{
									$user_id = 0;
								}
								like_interface( $post['post_id'], $logged_in_user['user_id']); ?>
							</div>
						
							</div>
							<h3 class="post-title clamp"><?php echo $post ['title']; ?></h3>
							<p class="post-excerpt clamp"><?php echo $post ['body']; ?></p>
							<div class="flex post-info">
								<span class="category"><?php echo $post['name']; ?></span>
								<div class="comment-count">
									<?php count_comments ($post['post_id']);?></div>							
								<span class="date"><?php echo time_ago( $post ['date']); ?></span>			
							</div>
						</footer>
					</div><!-- .card -->
				</article>
				<?php 
				}//end while
				}else{
					//empy state
					echo '<h2> NO Posts found!</h2>';
			}//end of post query
				?> <!-- .post -->

			</div><!-- .posts-container -->
		</main>
		<?php 
			
		include('includes/footer.php');