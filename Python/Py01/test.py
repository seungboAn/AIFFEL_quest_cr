def isPalindrome():
  # 1. 문자열을 입력받고, 출력합니다.
  input_word = input('입력값:\n')
  print()

  # 2. 문자열을 뒤집는 과정입니다.
  output_word = ""
  output_word = []
  num = len(input_word)
  while num > 0 :
    output_word.append(input_word[num - 1]) # 재할당 X, 리스트 함수를 써서 추가
    output_word = output_word + input_word[num - 1] # 재할당하고 있는 로직
    num = num - 1 # 재할당하고 있는 로직

  print(output_word) # ['c', 'b', 'a']
  output_word = "".join(output_word)

  # 3. 뒤집힌 문자열 출력합니다.
  print('출력값:')
  print('뒤집힌 단어:', output_word)

	# 4. 두 문자열 비교하고 결과를 출력합니다.
  if input_word == output_word:
      print('입력된 단어는 회문입니다.')
  else:
      print('입력된 단어는 회문이 아닙니다.')

if __name__ == "__main__":
  isPalindrome()

# comments

"""
this is doc string
"""