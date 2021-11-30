# Whiteboard Question

# Find Palindrome
# Given a string of lowercase letters, write a function to see if the word is a palindrome (the same word spelled forward and backwards).
# Example Input: 'racecar'
# Example Output: True 


# def findPali(string):
#     if string == string[::-1]:
#         return True
#     else:
#         return False

# print(findPali("racecar"))

nums = [1,3,5,7]
x = [x*2-1 for x in nums[-2:]]
print(x)