#include<iostream>
#include<string>
#include <bitset>

using namespace std;

int match_func(string string_input, unsigned int &no_input,bool &set_condition);
int match_cond_from_string(string string_input, unsigned int &no_input);
//int match_cond(unsigned int &no_input);

int main(){
	unsigned int assem_out = 0;
	unsigned int no_input;
	bool immediate=0;
	bool set_condition=0;
	string string_input;

	/*
	//Input for conditions
	cout << "Please enter conditions" <<endl;
	cout << "<N><Z><C><V>"<<endl;
	cin >> no_input;
	if(match_cond(no_input)){
		cout << "Wrong Conditions were entered" <<endl;
		return 0;
	}
	assem_out += no_input << 28;
	*/


	//Input for conditions
	cout << "Please enter conditions in capital letters" <<endl;
	cin >> string_input;
	if(match_cond_from_string(string_input,no_input)){
		cout << "Wrong Conditions were entered" <<endl;
		return 0;
	}
	assem_out += no_input << 28;


	//Input for conditions
	cout << "Please whether it uses immediate" <<endl;
	cout << "1(immediate) or 0(register)"<<endl;
	cin >> no_input;
	if (no_input)
	{
		assem_out += no_input << 27;
		immediate = 1;
	}


	//Input for function
	cout << "Please enter function for this line" << endl;
	cin >> string_input;
	if(match_func(string_input,no_input,set_condition))
	{
		cout<< "Wrong function was entered" << endl;
		return 0;
	}
	assem_out += no_input << 22;


	//Input for set
	cout << "Please enter whether it sets condition" <<endl;
	cout << "1(set) or 0(unchanged)"<<endl;
	cin >> no_input;
	if (no_input||set_condition)
	{
		assem_out += no_input << 21;
		set_condition = 1;
	}


	//Input for destination register
	cout << "Please enter the destination register addr in decimal" <<endl;
	cout << "(noticed that if N/A enter 15)"<<endl;
	cin >> no_input;
	if (no_input>=16)
	{
		cout<< "Wrong register was entered" << endl;
		return 0;
	}
	assem_out += no_input << 13;


	//Input for 1st register
	cout << "Please enter first register addr in decimal" <<endl;
	cout << "(noticed that MOV related instructions have register in reg2)"<<endl;
	cin >> no_input;
	if (no_input>=16)
	{
		cout<< "Wrong register was entered" << endl;
		return 0;
	}
	assem_out += no_input << 17;


	//Input for immediate value
	if(immediate)
	{
		cout << "Please enter the immediate value" <<endl;
		cout << "(noticed that the value has to be smaller than 4096 and must be POSITIVE)"<<endl;
		cin >> no_input;
		assem_out += no_input;
	}


	//Input for second register
	else
	{
		cout << "Please enter the second register" <<endl;
		cout << "(noticed that if N/A enter 15)"<<endl;
		cin >> no_input;
		assem_out += no_input << 9;
	}

	//Output for assemble line
	cout << "the resultant assemble line is:" <<endl;
	cout << bitset<32>(assem_out)<<endl;
	cout << hex << assem_out <<endl;

	return 0;
}

int match_func(string string_input, unsigned int &no_input,bool &set_condition)
{
	if (string_input=="AND")
	{
		no_input = 0;
		return 0;
	}
	else if (string_input=="XOR")
	{
		no_input = 1;
		return 0;
	}
	else if (string_input=="SUB")
	{
		no_input = 2;
		return 0;
	}
	else if (string_input=="RSB")
	{
		no_input = 3;
		return 0;
	}
	else if (string_input=="ADD")
	{
		no_input = 4;
		return 0;
	}
	else if (string_input=="ADC")
	{
		no_input = 5;
		return 0;
	}
	else if (string_input=="SBC")
	{
		no_input = 6;
		return 0;
	}
	else if (string_input=="RBC")
	{
		no_input = 7;
		return 0;
	}
	else if (string_input=="TST")
	{
		no_input = 8;
		set_condition = 1;
		return 0;
	}
	else if (string_input=="TEQ")
	{
		no_input = 9;
		set_condition = 1;
		return 0;
	}
	else if (string_input=="CMP")
	{
		no_input = 10;
		set_condition = 1;
		return 0;
	}
	else if (string_input=="CMN")
	{
		no_input = 11;
		set_condition = 1;
		return 0;
	}
	else if (string_input=="OR")
	{
		no_input = 12;
		return 0;
	}
	else if (string_input=="MOV")
	{
		no_input = 13;
		return 0;
	}
	else if (string_input=="BIC")
	{
		no_input = 14;
		return 0;
	}
	else if (string_input=="MVN")
	{
		no_input = 15;
		return 0;
	}
	else if (string_input=="LSL")
	{
		no_input = 16;
		return 0;
	}
	else if (string_input=="LSR")
	{
		no_input = 17;
		return 0;
	}
	else if (string_input=="ROL")
	{
		no_input = 18;
		return 0;
	}
	else if (string_input=="ROR")
	{
		no_input = 19;
		return 0;
	}
	else if (string_input=="ASL")
	{
		no_input = 20;
		return 0;
	}
	else if (string_input=="ASR")
	{
		no_input = 21;
		return 0;
	}
	else if (string_input=="RRX")
	{
		no_input = 22;
		return 0;
	}
	else if (string_input=="BL")
	{
		no_input = 24;
		return 0;
	}
	else if (string_input=="RETURN")
	{
		no_input = 25;
		return 0;
	}
	else if (string_input=="STR")
	{
		no_input = 26;
		return 0;
	}
	else if (string_input=="LDR")
	{
		no_input = 27;
		return 0;
	}
	else if (string_input=="DOUT")
	{
		no_input = 28;
		return 0;
	}
	else if (string_input=="END")
	{
		no_input = 29;
		return 0;
	}
	else return 1;
}

/*
int match_cond(unsigned int &no_input)
{
	int tmpp = 0;
	tmpp = no_input;
	no_input = 0;
	if(tmpp > 1111) return 1;

	if ((tmpp % 10) == 1) no_input +=1;
	else if ((tmpp % 10) == 0) no_input +=0;
	else return 1;
	tmpp -= tmpp % 10;

	if ((tmpp % 100) == 10) no_input +=2;
	else if ((tmpp % 100) == 0) no_input +=0;
	else return 1;
	tmpp -= tmpp % 100;

	if ((tmpp % 1000) == 100) no_input +=4;
	else if ((tmpp % 1000) == 0) no_input +=0;
	else return 1;
	tmpp -= tmpp % 1000;

	if ((tmpp % 10000) == 1000) no_input +=8;
	else if ((tmpp % 10000) == 0) no_input +=0;
	else return 1;
	tmpp -= tmpp % 10000;

	return 0;
}
*/



int match_cond_from_string(string string_input, unsigned int &no_input)
{
	//no_input in binary: <N><Z><C><V>
	if (string_input=="EQ")
	{
		no_input = 0;
		return 0;
	}
	else if (string_input=="NE")
	{
		no_input = 1;
		return 0;
	}
	else if (string_input=="HS")
	{
		no_input = 2;
		return 0;
	}
	else if (string_input=="LO")
	{
		no_input = 3;
		return 0;
	}
	else if (string_input=="MI")
	{
		no_input = 4;
		return 0;
	}
	else if (string_input=="PL")
	{
		no_input = 5;
		return 0;
	}
	else if (string_input=="VS")
	{
		no_input = 6;
		return 0;
	}
	else if (string_input=="VC")
	{
		no_input = 7;
		return 0;
	}
	else if (string_input=="HI")
	{
		no_input = 8;
		return 0;
	}
	else if (string_input=="LS")
	{
		no_input = 9;
		return 0;
	}
	else if (string_input=="GE")
	{
		no_input = 10;
		return 0;
	}
	else if (string_input=="LT")
	{
		no_input = 11;
		return 0;
	}
	else if (string_input=="GT")
	{
		no_input = 12;
		return 0;
	}
	else if (string_input=="LE")
	{
		no_input = 13;
		return 0;
	}
	else if (string_input=="AL")
	{
		no_input = 14;
		return 0;
	}
	else if (string_input=="NV")
	{
		no_input = 15;
		return 0;
	}
	return 1;
}
