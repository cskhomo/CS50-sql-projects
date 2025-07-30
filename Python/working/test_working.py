from working import convert
from pytest import raises

def test_hours():

    assert convert("9 AM to 5 PM") == "09:00 to 17:00"
    assert convert("12 AM to 12 PM") == "00:00 to 12:00"

def test_minutes():

    assert convert("9:30 AM to 5:45 PM") == "09:30 to 17:45"
    assert convert("12:01 AM to 12:59 PM") == "00:01 to 12:59"

def test_cross_noon():

    assert convert("12 PM to 12 AM") == "12:00 to 00:00"
    assert convert("12 AM to 12 PM") == "00:00 to 12:00"
    assert convert("11:59 AM to 12:01 PM") == "11:59 to 12:01"
    assert convert("11:59 PM to 12:01 AM") == "23:59 to 00:01"

def test_cross_day():

    assert convert("10:30 PM to 8 AM") == "22:30 to 08:00"
    assert convert("8 PM to 8 AM") == "20:00 to 08:00"

def test_invalid_times():

    with raises(ValueError):
        convert("9:60 AM to 5:60 PM")
    with raises(ValueError):
        convert("13 AM to 14 PM")
    with raises(ValueError):
        convert("00 AM to 12 PM")
    with raises(ValueError):
        convert("12:60 AM to 12:60 PM")

def test_format_errors():

    with raises(ValueError):
        convert("9AM to 5PM")
    with raises(ValueError):
        convert("9 AM - 5 PM")
    with raises(ValueError):
        convert("09:00 AM - 17:00 PM")
    with raises(ValueError):
        convert("5:00 PM until 9:00 AM")
    with raises(ValueError):
        convert("10 AM 5 PM")
