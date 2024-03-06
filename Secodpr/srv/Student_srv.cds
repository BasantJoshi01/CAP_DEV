
using myCompany.hr.lms from '../db/Student';
using Family.bj from '../db/Family';

service mysrvdemo {
   @readonly  entity Student as projection on lms.Student;  //service will just return the data
   entity Family as projection on bj.Family;
}