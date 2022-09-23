import 'dart:io';

import '../user/account_users.dart';

AccountUser signUpInformation(){
  print("""
 You should add 1000 pound miny to create account
OK ?
 1- Yes 
 2- No
 """);
  int num=int.parse(stdin.readLineSync()!);
  AccountUser u=AccountUser();
  AccountUser o=AccountUser();
  switch(num){
    case 1:{
      print('Name : ');
      String name=stdin.readLineSync()!;
      print('Phone : ');
      String phone=stdin.readLineSync()!;
      print('National ID : ');
      String password=stdin.readLineSync()!;
      print("Now enter money sir : ");
      double money=double.parse(stdin.readLineSync()!);
      if(money <1000)
        print('The money is low , You should to entered 1000 miny to create your account , try again sir ');
      else{
        u.namePerson=name;
        u.phonePerson=phone;
        u.namePerson=password;
        o.money=money;
        print('Now you have an account and your money is : $money');
      }

    }break;
    case 2:{
      print('sorry sir ');
    }break;

  }
  return u;


}

