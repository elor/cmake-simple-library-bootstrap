#include <hello.hpp>
#include <iostream>

int main(int argc, char **argv) {
  std::cout << library::hello() << std::endl;
  return 0;
}
