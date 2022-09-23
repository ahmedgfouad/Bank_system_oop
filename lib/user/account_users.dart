

class AccountUser{
  String ? _name;
  String ? _phone;
  String ? _nationalId;
  double money=1000;

  set moneyPerson (double money)=>money=money;
  double? get getMoney =>money;

  set namePerson (String name)=>_name=name;
  String? get name=>_name;

  set phonePerson (String phone) =>_phone=phone;
  String? get phone =>_phone;

  set nationalIdPerson (String id) =>_nationalId=id;
  String? get nationalId =>_nationalId;
}