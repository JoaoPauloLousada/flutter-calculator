enum Operation { NONE, SUM, SUBTRATCTION, MULTIPLY, DIVIDE }

class CalculatorModel {
  double _currentValue = 0;
  Operation _currentOperation = Operation.NONE;

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

  void registerValue(String value) {
    print('registerValue, $value');
    // if (currentOperation == Operation.NONE)
    //   this._currentValue = value;
    // else
    //   this.doOperation(value);
  }

  void registerCurrentValue(value) {
    this._currentValue = value;
  }

  void registerCurentOperation(Operation operation) {
    print('registerCurentOperation $operation');
    this._currentOperation = operation;
  }

  void doOperation(double value) {
    switch (this._currentOperation) {
      case Operation.SUM:
        this.registerCurrentValue(this.sum(this.currentValue, value));
        break;
      case Operation.SUBTRATCTION:
        this.registerCurrentValue(this.minus(this.currentValue, value));
        break;
      case Operation.MULTIPLY:
        this.registerCurrentValue(this.multiply(this.currentValue, value));
        break;
      default:
        this.registerCurrentValue(this.divide(this.currentValue, value));
    }
  }
}
