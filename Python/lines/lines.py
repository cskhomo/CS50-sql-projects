from sys import argv, exit


def main():

    file_status = check_file(argv)

    if file_status.startswith("!"):
        exit(file_status[1::])

    lines = count_lines(file_status)

    if lines == -1:
        exit("File does not exist")

    print(lines)


def check_file(argv):

    if len(argv) < 2:
        return "!Too few command-line arguments"

    if len(argv) > 2:
        return "!Too many command-line arguments"

    file = argv[1]

    if not file.endswith(".py"):
        return "!Not a Python file"

    return file


def count_lines(file):

    count = 0

    try:
        with open(file) as script:
            for line in script:
                if line.lstrip().startswith("#"):
                    continue
                if len(line.rsplit()) > 0:
                    count += 1

    except FileNotFoundError:
        count = -1

    return count


if __name__ == "__main__":
    main()
