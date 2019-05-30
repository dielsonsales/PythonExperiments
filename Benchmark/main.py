import time
from profilehooks import profile


@profile
def main():
    for i in range(10):
        print("Okay")


if __name__ == '__main__':
    main()
