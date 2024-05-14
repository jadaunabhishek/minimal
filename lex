keywords = ["void", "main", "int", "float", "bool", "if", "for", "else", "while", "char", "return"]
operators = ["=", "==", "+", "-", "*", "/", "++", "--", "+=", "-=", "!=", "||", "&&"]
punctuations = [";", "(", ")", "{", "}", "[", "]"]

def classify_token(token):
    if token in keywords:
        return "keyword"
    elif token in operators:
        return "operator"
    elif token in punctuations:
        return "punctuation"
    elif token.isdigit():
        return "number"
    else:
        return "identifier"

user_input = input("Enter your code: ")

for line in user_input.splitlines():
    for token in line.strip().split():
        classification = classify_token(token)
        print(f"{token} is a {classification}")
