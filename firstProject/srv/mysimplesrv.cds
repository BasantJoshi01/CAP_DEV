using myCompany.hr.lms from '../db/student';
service mysrvdemo {
   @readonly  entity Student as projection on lms.Student;  //service will just return the data
}