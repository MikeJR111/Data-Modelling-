## Instruction
This task continues the work I have started in conceptual_model

Further discussions with World Cruises have revealed the points listed below:

a. World Cruises record for each passenger their contact phone number, for a minor no
contact number will be recoded, the contact for their guardian will be used (in
modelling this point keep phone number as a simple attribute of passenger, do not
create a further PHONE relation)

b. at ports, where a cruise stops, local entrepreneurs offer various tours to the
passengers which they can participate in while the ship is in port. The tours are not
specific to a particular cruise, any ship which is in port can have passengers partake
in an advertised tour. Some tours provide audio commentary to help explain what
passengers are experiencing. Where possible the tours are encouraged to supply the
commentary in a range of languages so as to support the needs of as many
passengers as possible. The commentary languages available for a tour must be
stored as part of your model.

Tours are offered at regular intervals for example every weekday, every Saturday, on
Monday only, etc (this range of offerings may be changed regularly, including adding
new ranges). A particular tour only runs once on any given date.
Each offering of a particular tour uses the same tour number. Tour numbers are
reused for each port ie. each port has a tour number 1. Each tour has a minimum
number of participants, a particular tour offering is not run unless this minimum
number of participants have booked for it.

c. cabins across the various ships are assigned a cabin class as one of the following
* interior
* ocean view
* balcony, or
* suite
These classes are fixed and will not be modified.

d. country codes stored in the system make use of the ISO 3166-1 Alpha-2 codes eg. Australia is AU

e. languages stored in the system are stored as ISO 639-1 Alpha-2 codes eg. English is EN

f. latitudes and longitudes stored in the system are stored in decimal form, for example
the latitude and longitude of Hobart, Tasmania, Australia is:
* latitude: -42.8825088
* longitude: 147.3281233

World Cruises have supplied the following forms which are used within their business:
(i) Tours which are available in a given port:
![1663636424(1)](https://user-images.githubusercontent.com/93886913/191145890-c1460e4c-3dcb-41f5-afec-d68a6d4af7ce.png)

(ii) Participants for a particular tour instance
![1663636456(1)](https://user-images.githubusercontent.com/93886913/191145936-de6d065a-e7db-48b1-bb00-df5f52e78059.png)



## Purpose
Given the provided case study from conceptual_model, and additional forms/documents related to the case study, 
transform the information provided into a sound database design and implement it in Oracle

## Criteria

* Normalise the supplied case study documents and integrate the resultant relations into a logical model.
* Depict the data requirements expressed in the case study via a relational database logical model.
* Generate a schema which meets the case study data requirements from the logical model produced
* Consistent use of industry standard notation and convention
