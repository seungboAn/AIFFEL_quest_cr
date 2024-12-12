class User {
    final String userEmail;
    final String userPassword;
    final DateTime createDate = DateTime.now();

    User(this.userEmail, this.userPassword) {
        print('-' * 50);
        print('$userEmail $createDate에 생성되었습니다.');
        print('-' * 50);
    }
}

class LoginHistory {
    final String userEmail;
    final DateTime loginDate = DateTime.now();

    LoginHistory(this.userEmail) {
        print('-' * 50);
        print('$userEmail이 $loginDate에 로그인 하였습니다.' );
        print('-' * 50);
    }
}

class UserManager {
    // Private constructor to prevent external instantiation.
    UserManager._();

    // The single instance of the class.
    static final UserManager _instance = UserManager._();

    // A property to store some data.
    List<User> data = [];

    // A method to set the data.
    void setData(User user) {
        data.add(user);
    }

    // A method to get the data.
    List<User> getData() {
        return data;
    }

    // Factory constructor to provide access to the singleton instance.
    factory UserManager() {
        return _instance;
    }
}

void main() {
    User user = new User('test@gmail.com', 'ab12!@');
    LoginHistory log = new LoginHistory(user.userEmail);
    
    // instance create
    UserManager userManager = UserManager();
    
    // setData
    userManager.setData(user);
    print(userManager.getData());

    // comparison another instance
    UserManager anotherUserManager = UserManager();
    print(identical(userManager, anotherUserManager));
    
    // another file
    UserManager instanceFromAnotherFile = UserManager();
    print(instanceFromAnotherFile.getData());

    // TEST SINGLETONE
    // // Obtain the singleton instance.
    // MySingleton singleton = MySingleton();

    // // Set data through the singleton instance.
    // singleton.setData("Hello, Singleton!");

    // // Retrieve data through the singleton instance.
    // print(singleton.getData()); // Output: Hello, Singleton!

    // // Attempt to create another instance will still return the same one.
    // MySingleton anotherInstance = MySingleton();
    // print(identical(singleton, anotherInstance)); // Output: true

    // // You can also access the same instance from different parts of your application.
    // MySingleton instanceFromAnotherFile = MySingleton();
    // print(instanceFromAnotherFile.getData()); // Output: Hello, Singleton!
}

class MySingleton {
  // Private constructor to prevent external instantiation.
  MySingleton._();

  // The single instance of the class.
  static final MySingleton _instance = MySingleton._();

  // A property to store some data.
  String data = "";

  // A method to set the data.
  void setData(String newData) {
    data = newData;
  }

  // A method to get the data.
  String getData() {
    return data;
  }

  // Factory constructor to provide access to the singleton instance.
  factory MySingleton() {
    return _instance;
  }
}