from ksql import KSQLAPI

client = KSQLAPI("http://localhost:8088")
query = client.query("select * from ridersNearMountainView")
for item in query:
    print(item)
