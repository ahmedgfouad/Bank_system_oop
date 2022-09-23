import 'dart:io';

import 'package:bank_system/user/account_users.dart';

class ATM extends AccountUser{


    void register (){
      print('Enter password:');
      int pas=int.parse(stdin.readLineSync()!);
      if(pas ==123){
        print("""
Which operation do you want ?
1- Balance inquiry process
2- withdrawal process
3- Deposit process

""");
        int num=int.parse(stdin.readLineSync()!);
        if(num == 1)
          balance_inquiry_process();
        else if(num == 2)
          withdrawal_process();
        else if(num == 3)
          deposit_process();
        else
          print("You should enter 1 or 2 or 3 sir .");
      }
    }

    /// استعلاام

    void balance_inquiry_process(){

      print("your money is : $money");

    }

    /// سحب

    void withdrawal_process() {
      print('''
1- 100
2- 500
3- 1000
4- 2000
5- withdrawal 
    ''');
      int num=int.parse(stdin.readLineSync()!);
      switch(num){
        case 1:{ money -=100; print("yor money become : $money"); }break;
        case 2: {money -=500; print("yor money become : $money"); }break;
        case 3: {money -=1000; print("yor money become : $money"); }break;
        case 4: {money -=2000; print("yor money become : $money"); }break;
        case 5: {
          print("Enter money :");
          double m = double.parse(stdin.readLineSync()!);
           if(m>20000 && m < money){
               print("You shouldn't withdraw more than 20000 , Go to bank to withdraw ");
              }
           else if (m <= money) {
            money -= m;
            print("Ok your operation done and your money become : $money ");
          }

          else
            print("Withdraw is not enough ");
        }break;
      }

    }

    /// ايداع
    void deposit_process(){

      print("Enter money :");
      double m=double.parse(stdin.readLineSync()!);
      if(money < 20000){
        money +=m;
        print("Ok your operation done and your money become : $money");
      }
      else
        print("Money is more .You don't add more than 20000 pound"
            ", you should to bank to add this ");

    }

}