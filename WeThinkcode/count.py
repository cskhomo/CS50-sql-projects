def count_words(string):

    list_of_words = string.split()
    print(list_of_words)
    return len(list_of_words)

print(count_words("This Is A  Sentence"))
