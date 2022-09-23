import 'dart:io';
import 'package:bank_system/system/ATM.dart';
import 'package:bank_system/system/Data.dart';
import '../functions/functions.dart';

class Bank extends ATM{

  @override
void register(){
  print('''
Hello sir in Bank .

Do you have account ?
1- Yes
2- No

 ''');
  int num = int.parse(stdin.readLineSync()!);
  if(num == 1)
    haveAccount();
  else if(num == 2)
    createAccount();
  else
    print("Enter 1 or 2 ");
}

void createAccount(){
  signUpInformation();
}

void haveAccount(){
    print("""
Welcome sir
Your national id :
 """);
    String id=stdin.readLineSync()!;
    Data d=Data();
    d.accounts();
    dynamic a=d.searchForAccount(id);
    if(a == null)
      print("This account not found");
    else {
        print('''
Now what do you want sir ?
1- Balance inquiry process
2- withdrawal process
3- Deposit process
4- Money transfer 
5- Problem
          ''');
        int num=int.parse(stdin.readLineSync()!);
        switch (num){
          case 1: {balance_inquiry_process();}break;
          case 2: {withdrawal_process();}break;
          case 3: {deposit_process();}break;
          case 4: {money_transfer();}break;
          case 5: {problems();}break;
        }
      }

  }


  void withdrawal_process(){
    print("Enter money :");
    double m = double.parse(stdin.readLineSync()!);
    if( m < money){
      money -=m;
      print("Ok your operation done and your money become : $money ");
    }
    else
      print("Withdraw is not enough ");

  }


  void deposit_process(){
    print("Enter money :");
    double m=double.parse(stdin.readLineSync()!);
    money +=m;
    print("Ok your operation done and your money become : $money");
  }

  void money_transfer(){
    print('Enter number of organization :');
    String number =stdin.readLineSync()!;
    Data d=Data();
    d.accounts();
    dynamic a=d.numberOfOrganization(number);
    if(a == null)
      print("This organization not found");
    else {
      print('Enter money :');
      double m = double.parse(stdin.readLineSync()!);
      if(m<money){
        print("ok sir Amount has been transferred and now your money become is : $money ");
        money-=m;
      }else
        print('This amount is more than the amount in your account .you money is : $money');
      
    }

  }

  void problems(){
    print('What is your problem ? ');
    String answer =stdin.readLineSync()!;
    print("Ok sir we will solve this problem , Thanks for informing us ");
  }
}

