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

class Payment implements PaymentProcessor, RefundProcessor  {
    @override
    void pay() {
        print('Payment');
    }

    @override
    void refund() {
        print('Refund');
    }

    @override
    void refund123() {
        print('Refund123');
    }
}

void main() {
    Payment pay = new Payment();
    pay.pay();
    pay.refund();
    pay.refund123();
}