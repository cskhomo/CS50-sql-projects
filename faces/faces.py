def main():
    statement = input("Make a statement: ")
    print(convert(statement))

def convert(statement):
    face_translation = str.maketrans({":)":"🙂", ":(":"🙁"})
    emoji_statement = statement
    return emoji_statement

main()
