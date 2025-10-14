#include<iostream>
using namespace std;
class bank
{
//	private:
//		 int y;
	public:
		int acc_no,balance;
		string name;
		int deposit()
		{  
		    int x;
			cout<<"enter how much you want to deposit";
			cin>>x;
			balance=x;
		}
		int withdraw()
		{
		   int y;
			cout<<"enter how much you want to withdraw";
			cin>>y;
			balance=balance-y;
			
		}
		int show_bal()
		{
			cout<<"your balance"<<balance;
		}
};
int main()
{
	
  bank b;
  b.deposit();
  b.withdraw();
  b.show_bal();	
  cout<<y;
} 
