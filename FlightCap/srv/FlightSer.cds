using zflight.dt from '../db/Master';


service myFlightService {

    entity Flights as projection on dt.Flights;
    entity FlightPlan as projection on dt.FlightPlan;
    entity Customer as projection on dt.Customer;
    entity Bookings as projection on dt.Bookings;
}