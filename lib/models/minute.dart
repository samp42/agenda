import 'package:math_expressions/math_expressions.dart';

class Minute extends UnaryOperator {
  Minute(dynamic value) {

    if(!value is int) {
      throw Exception('Cannot apply minute operator to types other than int.');
    }

    super(value);
  }

  @override
  Expression derive(String toVar) => Minute(exp.derive(toVar));

  @override
  evaluate(EvaluationType type, ContextModel context) => exp;

  @override
  String toString() => '${int.parse(exp)} min';
}

void main() {
  var x = Minute(5);
  print(x);
}
