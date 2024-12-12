interface class Validator {
    bool validate(dynamic str) {
        print(str);
        return str is String;
    }
}