import 'dart:io';
import 'package:bank_system/system/ATM.dart';
import 'package:bank_system/system/Bank.dart';
class Register{
  Register(){
    print('''
Welcome sir what do you want ?
1- Bank 
2- ATM
    ''');
    int num=int.parse(stdin.readLineSync()!);
    if(num==1){
      Bank b=Bank();
      b.register();

    }
    else if(num == 2){
      ATM a =ATM();
      a.register();
    }
    else
      print("You entered wrong number , Try again");

        }
}


