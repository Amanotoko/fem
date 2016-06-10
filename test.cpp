#include <armadillo>

int main()
{
  arma::mat a = arma::randu<arma::mat>(10, 10);
  arma::mat b = arma::randu<arma::mat>(10, 10);

  arma::mat c = a * b;
  c.print();
}
