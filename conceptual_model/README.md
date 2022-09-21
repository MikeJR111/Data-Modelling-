## Instruction 
design a model for a database which can be used to support the activities of a travel business called World Cruises (WC).

World Cruises books passengers on ships which host cruises that originate from various
ports around the world. Each ship is operated by a particular company known as the
operator. Each operator is assigned an operator id as an identifier and has the company's
name and Chief Executive Officer's name recorded. A given operator may operate one or
more ships. For each ship, World Cruises records a ship code to identify the ship, the ship's
name, the date the ship was commissioned, the ship's tonnage, its maximum guest capacity
and the name of the country in which the ship is registered.

The cabins on a given ship are identified by a cabin number (such numbers may be reused
across ships eg. many ships may have a cabin D1). World Cruises records for a given ship,
the capacity of a particular cabin and the class of the cabin (this class classifies the quality of
the experience and services available).

A cruise makes use of a particular ship (a cruise only uses one ship) and departs on a
particular date. Each such cruise is identified by a cruise id. World Cruises records the
name of the cruise and a brief description of the cruise. Some cruises depart from a
particular port, such as Sydney Australia, cruise on the open sea without any landfall and
then return to the departure port. Other cruises may depart from a particular port, such as
Sydney Australia and complete the cruise at a different port, such as Marina Bay Cruise
Centre, Singapore. Some cruises will visit many ports along the way. For example the cruise
which travels from Sydney to Marina Bay Cruise Centre may stop at various Pacific Island
ports along the way. A port which is visited in this way may result in an overnight (or longer
stay), or the cruise may arrive and depart on the same day. World Cruises records all
departure and arrival times for a given cruise.

All ports involved in a cruise have a port code recorded to identify the port. The port's name,
the country the port is in, the port population and the longitude and latitude are recorded.
Passengers register with World Cruises when they make their first cruise booking. Each
passenger is assigned a unique id. The passenger's name is recorded as first name and
last name. World Cruise also records the passenger's gender and date of birth. If the
passenger is a minor (ie. under 18 years of age), a booking can only be accepted if another
passenger on the same cruise can act as a guardian. The guardian must be identified by the
system.

Each passenger's address as a street (including street number), town, postcode and country
are recorded. When the members of a particular family book on a cruise they often all have
the same address.

World Cruises maintains a manifest for all cruises they manage. This manifest records for
each cruise, the cabin which has been allocated for each passenger (this allocation is
carried out when the passenger is booked on the cruise). All cruises board passengers only
at the cruise's originating port. For each passenger taking part in a cruise, WC also records
the date and time when they first boarded the ship.

## Purpose
Given the provided case study transform the information provided in the case study into a 
full conceptual model as the first step towards a database design

## Criteria
* Identification of the entities which support the case study.
* Identification and placement of attributes to support the case study.
* Determination of relationships which support the case study.
* Consistent use of industry standard notation and convention

# Conceptual Model
![1663635862(1)](https://user-images.githubusercontent.com/93886913/191145140-65497833-2af7-46f5-abe4-a1825ff0adb5.png)

