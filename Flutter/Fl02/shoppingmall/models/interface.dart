interface class PaymentProcessor {
    void pay() {
        print('PaymentProcessor');
    }
}

interface class RefundProcessor {
    void refund() {
        print('RefundProcessor');
    }
}

interface class Loggable {
    void log() {
        print('log')
    }
}