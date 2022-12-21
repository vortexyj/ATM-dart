import 'dart:io';
class atm{
  double _balance = 0  ; 
  
  set Balance (double balance){
    this._balance =  balance ;
  }
  double get Balance {
    return _balance ; 
  }

  void withdraw (double salary)
  {
     Balance = salary + Balance ; 
    
    print ("we have your money now :) "); 
    
    print (" _______________________________________________");
    sleep(Duration(seconds:3));
    menu();

  }
  void diposit (double salary)
  {
    Balance = salary -  Balance ; 

    print("you took our money");
    
    print (" _______________________________________________");
    sleep(Duration(seconds:3));
    menu();

  }

  void checkbalance (){
    print (" your have $Balance amount of money");
    print (" _______________________________________________");
    sleep(Duration(seconds:3));
    menu();
  }
  void menu ()
  {
    print("welcome again -__-");
    print("1 - give us some money"); 
    print("2 - take from us money u son of a ");
    print("3 - check your money");
    int sender  =  int .parse(stdin.readLineSync()!);
    
    switch (sender){
    case 1 :
    print("how much ?");
    
    double salary  = double.parse(stdin.readLineSync()!);
    withdraw(salary);
    break;
    case 2 :
    print("how much ?");
    
    double salary  = double.parse(stdin.readLineSync()!);
    diposit(salary);
    break;
    
    case 3 :
    print("here is your money");
    checkbalance();
    break;
    
    default: 
    print("u think you are funny ? \n put a fucking number !");
    print (" _______________________________________________");
    sleep(Duration(seconds:3));
    menu();
    }

  }

}

