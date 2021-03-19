#include <iostream>
#include <iomanip>
#include <fstream>
#include <cstring>
using namespace std;
int counter;

int este_litera(char c) {
  if (('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')){
    return 1;
  }
  return 0;
}

double numar_cuvinte(char sir[100]) {
    counter = 0;
  int n = strlen(sir);
  int am_cuvant = 0; 
  int numar_cuvinte = 0;
  for (int i = 0; i < n; ++i) {
    if (este_litera(sir[i])){
      am_cuvant = 1;
      ++counter;
    }
    else if (am_cuvant == 1) {
      ++numar_cuvinte;
      am_cuvant = 0;
    }
  }
  if (am_cuvant == 1)
    ++numar_cuvinte;
  return numar_cuvinte;
}

int main() {
  char sir[100];
  cin.getline(sir, 100);
  double rez = 0;
  
  if(numar_cuvinte(sir) > 0) {
      double rez = ((double)counter  / numar_cuvinte(sir));
      cout<<fixed<<setprecision(2)<<rez;
  } else {
       cout<<fixed<<setprecision(2)<<rez;
   }
}
