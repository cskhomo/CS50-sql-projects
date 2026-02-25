from re import findall, IGNORECASE


def main():
    um = count(input("Text: "))
    print(um)


def count(s):

    pattern = r'\bum\b'
    um = findall(pattern, s, flags=IGNORECASE)

    return len(um)


if __name__ == "__main__":
    main()
