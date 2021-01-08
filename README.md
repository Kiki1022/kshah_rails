The receptionist for InstaStyle Medspa walked out and now the stylists have to make their own appointments! They have asked me (their software developer) to create a web app where they can sign up/log in and create, retrieve, update, and delete appointments for their clients. The logged in stylist has full CRUD capabilities on  appointments they book for themselves. Otherwise they can only view other stylist's appointments. The appointment form will have both options of selecting exisiting client and service or creating a new one.  

	Thank you for joining me to experience the web application I have created for the stylists.  Here's how it works, to get started:

		-Run 'bundle' in terminal to download the gems needed to run the application. 
		-Open the server by typing 'rails s' in the terminal.
		-Open the web browser and type in http://localhost:3000 and the web application will load.
		-Create an account and start booking your appointments! 

Contributing Bug reports and pull requests are welcome on GitHub at https://github.com/Kiki1022/kshah_rails 

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct https://github.com/Kiki1022/kshah_rails/blob/main/CONTRIBUTING.md

License The gem is available as open source under the terms of the MIT License https://opensource.org/licenses/MIT

Code of Conduct Everyone interacting in the SinatraRSSReader project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the Code of Conduct https://www.contributor-covenant.org/version/1/4/code-of-conduct/

Service.left_joins(:appointments).group('services.id').order('count(appointments.service_id) desc')