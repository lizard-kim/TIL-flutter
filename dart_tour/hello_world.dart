void printInteger(int aNumber) {
  print('The number is $aNumber');
}

late String description;

void main() {
  // void : Type that does not return
  // This is comment
  var number = 42;
  printInteger(number);

  /* Variables */

  // Default value
  var name1 = 'Bob'; // inferred string
  Object name2 = 'Bob'; // dynamic type
  String name3 = 'Bob'; // string

  int? lineCount; // default value is null but not recommended
  assert(lineCount == null); // exception when condition is false

  int lineCount2 = 0; // safty!

  // Late variables
  //   Declaring a non-nullable valirable that`s initialized after its declaration.
  //   if you`re sure that a variable is set before it`s used, use late.
  description = "hello, world!";
  print(description);

  // When late used?
  // The variable might not be needed, and initializing it is costly.
  // You’re initializing an instance variable, and its initializer needs access to this.
  // This is the program's only call to readThermometer().
  //late String temperature = readThermometer(); // Lazily initialized.
}
