# 회문인지 아닌지 확인하는 프로그램
# 텍스트 입력
# 입력된 단어 출력
# 뒤집힌 단어 출력
# 입력된 단어가 회문이 맞는지 출력
# input,자료형,제어문,함수 활용
# 입력:우성우
# 출력
# 뒤집힌 단어:우성우
# 입력된단어는 회문 입니다.

#어떻게 해야하나 의사 코드 만들기
#함수 정의
#뒤집을 단어 입력
#출력(뒤집어진 단어)
# if 문으로 뒤집어진 단어 대조
#만약 맞다면 입력된 단어는 회문입니다.
#else 틀리면 이단어는 회문이 아닙니다.
#단어가 대소문자 비교가능한가 공백제거

test = input("회문인지 확인할 단어 입력:") #테스트 하고싶은 단어

def 회문(test):
    text = test.strip().lower() #대소문자,공백 여부제거
    revers_text = text[::-1] #제거한 텍스트를 뒤집음
    if text == revers_text: #바뀐 문자와 비교
        return f"{revers_text}\n회문입니다" #f-string 방식으로 두줄문장출력
    else:
        return f"{revers_text}\n회문이아닙니다."
print(회문(test))