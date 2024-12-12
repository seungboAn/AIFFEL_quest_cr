import './models/user.dart';

void main() {
    UserManager userManager = UserManager();

    // 1. 회원 가입
    String email = 'test@gmail.com';
    String password = 'abc123';
    
    // 1.1 입력된 아이디와 패스워드 출력
    print('입력한 아이디: $email');
    print('입력한 패스워드: $password');

    // 1.2 유저 생성
    userManager.registerUser(email, password);

    // 2. 로그인 - 로그인 검증 및 사용자 설정 불러오기
    userManager.login(email, password);

    // TODO
    // Cart, Payment, Validator, TimeStampMixin 등의 클래스에 대해서도 각 클래스의 역할에 맞게 추가해야한다.
}