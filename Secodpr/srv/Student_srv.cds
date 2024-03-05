
using myCompany.hr.lms from '../db/Student';

service mysrvdemo {
   @readonly  entity Student as projection on lms.Student;  //service will just return the data
}