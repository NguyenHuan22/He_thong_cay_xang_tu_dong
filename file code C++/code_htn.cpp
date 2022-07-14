#include "iostream"
using namespace std;

void Menu();		// Ham nay se xuat ra cac danh sach menu
int ChonMenu();		// Ham nay dung de chon 1 menu tuong ung
void XuLyMenu();	// Xu ly menu ung voi menu duoc chon
void nhap_hienthi(); // Ham xu ly cac tac vu con trong ham XulyMenu

void nhap_hienthi(int x){
    int sotien;
    double solit;
    int sogiay;
    bool start;
    bool val;
    
    cout << " Nhap so tien: ";
    cin >> sotien;
    cout << endl;
    if (x == 1) {
    solit = double(sotien)/35000;
    cout << sotien << " VND" << endl ;
    cout << solit << " lit" << endl;
    int i = 0;
    sogiay =  (solit * 6)/5;    
    cout << "nhan nut start de bat dau: ";
    cin >> start;
    cout << "nhan valve de bom xang: ";
    cin >> val;    
    while (start == 1 && val == 1){
     i++;
     if (i == sogiay ) {
     cout << "hoan thanh" << endl;
     break;
     }    
    }}
    else if (x == 2) {
    solit = double(sotien)/30000;
    cout << sotien << "VND" << endl ;
    cout << solit << "lit" << endl;
    int i = 0;
    sogiay = (solit * 6)/5 ;
    cout << "nhan nut start de bat dau: ";
    cin >> start;
    cout << "nhan valve de bom xang: ";
    cin >> val;
    while (start == 1 && val == 1){
     i++;
     if (i == sogiay ) {
     cout << "hoan thanh" << endl;
     break;}
     }
     }
     
    else {
    solit = double(sotien)/25000;
    cout << sotien << "VND" << endl;
    cout << solit << "lit" << endl;
    int i = 0;
    sogiay =  (solit * 6)/5;
    cout << "nhan nut start de bat dau: ";
    cin >> start;
    cout << "nhan valve de bom xang: ";
    cin >> val; 
    while (start == 1 && val == 1){
     i++;
     if (i == sogiay ) {
     cout << "hoan thanh" << endl;
     break;}
     }
     }
    }
    
    


void Menu() {
	cout << "=================MENU================\n";
	cout << "1. Xang RON - 95  "<< "\n";
	cout << "2. XANG RON - 92 " << endl;
	cout << "3. XANG E - 5 " << endl;
	

	cout << "=====================================\n";
}
int ChonMenu()
{
	int n = 0;
	cout << "\n\nMoi chon menu: ";
	cin >> n;
	if (n > 0 || n < 4)
		return n;
	else return ChonMenu();
}
void XuLyMenu() 
{
	int chon = ChonMenu();
	switch (chon)
	{
	case 1:		
		cout << "1. XANG RON - 95" << endl;
		nhap_hienthi(1);
		break;
	case 2:
		cout << "2. XANG RON - 92"<< endl;
		nhap_hienthi(2);
		break;
	case 3:
		cout << "3. XANG E - 5";
		nhap_hienthi(3);
		break;
   }
}
int main() {
	while(1){
	Menu();	
	XuLyMenu();
	}
	return 0;
}





