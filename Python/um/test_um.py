from um import count


def test_is_um():
    assert count("Um") == 1
    assert count("I um, um.. forgot um") == 3


def test_has_um():
    assert count("umbrella") == 0
    assert count("chewing gum is yum") == 0


def test_no_um():
    assert count("mu") == 0
    assert count("hello, world") == 0
