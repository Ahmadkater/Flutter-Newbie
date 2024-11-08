class BankAccount
{
  late int accountID;
  late double balance;

  BankAccount()
  {
    balance = 0;
  }

  BankAccount.init({this.balance = -350});
  
  void withdraw({required double amount})
  {
    if (balance >= amount)
    {
      balance -= amount; 
    }

  }

  void deposit(double? amount)
  {
    amount = amount??0;
    amount = (amount<0)?0:amount;
    balance += amount ;
  }
}