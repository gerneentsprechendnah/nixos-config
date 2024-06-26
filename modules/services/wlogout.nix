{ config, ...}: {

home-manager.users.stephan = {


 programs.wlogout = {
 enable = true;
 style = ''window {	background-color: rgba(12, 12, 12, 0.1);
}

   button {
	color: #FFFFFF;
    font-size:20px;

    background-repeat: no-repeat;
	background-position: center;
	background-size: 25%;

	border-style: solid;
	background-color: rgba(12, 12, 12, 0.3);
	border: 3px solid #FFFFFF;

    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
button:focus,
button:active,
button:hover {
    color: @color11;
	background-color: rgba(12, 12, 12, 0.5);
	border: 3px solid @color11;
}
#lock {
	margin: 10px;
	border-radius: 20px;
	background-image: image(url("/home/stephan/dotfiles/wlogout/icons/lock.png"));
}
#logout {
	margin: 10px;
	border-radius: 20px;
	background-image: image(url("/home/stephan/dotfiles/wlogout/icons/logout.png"));
}

#suspend {
	margin: 10px;
	border-radius: 20px;
	background-image: image(url("/home/stephan/dotfiles/wlogout/icons/suspend.png"));
}

#hibernate {
	margin: 10px;
	border-radius: 20px;
	background-image: image(url("/home/stephan/dotfiles/wlogout/icons/hibernate.png"));
}

#shutdown {
	margin: 10px;
	border-radius: 20px;
	background-image: image(url("/home/stephan/dotfiles/wlogout/icons/shutdown.png"));
}

#reboot {
	margin: 10px;
	border-radius: 20px;
	background-image: image(url("/home/stephan/dotfiles/wlogout/icons/reboot.png"));
}


'';



};
};
}



