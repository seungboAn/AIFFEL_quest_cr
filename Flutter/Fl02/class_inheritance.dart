class Payment {
    void pay() {
        print('결제를 시작합니다.');
    }
}

class CreditCardPayment extends Payment {
    void pay() {
        super.pay();
        print('CreditCard 결제입니다.');
    }   
}

class BankTransferPayment extends Payment {
    void pay() {
        super.pay();
        print('Banktransfer 결제입니다.');
    } 
}

void main() {
    CreditCardPayment credit = new CreditCardPayment();
    BankTransferPayment bank = new BankTransferPayment();

    credit.pay();
    bank.pay();
}
