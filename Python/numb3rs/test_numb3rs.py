from numb3rs import validate


def test_valid():
    assert validate("0.0.0.0") == True
    assert validate("1.137.10.0") == True
    assert validate("255.255.255.255") == True


def test_invalid():
    assert validate("one.two.three.four") == False
    assert validate("1.2.3") == False
    assert validate("1.2.3.4.5") == False
    assert validate("0.0.0.256") == False
