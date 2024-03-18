namespace zflight.dt;
using { cuid , managed } from '@sap/cds/common';

entity Flights : cuid , managed  {
    
  key  carrID :  String(2);
    name : String(40);
    currCode : String(10);
    website : String(40);
}


entity FlightPlan  : cuid {
    key carrID : String(2);
    connID : String(4);
    flightd : String(10);
    price : String(40);
    currCode : String(5);
    planetype : String(10);
    seatmax : String(10);
    seatOcc : String(20);
    paymentsum: String(10);
    seatmax_b : String(10);
    seatocc_b : String(10);
}



entity Bookings  : cuid {
    key carrID : String(2);
    connID : String(4);
    flightdt : String(10);
    bookID : String(10);
    customerID : String(10);
    customerType : String(10);
    smoker : String(10);
    luggweight : String(20);
    wunit : String(5);
    invoice : String(1);
    class : String(1);
    forcuram : String(15);
    forcurkey : String(5);
    loccuram : String(15);
    loccurKey : String(5);
    orderDate : String(10);
    counter : String(10);
    agencyNum : String(10);
    cancelled : String(1);
    reserved : String(1);
    passname : String(30);
    passform : String(20);
    passBirth : String(10);
}

entity Customer  : cuid {
    key customerID : String(10);
    name : String(25);
    form : String(15);
    street : String(30);
    postbox : String(10);
    postcode : String(10);
    city: String(25);
    country: String(3);
    regin : String(3);
    telephone :  String(30);
    custtype : String(1);
    discount : String(3);
    langu : String(1);
    email : String(40);
}