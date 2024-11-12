sealed class A {}

void main(args) {
  A a = args[0];
  switch (a) {
    case C():
    // TODO: Handle this case.
    case B():
    // TODO: Handle this case.
  }
}

class C implements A {}

class B extends A {}
