#include <iostream>
#include <bitset>
using namespace std;

int calcTwoComlement(signed int n) {
    // 2 の補数を算出する関数：ビット反転して 1 を足す
    return ~n + 0b01;
}

int main() {
    signed int A = 0b0101;  // 10 進数の 5
    signed int A_inv = ~A;  // A のビット反転
    signed int A_comp = calcTwoComlement(A);  // A の 2 の補数
    
    cout << "===== decimal =====" << "\n";
    cout << "A             : " << A  << "\n";
    cout << "inverted A    : " << A_inv  << "\n";
    cout << "A's complement: " << A_comp  << "\n";
    cout << "\n";
    cout << "===== in binary =====" << "\n";
    cout << "A             : " << bitset<4>(A)  << "\n";
    cout << "inverted A    : " << bitset<4>(A_inv)  << "\n";
    cout << "A's complement: " << bitset<4>(A_comp)  << "\n";
    cout << "\n";
    cout << "===== calc A + A_comp =====" << "\n";
    cout << "  A      |    " << bitset<4>(A)  << "\n";
    cout << "+ A_comp |    " << bitset<4>(A_comp)  << "\n";
    cout << "--------------------------- " << "\n";
    cout << "         | (1)" << bitset<4>(A + A_comp) << "\n";
    cout << "A + A_comp = " << A + A_comp << "\n";
    
    return 0;
}
