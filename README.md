# Remote pregnancy monitor
Design and analysis of software systems(DASS) course group project done to build a web app for parijatham clinics
### Team members:
- Ananya
- Bhargavi
- Kiran
- Rohan
## What is the project about?
Pregnancy care is 9 months long and involves multiple visits to the Doctor. It involves multiple tests at scheduled time slots and some of the tests if missed cannot be done and result in unpleasant consequences. The care involves multiple parameters to be monitored and compared with earlier readings for proper interpretation. Apart from the medical needs, pregnancy is emotionally challenging, especially for the first pregnancy and need for support and guidance especially in the nuclear families is high. In the public health perspective, the obstetric services in government funded hospitals are overcrowded and it is very difficult to give focused care and hence it is more important to leverage technology to remotely monitor pregnant women.

## Deliverables
A mobile application mainly used in retrieving the data stored in Zoho servers and displaying it in the frontend and the necessary filtrations are done at the frontend based on user roles.

## Software stack used
- Backend: Firebase
- Frontend: Flutter
- Programming language: Dart

## Profile of Users
There are three types of users as of this project. 
- Doctor: Will have access to the data of patients under him/her.
- Patient: Will have access only to their data which is to be displayed.
- Admin: Will have access to the data of all patients.

## Feature highlights
- Login: Email ID (used as unique ID) and password
- User roles: Doctor, Patient, admin ( Should be feasible to add some other role in future ).
- Vital parameter input forms:(Daily, weekly, and monthly parameter forms) → Data collected from these forms should be pushed to the zoho servers and the trendlines created there should be accessed and displayed on the mobile application dashboard. This analysis makes patients conscious about their health status.
- Access abilities: Doctor should be able to access all the information of all his patients. Patients will be able to access some specific information about them. Admin will be able to access all the information of all the patients present in Zoho servers.
- Appointment Calendar: Displaying the appointment calendar of their doctor so that they can book their slot.
- Tele consultation: Integration of a third party tele video platform to enable online video and audio consultations.
- Timely blog display: Displaying the blogs from askmydoctor.in according to the patients current pregnancy week.
- Data entry notifications [ Patients ]: Patient is to be notified (alerts/notifications) if she forgets to enter the vital parameters in the form.
- Notifications [ Doctor ]: If a particular patient skips filling the vital parameters, then the doctor is to be notified.
- Bulk notifications: Ability to send a message to a group of patients at a time instead of sending to every patient individually.



