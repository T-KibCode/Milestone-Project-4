# Milestone-Project-4

Github Repo Link [Milestone Project 4](https://github.com/T-KibCode/Milestone-Project-4)

Deployed Website: [A Charles Music](https://acharlesmusic-0fc1205f8f52.herokuapp.com/)

![Screen shot of responsive website](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/responsive_screenshot.png)


# A Charles Music Website - Readme Introduction

Welcome to the **A Charles Music** website! This readme provides a comprehensive overview of the website, detailing its features, technologies, and the unique order notification system that enhances user experience.

## About A Charles Music

The **A Charles Music** website is a platform designed for the effortless booking of music and videography recording services with Mr. Charles. Whether you're a musician or an artist seeking captivating visuals, this platform offers a user-friendly booking process to bring your creative visions to life.

## Key Features

1. **User-Friendly Profiles**: Users can create personal profiles to manage bookings, track histories, and update contact information. This feature simplifies the interaction and ensures users stay informed of previous orders/purchases.

2. **Streamlined Payments**: Secure payment processing via Stripe ensures confidence in transactions. Various payment methods are supported, adding convenience and trust for the user experience.

3. **Responsive Interface**: Built with HTML, CSS, Bootstrap, and JavaScript, the website boasts a responsive design, adapting seamlessly to diverse screens and devices.

4. **Order Notifications**: Users are promptly notified of their orders via email. Additionally, order details are available in their personal profiles on the website. This dual notification approach keeps users well-informed.

5. **Heroku Deployment**: Hosting on Heroku offers scalability and reliability, ensuring uninterrupted access to the platform.

## Technologies Used

**A Charles Music** is built using a combination of technologies to provide a seamless and feature-rich experience for users. Here are the key technologies that power different aspects of the website:

- **Django**: The core of the application is developed using the Django web framework. It provides a solid foundation for handling various aspects of the website's functionality. Learn more about Django at [https://www.djangoproject.com/](https://www.djangoproject.com/).

- **HTML, CSS, JavaScript**: The frontend of the website is crafted using a combination of HTML, CSS, and JavaScript. These technologies ensure a responsive and interactive user interface.

- **Bootstrap**: The website's design is enhanced and made responsive using the Bootstrap framework. Bootstrap simplifies the process of creating visually appealing layouts. Explore Bootstrap at [https://getbootstrap.com/](https://getbootstrap.com/).

- **Stripe**: Secure and seamless payment processing is made possible through Stripe. It allows users to make payments for the recording services they choose. Discover Stripe's capabilities at [https://stripe.com/](https://stripe.com/).

- **Heroku**: The website is deployed using Heroku, a cloud platform that ensures the application is accessible to users. Heroku simplifies the deployment process. Learn about Heroku at [https://www.heroku.com/](https://www.heroku.com/).

- **ElephantSQL**: The PostgreSQL database used in the application is hosted on ElephantSQL. It provides a reliable and scalable database solution. Learn more about ElephantSQL at [https://www.elephantsql.com/](https://www.elephantsql.com/).

- **Google Dev Tools**: Google Developer Tools are utilized to enhance the website's performance, debug issues, and ensure a smooth user experience. These tools provide valuable insights. Explore Google Dev Tools at [https://developers.google.com/web/tools](https://developers.google.com/web/tools).

- **Visual Studio Code (VSCode)**: The development of the project is facilitated by VSCode, a powerful code editor. It offers a range of features for efficient coding, debugging, and version control. Learn more about VSCode at [https://code.visualstudio.com/](https://code.visualstudio.com/).

By leveraging these technologies, **A Charles Music** offers a robust and user-friendly platform for booking music and videography recording services. Each technology contributes to a specific aspect of the website's functionality, ensuring a cohesive and efficient experience for users.

## User Stories

The **A Charles Music** website caters to various user roles, each with distinct capabilities and expectations.

### User

As a **User**, you have access to the following features:

- **Product Selection**: Browse through the array of music and videography recording services offered. Choose the ones that align with your artistic needs.

- **Account Creation**: Easily create a personal account on the website. This account allows you to manage your bookings, track order history, and update your contact information.

- **Payment Process**: Utilize the secure payment gateway powered by Stripe. Safely pay for selected services within the webstore, enjoying a seamless and trustworthy transaction experience.

### Store Admin

As a **Store Admin**, you enjoy the features available to Users, plus additional functionalities:

- **Product Management**: In addition to the User capabilities, you can add, delete, and edit products within the store. This ensures the product offerings are up-to-date and accurately reflect the services provided.

### Admin SuperUser

As an **Admin SuperUser**, you possess all the abilities of Users and Store Admins, along with more advanced privileges:

- **Django Administration**: Access the Django administration back end of the site. This elevated access allows you to manually interact with higher authorization files.

- **GDPR Compliance**: Address customer requests related to GDPR laws. You can make amendments to orders or remove user accounts as required to remain compliant with data protection regulations.

## How to Use

1. **User Functions**: Upon account creation, you can explore the available products, select the ones that suit you, and make secure payments within the webstore.

2. **Store Admin Functions**: In addition to user functions, Store Admins can manage products by adding, deleting, and editing items to ensure an accurate and attractive product catalog.

3. **Admin SuperUser Functions**: Along with user and Store Admin functions, Admin SuperUsers can access the Django administration back end for advanced management and GDPR compliance.

The user stories define the diverse capabilities and experiences offered by the **A Charles Music** website. Whether you're a User seeking creative services, a Store Admin managing the product offerings, or an Admin SuperUser ensuring compliance and advanced management, this platform caters to your needs and empowers your interactions.

## Color Palette

[Color Palette](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/PP4%20Pallete.png)

The selected color palette for the website was thoughtfully chosen to align with the studio's existing branding. By incorporating shades of dark blue, light blue, black, and white into the website design, we aimed to maintain a strong visual connection with the studio's aesthetic. This strategic decision fosters a sense of familiarity and synergy between the online platform and the physical studio space, resulting in a unified and cohesive user experience.

# Online Validators

### W3 HTML 
- The W3 HTML validator only returned errors in the validation due to the python load static tags and the validator highlighting the html "lang" tag. This produces minor warnings, however, this does not impact the running of the eCommerce store [HTML Validator](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2009.47.31.png)
![HTML SCreenshot 2](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2009.47.18.png)

### W3 C3S

- The W3 C3S validator returned no errors
![CSS Validator](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2009.47.58.png)

### PEP8 Validator
- When running my Python code through the validator, it returned a range of scores between 64% and 94%. so I looked for tools that I could use online in order to improve my validation score on the code itself. I then found the website *Online Python Formatter* {https://www.tutorialspoint.com/online_python_formatter.htm} and using this website, I was able to correct indentation errors in my code to make it both more readable, and also ensure the Python code reaches the highest validation through the PEP8 syntax checker. There are still some pages of code that fall below 80%, however, these do not impact the app's processing and all indentation has been corrected.
I have also used a built-in Python tester within my IDE, however, when addressing the core issues of lines being too long, it would then break the function of the Python code OR not recognize the extra line of code. 
![Screenshot1](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2009.45.25.png)
![Screenshot2](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2002.22.13.png)
![Screenshot3](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2002.21.00.png)
![Screenshot4](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2002.19.45.png)
![Screenshot5](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2002.19.26.png)
![Screenshot6](https://github.com/T-KibCode/Milestone-Project-4/blob/main/screenshots_for_readme/Screen%20Shot%202023-10-17%20at%2002.18.57.png)


Any Python code that does not run through this validator within my project is redundant, though I have kept it present for the sake of showing my initial planning before the step change within my project. However in a fully commercial production environment, these would be deleted/removed. 

### Javascript validator
- As this project did not use any javascript outside of the Bootstrap CDN link, there was no need to run any JS through an external validator.


# Deployment

The App has been deployed using Heroku and can be found at the following link: https://news-flash.herokuapp.com/.
I used the following steps to deploy the app to Heroku:
- Log into the Heroku website and create a new app.
- Select the region closest to you.
- Click on the Deploy tab and select Heroku Git as the deployment method.
- Install the Heroku CLI and log into your account using the command heroku login -i.
- Create a requirements.txt file using the command pip3 freeze > requirements.txt.
- Create a Procfile using the command echo web: python app.py > Procfile.
- Add and commit the files to Git using the commands git add . and git commit -m "Initial commit".
- Add the Heroku app as a remote using the command heroku git: remote -a <news-flash>.
- Push the files to Heroku using the command git push heroku master.
- Set the IP and PORT environment variables in the Heroku Config Vars.
- Click on the Deploy Tab and click on Enable Automatic Deploys.
- Link the App to the GitHub repository using the Connect to GitHub option.
- Click on Deploy Branch to deploy the app to Heroku.
- Check that the app now deploys when a commit is made to Git Hub.

## Additional Deployment steps 
- Setting up an AWS account
- retrieving the Variable env key to access the account
- setting up static files directory within the project.
- use the Django app to make migrations and forcibly upload the images and static files to aws via the CLI.
- check the files within AWS to make sure naming conventions match the original file names.
- check the code once more to ensure correct routing for the new location when in the live production.
- ensure else if variables pointing to either the original location or the AWS location are correct to ensure it work both in a test or live environment.  



## Future Implementation

### In-Studio Booking and Calendar Integration

An upcoming enhancement for **A Charles Music** is the integration of in-studio booking functionality along with seamless integration with Google Calendar. This addition aims to elevate the user experience, allowing customers who have successfully made payments through Stripe to directly schedule studio time for their music or videography recording sessions. The Google Calendar integration will serve as the foundation of this feature, ensuring a smooth and organized process.

#### Key Benefits

- **Effortless Booking**: After users confirm their payment and Stripe registers the payment as successful, they will seamlessly proceed with a streamlined in-studio booking process. This eliminates the need for users to make separate arrangements after payment and simplifies the overall experience.

- **Real-time Availability**: The integration provides users with real-time visibility into the studio's availability. This enables users to select a time slot that best fits their schedule without the need for extensive communication.

- **User-Friendly Interface**: The booking interface will prioritize user-friendliness, offering a simple and intuitive way to choose available time slots, making the booking process straightforward.

- **Instant Confirmation and Notifications**: Upon successful booking, users will instantly receive confirmation of their scheduled session. The system will also automatically generate notifications, reminding users of their upcoming recording session.

- **Admin Control**: This feature empowers the admin to effectively manage and oversee the booking schedule. Admins can accept or reject booking requests based on studio availability, ensuring a well-organized calendar.

- **Enhanced Communication**: The integrated system will facilitate seamless communication between users and administrators. Any changes to bookings, such as rescheduling or cancellations, can be handled within the platform.

#### Streamlined Experience Example

1. **User Selects Service and Makes Payment**: Users choose their desired recording service and complete a successful payment through Stripe. They are then presented with the option to book an in-studio session.

2. **Calendar Integration**: The website integrates with Google Calendar to display the studio's real-time availability. Available time slots are clearly marked for users to choose from.

3. **Booking Submission**: Users select their preferred time slot and submit a booking request through the website.

4. **Instant Confirmation**: After the booking request is accepted, users receive immediate confirmation of their scheduled session, both on the website and via email.

5. **Notification Reminders**: As the session approaches, automated notification reminders are sent to users, ensuring they remember their booked slot.

6. **Admin Management**: Admins can access the integrated calendar to manage incoming booking requests. They have the ability to accept or reject requests based on availability.

By introducing this advanced booking feature, **A Charles Music** aims to provide users with a seamless end-to-end experience. From selecting services and making payments to securing recording studio time, all aspects can be managed within the same platform. This integration aligns with the commitment to enhancing user satisfaction and streamlining the recording process.









