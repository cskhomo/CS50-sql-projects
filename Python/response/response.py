from validator_collection import validators, errors

def main():

    email = input("Enter your email address: ")
    print(validate_email(email))

def validate_email(email):

    try:
        validators.email(email)
        return "Valid"

    except errors.InvalidEmailError:
        return "Invalid"

if __name__ == "__main__":
    main()
