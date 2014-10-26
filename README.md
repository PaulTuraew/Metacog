Metacog
=======

### Overview

**Metacog** is a web application that allows users to easily record their daily feelings at the end of a work day. It captures data about the user's mood and perceived reasons for that mood in order to gain a better long-term understanding of job satisfaction.

**Metacog** is a Ruby on Rails project completed as part of the September 2014 Web Development Immersive course at General Assembly. It was developed over a 5 day period.

### Background
Metacognition is the ability to make judgments  about our own thoughts. Strengthening your metacognition increases your awareness and understanding of your thinking process. 

### User Stories / Expectations
*Top Level*

* A user should be able to retrieve mood data from a given time period.
* A user should be able to compare mood data with other users based on company name and/or industry.
* A user can opt-in to receive a text message reminder asking them to enter in mood rating for the day.

*Details*

* A user should land on a homepage that will allow them to see the purpose of **Metacog** and *sign in* or *sign up*.
* Only registered users are allowed to utilize **Metacog**.
* If not a registered user, a user should be able to sign up.
* If a user has already registered, they should be able to sign in.
* Upon sign in, a user will provide:
    * First name and last name (required);
    * Email (required);
    * Industry (required);
    * Cell phone (optional);
    * Company Name (optional); 
    * Title (optional); and
    * Age (optional).
* Once signed in, a user can sign out.
* Once signed in, a user should be able to go to a *capture mood* page.
* The *capture mood* page will allow the user to enter 3 data points:
    * Scale of 1-5 rating of mood;
    * Drop down, pre-populated primary reason for mood (e.g.: co-worker, boss, project sucess, project failure, etc.)(optional); and
    * Narrative (optional).

### Visuals
[Click for Wireframes](https://github.com/PaulTuraew/Metacog/tree/master/Metacog_Wireframes) 

[Click for ERD]()


### Technologies Used
* Ruby 2.1.2
* Ruby on Rails 4.1.6
* PostgreSQL Database
* Authentication and authorization from scratch using bcrypt Ruby gem
