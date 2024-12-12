class User {
  String? userProfileImg;
  String? userIntroduction;

  User({this.userProfileImg, this.userIntroduction});

  void printUserInfo() {
    print('Profile Image: ${userProfileImg ?? 'is Null'}');
    print('Introduction: ${userIntroduction ?? 'is Null'}');
  }
}

void main() {
  // Case 1: 모든 필드가 null인 경우
  var user1 = User();
  print('User 1:');
  user1.printUserInfo();

  // Case 2: 프로필 이미지만 설정된 경우
  var user2 = User(userProfileImg: 'profile.jpg');
  print('\nUser 2:');
  user2.printUserInfo();

  // Case 3: 소개만 설정된 경우
  var user3 = User(userIntroduction: 'Hello, I am a new user!');
  print('\nUser 3:');
  user3.printUserInfo();

  // Case 4: 모든 필드가 설정된 경우
  var user4 = User(userProfileImg: 'avatar.png', userIntroduction: 'Experienced developer');
  print('\nUser 4:');
  user4.printUserInfo();

  // Null 체크 테스트
  print('\nNull check test:');
  print('User 1 has profile image: ${user1.userProfileImg != null}');
  print('User 2 has introduction: ${user2.userIntroduction != null}');
  print('User 3 has profile image: ${user3.userProfileImg != null}');
  print('User 4 has introduction: ${user4.userIntroduction != null}');
}