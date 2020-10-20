void main() {
  ContaCorrente conta1 = ContaCorrente('José Mauro', 6919, 23784, 800.00);
  conta1.saldo = 0;
  conta1.limite = 500;

  print(conta1.getSaldo());
  print(conta1.deposito(100.50));
  print(conta1.saque(50.50));
  print(conta1.saque(500));
  print(conta1.saque(60));
  print(conta1.deposito(1000));
}

class ContaCorrente {
  final String titular;
  final int agencia;
  final int conta;
  double saldo = 0.00;
  double limite;

  ContaCorrente(
    this.titular,
    this.agencia,
    this.conta,
    this.limite,
  );

  deposito(double valor) {
    print("DEPÓSITO = ${valor}");
    if (valor > 0) {
      this.saldo += valor;
    }
    return this.getSaldo();
  }

  saque(double valor) {
    print("SOLICITAÇÃO DE SAQUE = ${valor}");
    if (valor > (this.saldo + this.limite)) {
      print('saldo insuficiente');
    } else {
      if (valor <= this.saldo) {
        this.saldo -= valor;
      } else {
        var $saqueLimite = valor - this.saldo;
        this.saldo = 0;
        this.limite -= $saqueLimite;
      }
    }
    return this.getSaldo();
  }

  getSaldo() {
    print("*************");
    return "SALDO = ${this.saldo} | LIMITE = ${this.limite}";
  }
}
