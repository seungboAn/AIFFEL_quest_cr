import 'dart:io';

class User {
    final String email;
    final String password;
    final DateTime createDate = DateTime.now();
    late String settings = _loadSettings();

    User(this.email, this.password) {
        print('-' * 50);
        print('$email 유저가 $createDate에 생성되었습니다.');
        print('-' * 50);
    }

    String _loadSettings() {
        sleep(Duration(seconds: 2));
        return "Default Setting을 불러왔습니다.";
    }
}

class LoginHistory {
    String? email;
    DateTime? loginDate;

    LoginHistory(this.email) {
        loginDate = DateTime.now();
        print('-' * 50);
        print('$email이 $loginDate에 로그인 하였습니다.' );
        print('-' * 50);
    }
}

class UserManager {
    UserManager._();
    static final UserManager _instance = UserManager._();
    
    List<User> users = [];
    List<LoginHistory> loginHistories = [];

    void registerUser(String email, String password) {
        User newUser = User(email, password);
        users.add(newUser);
    }

    void login(String email, String password) {
        for (var user in users) {
            if (user.email == email && user.password == password) {
                LoginHistory loginHistory = LoginHistory(user.email);
                loginHistories.add(loginHistory);
                print('사용자 설정을 불러오는 중... 약 1 ~ 2초가 소요됩니다.');
                user._loadSettings();
                print('불러온 사용자 설정: ${user.settings}');
                return;
            }
        }   
    }

    List<User> getUser() {
        return users;
    }

    List<LoginHistory> getLoginHistory() {
        return loginHistories;
    }

    factory UserManager() {
        return _instance;
    }
}