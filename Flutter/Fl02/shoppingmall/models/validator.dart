import '../interface/validator_interface.dart';

class EmailValidator implements Validator {
    @override
    bool validate(dynamic str) {
        print(str);
        return str is String;
    }
}

class PasswordValidator implements Validator {
    @override
    bool validate(dynamic str) {
        print(str);
        return str is String;
    }
}