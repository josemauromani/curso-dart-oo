void main() {
    ContaCorrente conta1 = ContaCorrente('José Mauro', 6919, 23784,800.00);
    conta1.saldo = 500;
    conta1.saque(150.50);
    print(conta1.saldo);
    conta1.saque(400);
    print(conta1.saldo);
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

    void saque(double valor)
    {
        if (this.saldo < valor) {
            print('não e possivel sacar');
        } else {
            this.saldo -= valor;
        }
    }


}
    
