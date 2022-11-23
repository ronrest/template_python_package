from . import __version__


def main():
    print(f"Version {__version__}")


if __name__ == "__main__":
    main()


# ========================
# SET IT UP AS A CLI TOOL
# ========================
# import fire

# from .package import SomeClass
# from .package2 import SomeFunc
# from . import __version__


# def main():
#     fire.Fire(
#         dict(
#             func1=SomeFunc,
#             class1=SomeClass(),
#             version=str(__version__),
#         )
#     )
