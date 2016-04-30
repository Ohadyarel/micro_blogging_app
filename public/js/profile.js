$(document).ready(function(){
	
	function isActive(tab) {
		if ($(tab).hasClass("active_profile_tab")) {
			return true;
		} else {
			return false;
		}
	}

	function navBar(clickedTab,clickedContent,tab2,content2,tab3,content3) {
		$(clickedTab).addClass("active_profile_tab");
		$(clickedContent).css("display","block");
		$(tab2).removeClass("active_profile_tab");
		$(content2).css("display","none");
		$(tab3).removeClass("active_profile_tab");
		$(content3).css("display","none");
	}

	$("#nav_following").click(function(){
		if (isActive("#nav_following") == false) {
			navBar('#nav_following','.profile_following','#nav-posts','.profile_posts','#nav_followers','.profile_followers')
		}
	})

	$("#nav_posts").click(function(){
		if (isActive("#nav_posts") == false) {
			navBar('#nav_posts','.profile_posts','#nav_following','.profile_following','#nav_followers','.profile_followers')
		}
	})

	$("#nav_followers").click(function() {
		if (isActive("#nav_followers") == false) {
			navBar('#nav_followers','.profile_followers','#nav_following','.profile_following','#nav_posts','.profile_posts')
		}
	})

});