import mysql.connector
mydb=mysql.connector.connect(
      host='localhost',
      user='root',
      password='admin',
      database='myproductcatalog'
)

cur=mydb.cursor()
s="INSERT INTO element (id,description,value,position,isIndicator) VALUES(%s,%s,%s)"
element=[(1,abcd,250,2,true),(2,abcd,250,2,true),(3,abcd,250,2,true),(4,abcd,250,2,true),
        (5,abcd,250,2,true),(6,abcd,250,2,true),(7,abcd,250,2,true),(8,abcd,250,2,true),(9,abcd,250,2,true),
        (10,abcd,250,2,true),(11,abcd,250,2,true),(12,abcd,250,2,true),(13,abcd,250,2,true),(14,abcd,250,2,true),
        (15,abcd,250,2,true),(16,abcd,250,2,true),(17,abcd,250,2,true),(18,abcd,250,2,true),(19,abcd,250,2,true),
        (20,abcd,250,2,true),(21,abcd,250,2,true),(22,abcd,250,2,true),(23,abcd,250,2,true),(24,abcd,250,2,true),
        (25,abcd,250,2,true),(26,abcd,250,2,true),(27,abcd,250,2,true),(28,abcd,250,2,true),(29,abcd,250,2,true),
        (30,abcd,250,2,true),(31,abcd,250,2,true),(32,abcd,250,2,true),(33,abcd,250,2,true),(34,abcd,250,2,true),
        (35,abcd,250,2,true),(36,abcd,250,2,true),(37,abcd,250,2,true),(38,abcd,250,2,true),(39,abcd,250,2,true),
        (40,abcd,250,2,true),(41,abcd,250,2,true),(42,abcd,250,2,true),(43,abcd,250,2,true),(44,abcd,250,2,true),
        (45,abcd,250,2,true),(46,abcd,250,2,true),(47,abcd,250,2,true),(48,abcd,250,2,true),(49,abcd,250,2,true),
        (50,abcd,250,2,true),(51,abcd,250,2,true),(52,abcd,250,2,true),(53,abcd,250,2,true),(54,abcd,250,2,true),
        (55,abcd,250,2,true),(56,abcd,250,2,true),(57,abcd,250,2,true),(58,abcd,250,2,true),(59,abcd,250,2,true),
        (60,abcd,250,2,true),(61,abcd,250,2,true),(62,abcd,250,2,true),(63,abcd,250,2,true),(64,abcd,250,2,true),
        (65,abcd,250,2,true),(66,abcd,250,2,true),(67,abcd,250,2,true),(68,abcd,250,2,true),(69,abcd,250,2,true),
        (70,abcd,250,2,true),(71,abcd,250,2,true),(72,abcd,250,2,true),(73,abcd,250,2,true),(74,abcd,250,2,true),
        (75,abcd,250,2,true),(76,abcd,250,2,true),(77,abcd,250,2,true),(78,abcd,250,2,true),(79,abcd,250,2,true),
        (80,abcd,250,2,true),(81,abcd,250,2,true),(82,abcd,250,2,true),(83,abcd,250,2,true),(84,abcd,250,2,true),
        (85,abcd,250,2,true),(86,abcd,250,2,true),(87,abcd,250,2,true),(88,abcd,250,2,true),(89,abcd,250,2,true),
        (90,abcd,250,2,true),(91,abcd,250,2,true),(92,abcd,250,2,true),(93,abcd,250,2,true),(94,abcd,250,2,true),
        (95,abcd,250,2,true),(96,abcd,250,2,true),(97,abcd,250,2,true),(98,abcd,250,2,true),(99,abcd,250,2,true),
        (100,abcd,250,2,true)]
        cur.executemany(s,element)
        mydb.commit()
        
        

p="INSERT INTO field (id,number,recordid) VALUES(%s,%s,%s)"
element=[(1,250,2),(2,250,2),(3,250,2),(4,250,2),
        (5,250,2),(6,250,2),(7,250,2),(8,250,2),(9,250,2),
        (10,250,2),(11,250,2),(12,250,2),(13,250,2),(14,250,2),
        (15,250,2),(16,250,2),(17,250,2),(18,250,2),(19,250,2),
        (20,250,2),(21,250,2),(22,250,2),(23,250,2),(24,250,2),
        (25,250,2),(26,250,2),(27,250,2),(28,250,2),(29,250,2),
        (30,250,2),(31,250,2),(32,250,2),(33,250,2),(34,250,2),
        (35,250,2),(36,250,2),(37,250,2),(38,250,2),(39,250,2),
        (40,250,2),(41,250,2),(42,250,2),(43,250,2),(44,250,2),
        (45,250,2),(46,250,2),(47,250,2),(48,250,2),(49,250,2),
        (50,250,2),(51,250,2),(52,250,2),(53,250,2),(54,250,2),
        (55,250,2),(56,250,2),(57,250,2),(58,250,2),(59,250,2),
        (60,250,2),(61,250,2),(62,250,2),(63,250,2),(64,250,2),
        (65,250,2),(66,250,2),(67,250,2),(68,250,2),(69,250,2),
        (70,250,2),(71,250,2),(72,250,2),(73,250,2),(74,250,2),
        (75,250,2),(76,250,2),(77,250,2),(78,250,2),(79,250,2),
        (80,250,2),(81,250,2),(82,250,2),(83,250,2),(84,250,2),
        (85,250,2),(86,250,2),(87,250,2),(88,250,2),(89,250,2),
        (90,250,2),(91,250,2),(92,250,2),(93,250,2),(94,250,2),
        (95,250,2),(96,250,2),(97,250,2),(98,250,2),(99,250,2),
        (100,250,2)]




