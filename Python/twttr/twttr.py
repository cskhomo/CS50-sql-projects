def main():

    twttr()

def twttr():

    message = input("Input: ")
    formatted_message = message.lower()

    vowels = ["a", "e", "i", "o", "u"]
    tweet = str()

    for alpha in formatted_message:
        if alpha not in vowels:
            tweet += alpha

    print(f"Output: {tweet}")

main()
