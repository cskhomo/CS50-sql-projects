def count_words(string):

    list_of_words = string.split(" ")
    number_of_words = len(list_of_words)

    print(list_of_words)
    return number_of_words

print(count_words("This sentence has  2 spaces"))
