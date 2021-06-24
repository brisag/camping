# Camp Ground + Forecast Search
<div align="center">

## Hotel Engine Challenge

![](https://img.shields.io/badge/Rails-6.0.3.4-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=4e03fc)
![](https://img.shields.io/badge/Ruby-2.5.3-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=fc0324)
![Heroku](https://pyheroku-badge.herokuapp.com/?app=pyheroku-badge)
![Badge](https://marcgrimme.github.io/simplecov-small-badge/badges/coverage_badge_total.svg)

  <p> </p>
  <h3>Brisa Garcia - June 2021 </h3>
</div>

<h5  align="center">Contact Information</h5>
<p align="center">
  <a target="_blank"href="https://www.linkedin.com/in/brisa-garcia-gonzales-6b604385/"><img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
</p>

## Table of Contents

- [Overview](#overview)
- [Specifications](#specifications)
- [Installation](#installation)
- [Testing](#testing)
- [Endpoints](#api-endpoints)
- [See Heroku-Endpoints in Postman](#heroku-api-endpoints)

## Overview

[Camp Ground + Forecast Search](https://polar-coast-94103.herokuapp.com/) is an API Search/Filter application.  We all move to Colorado to go camping right? How do I search for capgrounds? Whats the weather like? Can I just visit a park and not camp at it?  The purpose of this app find the forecast of a given location, and search for parks, or campgrounds in parks!

Using request such as `GET /api/v1/forecast?location=denver,co` the app can

- retrieve the weather for a national parks campsite,

<br/>


<p align="left">

The projects asks for T.D.D. (test driven development) to develop the project functionality. Gems such as **simplecov**, **webmock**, and **vcr**, among others help us drive this process.<br/>
The testing requirements expect 'sad path' path testing along with functionality. When user inputs a blank field or a nil result, user will get error json.

</p>

[back to top](#table-of-contents)

<hr>

## Specifications

This project runs on `Rails: 6.1.3` and `Ruby: 2.5.3`<br/>

To check your current versions, run:
```ruby
$ ruby -v
ruby 2.5.3p105 (2018-10-18 revision 65156) [x86_64-darwin19]
$ rails -v
Rails 6.1.3
```
<br/>
<hr>

### Gems

This project uses the following additional gems:<br/>
You can find the most current version at [Rubygems.org](https://rubygems.org/)

#### Production

<ul>
<li><a href="https://rubygems.org/gems/bcrypt">bcrypt:</a> <small> The bcrypt Ruby gem provides a simple wrapper for safely handling passwords.</small></li>
<li><a href="https://rubygems.org/gems/faraday">faraday:</a> <small>HTTP/REST API client library</small></li>
<li><a href="https://rubygems.org/gems/figaro">figaro:</a> <small>Simple, Heroku-friendly Rails app configuration using ENV and a single YAML file</small></li>
<li><a href="https://rubygems.org/gems/jsonapi-serializer">jsonapi-serializer:</a> <small>Fast, simple and easy to use JSON:API serialization library (also known as fast_jsonapi).</small></li>
</ul>

#### Test and Development

<ul>
<li><a href="https://rubygems.org/gems/pry">pry:</a> <small>Pry is a runtime developer console and IRB alternative that attempts to bring REPL driven programming to the Ruby language </small></li>
<li><a href="https://rubygems.org/gems/rspec-rails">rspec-rails:</a> <small>rspec-rails is a testing framework for Rails 5+</small></li>
<li><a href="https://rubygems.org/gems/rubocop">rubocop:</a> <small>RuboCop is a Ruby code style checking and code formatting tool. It aims to enforce the community-driven Ruby Style Guide.</small></li>
<li><a href="https://rubygems.org/gems/simplecov">simplecov:</a> <small>Code coverage for Ruby with a powerful configuration library and automatic merging of coverage across test suites</small></li>
<li><a href="https://rubygems.org/gems/shoulda-matchers">shoulda-matchers:</a> <small>Shoulda Matchers provides RSpec compatible one-liners to test common Rails functionality</small></li>
<li><a href="https://rubygems.org/gems/webmock">webmock:</a> <small>WebMock allows stubbing HTTP requests and setting expectations on HTTP requests.</small></li>
<li><a href="https://rubygems.org/gems/vcr">vcr:</a> <small>Record your test suite's HTTP interactions and replay them during future test runs for fast, deterministic, accurate tests</small></li>
</ul>

### APIs

In this project we used the following APIs:

<ul>
<li><a href="https://openweathermap.org/appid">OpenWeather:</a> <small> Weather information for any location on the globe. Some apis are paid. We used OneCall </small></li>
<li><a href="https://developer.mapquest.com/user/me/apps">MapQuest Developer:</a> <small> Mapping, Geocoding, Directions, and Search provider. Free and paid APIs</small></li>
<li><a href="https://www.nps.gov/subjects/developer/api-documentation.htm">National Parks Service Developer API:</a> <small> National Parks database of the united States </small></li>
</ul>

[back to top](#table-of-contents)

<hr>

## Installation
  
#### Test it Out In Postman
  It is as easy as clicking on the orange button, cloning to your web or local computer, and running the test suite!

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/530ddbc284a5c76bf4a1?action=collection%2Fimport)

[back to top](#table-of-contents)
  
  
### Fork and Clone The Repo

Fork this Github repository: [Camping](https://github.com/brisag/camping)

Clone your 'camping' repository using SSH:
```
  $ git clone git@github.com:<your-github-username>/camping.git
```

### Initial Installation

In the command line run the following commands in order:

1. `$ rails db:{create,migrate}`
2. `$ rails generate rspec:install`
3. `$ bundle exec figaro install`
5. `$ bundle install`

### Set Up API Keys

Find the `application.yml` file in the config folder and add your API keys
example:
```ruby
MAPQ_API_KEY: <api key here without strings>
WEATHER_API_KEY: <api key here without strings>
NPS_KEY: <api key here without strings>
```
[back to top](#table-of-contents)

<hr>

## Testing

### RSpec

<p> We can check the test on the spec folder by running rspec</p>

In the command line run<br/>

`$ bundle exec rspec`

All tests should be passing.

If you get a `nil` or a `vcr` error,
you may need to delete `vcr_cassettes` in the `/spec/fixtures` folder.

### Simplecov

After running the tests simplecov gathers the coverage and neatly reports them in an html page.

In the command line you should see something like this:<br/>

`Coverage report generated for RSpec to /Users/brisa/turing/three/projects/final_project/jackets/coverage. 749 / 752 LOC (99.6%) covered.`


### Rubocop

Rubocop helps us clean up the code.

In the command line run:

`$ rubocop`

Rubocop will highlight styling errors - according to rails standards - and make recommendations on how to improve the code.

[back to top](#table-of-contents)

<hr>

## API Endpoints

The exposing these endpoints is the chief purpose of this application. To test this out your self in your computer follow the instructions below.

### Expose the endpoints in **Postman**

1. Open the terminal in your computer and navigate to where `camping` is located and `cd` into it.
2. Once in the directory run the following command in your terminal:
    `$ rails server`
3. Open **Postman** and type the following in the address bar:
    'https://polar-coast-94103.herokuapp.com/' or `http://localhost:3000/`
4. Add the requests below to call each endpoint.
    example: `http://localhost:3000/api/v1/parks?location=denver,co`
5. Change the verb to one corresponding to the call
    for example: `Post`
6. Send your request by clicking `Send`


**Notice** that some of the call require you add the paramteres to the body.
In postman:
  1. Click on `body`
  2. Select `raw`
  3. Select `json` (by default show as `text`)



### Forecast

#### Retrieve weather for a city

Shows the current, hourly, and daily forecast for the location queried. It accepts city and state as parameters.

Request:
- Content-Type: application/json
- Accept: application/json

<div align="center">

**get**  `api/v1/forecast?location=denver, co`

</div><br/>
  
<img width="364" alt="daily_weather" src="https://user-images.githubusercontent.com/5049388/123216464-d047ba80-d486-11eb-8a80-f30866b6b430.png">

<div align="center">

#### Test it Out In Postman
  
[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/530ddbc284a5c76bf4a1?action=collection%2Fimport)

[back to top](#table-of-contents)

### Park by State Code

#### Retrieves national park by state code

Using National Parks Service API, retrieves all state parks from specific state from that json.

Request:
- Content-Type: application/json
- Accept: application/json

<div align="center">

**get**  `api/v1/parks?stateCode=CO`
</div><br/>
 
  <img width="605" alt="park_statecode" src="https://user-images.githubusercontent.com/5049388/123216402-bad29080-d486-11eb-8645-be8c9085e373.png">


<div align="center">

#### Test it Out In Postman
[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/530ddbc284a5c76bf4a1?action=collection%2Fimport)
</div>

[back to top](#table-of-contents)

### Park by State Code and Keyword

#### Retrieves national park by state code and or keyword

Using National Parks Service API, retrieves all state parks from specific state from that json.

Request:
- Content-Type: application/json
- Accept: application/json

<div align="center">

**get**  `api/v1/campground?stateCode=CO&q=dinosaur`
</div><br/>
  
<img width="600" alt="camp_query" src="https://user-images.githubusercontent.com/5049388/123216480-d473d800-d486-11eb-9cc5-4ccc7d6eaec5.png">

<div align="center">

#### Test it Out In Postman

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/530ddbc284a5c76bf4a1?action=collection%2Fimport)
</div>
  
  
###  User Registration

#### Registers a new user

Registers a new user and generates a unique API key for the user

Request:

- Content-Type: application/json
- Accept: application/json

The params are passed on in the body of the request not in the uri:

```json
{
  "email": "whatever@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```

<div align="center">

**post**  `/api/v1/users`
</div><br/>
  
  <img width="521" alt="user_create" src="https://user-images.githubusercontent.com/5049388/123216498-d76ec880-d486-11eb-8e00-1c4ddc0485be.png">


[back to top](#table-of-contents)

<div align="center">

#### Test it Out In Postman

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/530ddbc284a5c76bf4a1?action=collection%2Fimport)</div>

### User Login

#### Authenticates a User

This request authenticates a user and logs it into the application

Request:
- Content-Type: application/json
- Accept: application/json

```json
{
  "email": "whatever@example.com",
  "password": "password"
}
```

<div align="center">

**post**  `/api/v1/sessions`

<div align="center">

#### Test it Out In Postman
[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/530ddbc284a5c76bf4a1?action=collection%2Fimport)
  </div>

[back to top](#table-of-contents)


**post**  `/api/v1/campgrounds?stateCode=Colorado&q=sand dunes`

  <img width="629" alt="weather_at_site" src="https://user-images.githubusercontent.com/5049388/123216509-da69b900-d486-11eb-8965-e8cfe81314ef.png">


<div align="center">

#### Test it Out In Postman
[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/530ddbc284a5c76bf4a1?action=collection%2Fimport)</div>

[back to top](#table-of-contents)

<hr>

## Heroku API Endpoints

This api-application has been deployed to Heroku. You can test the endpoints in postman by following the link below and running postman in your browser.

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/530ddbc284a5c76bf4a1?action=collection%2Fimport)
If you have postman installed locally you can run it in the app directly

`https://polar-coast-94103.herokuapp.com/<type here the desired endpoint>`


[back to top](#table-of-contents)
