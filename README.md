Door Server
===========
Open Door API

* Ruby 1.8.7+
* Sinatra 1.3+
* [Phidgets-Servo-Server](https://github.com/shokai/phidgets-servo-server)


Install Dependencies
--------------------

    % gem install bundler
    % bundle install


Config
------

    % cp sample.config.yaml config.yaml

edit it.


Run
---

    % ruby development.ru

open [http://localhost:8080](http://localhost:8080)


Deploy
------
use Passenger with "config.ru"


API
---

open door

    % curl -d "" http://localhost:8080
