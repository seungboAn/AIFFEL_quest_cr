import '../interface/log_interface.dart';

class Payment implements Loggable {
    void pay() {
        print('결제를 시작합니다.');
    }

    void log() {
        print('결제 로그가 저장되었습니다.');
    }
}

class CreditCardPayment extends Payment {
    void pay() {
        super.pay();
        print('CreditCard 결제입니다.');
        super.log();
    }   
}

class BankTransferPayment extends Payment {
    void pay() {
        super.pay();
        print('Banktransfer 결제입니다.');
        super.log();
    } 
}