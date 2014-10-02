faast_3
=======

Makers Challenge #03 - Fast And Accessible Super Tube
-----------------------------------------------------

#### Briefing
> Implement the FAAST system so that it can be 
> deployed into the London underground network.

> The FAAST system will cater for the following
> - There will be a number of trains inside the system.
> - Trains will travel from station to station.
> - Inside of a station, when the train stops, passengers will 
> alight and enter the carriages of the train.
> - A Passenger will touch in at the station and touch out at the destination station.
> - Each coach of a train can hold up to 40 passengers.
> - Each train is made of a number of coaches.

#### Bonus
> If you want to impress the mayor of London even more you will add a 
> charging system where the passengers can only touch in a station 
> (and access the train) if their account has more than 2 GBP.

---

####Domain Model

###Classes

Passenger
Train
Coach
Station

###Class Responsibility Cards

##Passenger

It should:
- Be able to enter a coach
- Be able to alight a coach
Bonus:
- Be able to touch in at a station
- Be able to touch out at a station

It interacts with:
- Coach
Bonus:
- Station

##Station
It should:
- Be able to hold trains
- Be able to hold passengers
Bonus:
- Be able to touch in a passenger
- Be able to touch out a passenger

It interacts with:
- Train
- Passenger

##Train
It should:
- Be able to travel from station to station
- Be able to hold a number of coaches
- Be able to know how many coaches it's holding

It interacts with:
- Station
- Coach

##Coach
It should:
- Be able to hold up to 40 passengers

It interacts with:
- Train
- Passenger

Add later: check when station/train/coach is full and raise errors.