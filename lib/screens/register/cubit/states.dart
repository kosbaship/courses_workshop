// for polymorphism create abstract class
abstract class RegisterStates {}

// create all the states that the parent with change his shape to
class RegisterStateInitial extends RegisterStates {}

class RegisterStateLoading extends RegisterStates {}

class RegisterStateSuccess extends RegisterStates {}

class RegisterStateError extends RegisterStates {}
