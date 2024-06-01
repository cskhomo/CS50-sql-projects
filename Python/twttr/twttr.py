def main():

    twttr()

def twttr():

    message = input("Input: ")
    vowels = ["a", "e", "i", "o", "u"]
    tweet = str()

    for alpha in message.lower():
        if alpha not in vowels:
            tweet += alpha

    print(f"Output: {tweet}")

main()
