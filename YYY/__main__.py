from . import __version__


def main():
    print(f"Version {__version__}")


if __name__ == "__main__":
    main()


# ========================
# SET IT UP AS A CLI TOOL
# ========================
# import json
# import datetime
#
# import fire
#
# from .package1 import SomeClass1
# from .package2 import SomeClass2
# from .package3 import some_func1
#
#
# class CustomJSONEncoder(json.JSONEncoder):
#     """Custom JSON Encoder that formats objects not usually liked by JSON"""
#
#     def default(self, obj):
#         if isinstance(obj, datetime.datetime):
#             return obj.isoformat()
#         elif isinstance(obj, set):
#             return list(obj)
#         elif isinstance(obj, (bytes, bytearray)):
#             return obj.decode("utf-8")
#         else:
#             try:
#                 return super().default(obj)
#             except:
#                 return str(obj)
#
#
# def serialize_fire(result):
#     """Function that formats the outputs of functions used by Fire, before
#     displaying on terminal.
#     """
#     if isinstance(result, dict):
#         # Convert dicts to JSON trings, and encode them safely using a custom
#         # encoder (eg, to deal with datetimes, and other objects that JSON does
#         # not like).
#         return json.dumps(result, cls=CustomJSONEncoder)
#     return result
#
#
# def cli():
#     fire.Fire(
#         dict(
#             aaa=some_func1,
#             subsectB=SomeClass1(),
#             subsectC=SomeClass2().anotherClass,
#             version=str(__version__),
#         ),
#         serialize=serialize_fire,
#     )
#
#
# if __name__ == "__main__":
#     cli()
