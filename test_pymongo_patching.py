from pymongo import MongoClient

client = MongoClient("mongodb://mongodb:27017/")


def test_something():
    client.get_database("test").get_collection("test").insert_one({"test": "test"})
