enum Operation { NONE, SUM, SUBTRATCTION, MULTIPLY, DIVIDE }
enum CalcNumbers {
  ZERO,
  ONE,
  TWO,
  THREE,
  FOUR,
  FIVE,
  SIX,
  SEVEN,
  EIGHT,
  NINE,
}

var numbers = {
  CalcNumbers.ZERO: 0,
  CalcNumbers.ONE: 1,
  CalcNumbers.TWO: 2,
  CalcNumbers.THREE: 3,
  CalcNumbers.FOUR: 4,
  CalcNumbers.FIVE: 5,
  CalcNumbers.SIX: 6,
  CalcNumbers.SEVEN: 7,
  CalcNumbers.EIGHT: 8,
  CalcNumbers.NINE: 9,
};

var operations = {
  Operation.SUM: '+',
  Operation.SUBTRATCTION: '-',
  Operation.DIVIDE: '/',
  Operation.MULTIPLY: '*',
};

class CalculatorModel {
  double _currentValue = 0;
  String firstValue = '';
  String secondValue = '';
  Operation _currentOperation = Operation.NONE;
  String visorText = '0';

  double sum(double a, double b) => a + b;

  double minus(double a, double b) => a - b;

  double multiply(double a, double b) => a * b;

  double divide(double a, double b) => a / b;

  get currentValue {
    return this._currentValue;
  }

  get currentOperation {
    return this._currentOperation;
  }

  void clearCurrentValue() {
    this._currentValue = 0;
  }

  void clearCurrentOperation() {
    this._currentOperation = Operation.NONE;
  }

  void clearValues() {
    this.firstValue = '';
    this.secondValue = '';
  }

  void clearVisorText() {
    this.visorText = '0';
  }

  void clearAll() {
    this.clearValues();
    this.clearCurrentOperation();
    this.clearCurrentValue();
    this.clearVisorText();
  }

  void resolve() {
    var val2 = double.parse(this.secondValue);
    this.doOperation(val2);
    this.visorText = this._currentValue.toString();
    this.clearValues();
    this.clearCurrentOperation();
    this.firstValue = this.visorText;
    print('resolve ${this._currentValue}');
  }

  void registerValue(CalcNumbers value) {
    print('registerValue, $value');
    if (this._currentOperation == Operation.NONE) {
      this.firstValue += numbers[value].toString();
      this.visorText = this.firstValue;
      print('currentOperation is none ${this.firstValue}');
    } else {
      if (this.secondValue == null)
        this.secondValue = numbers[value].toString();
      else
        this.secondValue = '${this.secondValue}${numbers[value].toString()}';
      this.visorText =
          '${this.firstValue} ${operations[this._currentOperation]} ${this.secondValue}';
      print('currentOperation is setted: ${this._currentOperation}');
    }
    // this.doOperation(value);
  }

  void registerCurrentValue(value) {
    this._currentValue = value;
  }

  void registerCurrentOperation(Operation operation) {
    print('registerCurentOperation $operation');
    this._currentOperation = operation;
    this.visorText =
        '${this.firstValue} ${operations[this._currentOperation]} ${this.secondValue}';
  }

  void doOperation(double value) {
    switch (this._currentOperation) {
      case Operation.SUM:
        this.registerCurrentValue(
            this.sum(double.parse(this.firstValue), value));
        break;
      case Operation.SUBTRATCTION:
        this.registerCurrentValue(
            this.minus(double.parse(this.firstValue), value));
        break;
      case Operation.MULTIPLY:
        this.registerCurrentValue(
            this.multiply(double.parse(this.firstValue), value));
        break;
      default:
        this.registerCurrentValue(
            this.divide(double.parse(this.firstValue), value));
    }
  }
}
