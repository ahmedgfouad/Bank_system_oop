import 'package:bank_system/user/account_users.dart';

class Data extends AccountUser{

  AccountUser person1 =AccountUser();
  AccountUser person2 =AccountUser();
  AccountUser person3 =AccountUser();
  AccountUser person4 =AccountUser();
  AccountUser person5 =AccountUser();
  AccountUser person6 =AccountUser();

   List <AccountUser> accounts(){
      person1.namePerson='Ahmed';
      person1.phonePerson='01025158465';
      person1.nationalIdPerson='30105151206255';
      person1.moneyPerson=20000;

      person2.namePerson='Ahmed';
      person2.phonePerson='01025158464';
      person2.nationalIdPerson='30105151206254';
      person2.moneyPerson=4000;


      person3.namePerson='Ahmed';
      person3.phonePerson='01025158463';
      person3.nationalIdPerson='30105151206253';
      person3.moneyPerson=20000;

      person4.namePerson='Ali';
      person4.phonePerson='01025158462';
      person4.nationalIdPerson='30105151206252';
      person4.moneyPerson=350000;


      person5.namePerson='Mohamed';
      person5.phonePerson='01025158461';
      person5.nationalIdPerson='30105151206251';
      person5.moneyPerson=65000;


      person6.namePerson='Omar';
      person6.phonePerson='01025158460';
      person6.nationalIdPerson='30105151206250';
      person6.moneyPerson=100000;

      return [person1,person2,person3,person4,person5,person6];
    }

    String numberOfOrganization(String x){
     Map organization={
       '1' : 'Magdy Yaqoub Foundation ',
       '2' : 'Umm Al Khair Foundation ',
       '3' : 'Hospital 57357 ',
     };
     return organization['$x'];

    }

    dynamic searchForAccount(String id){
      Map x ={
        '1' : [person1.name,person1.phone,person1.nationalId,person1.money,],
        '30105151206254' : [person2.name,person2.phone,person2.nationalId,person2.money,],
        '30105151206253' : [person3.name,person3.phone,person3.nationalId,person3.money,],
        '30105151206252' : [person4.name,person4.phone,person4.nationalId,person4.money,],
        '30105151206251' : [person5.name,person5.phone,person5.nationalId,person5.money,],
        '30105151206250' : [person6.name,person6.phone,person6.nationalId,person6.money,],
      };
      return x['$id'];

    }



}