# MoonGate
Title:
	MoonGate<br />
Demo Link:
	https://mighty-plateau-53890.herokuapp.com/<br /><br />

Idea: <br /><br />
	A support website for MoonGate, a game similar to Minecraft. Users can login to the website using their nickname from the game. Users can open Support Tickets that are then answered by the moderators. Users can also see their statistics and the in-game rankings.<br /><br />

Models and Description:<br /><br />
	User<br />
		-Fields: UUID, Nickname, Email, Password, Permission<br />
		-User can either be a regular user, moderator, or administrator<br />
		-Users can open support tickets<br />
		-Moderators can respond to support tickets<br />
		-Administrators can respond to support tickets and ban users<br />
	Support Ticket<br />
		-belongs to a User, has many Support Ticket Messages<br />
		-Fields: User, Category, Subject, Message, Resolved?<br />
	Support Ticket Message<br />
		-belongs to a Support Ticket<br />
		-Fields: Sender, Moderator<br /><br />

Features:<br /><br />
	Users can log in<br />
	Users can see their stats and rankings<br />
	Users can open Support Tickets<br />
	Moderators can respond to Support Tickets<br /><br />
