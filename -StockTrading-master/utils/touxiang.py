import pymysql
import numpy as np
conn = pymysql.connect(host="47.113.228.135", user="trading", password="Mima123$", database="stocktrading")
cursor = conn.cursor()

sql  = "select * from user_table"

cursor.execute(sql)

des = cursor.fetchall()

des  =  np.array(des)

# res = des[:,[7]]
print(des)
# print(res)
for i in range(0,len(des)):
    des[i][7] = des[i][7][2:len(des[i][7])]
    print(des[i][7])

print(des)
des = des.tolist()
print(des)

sql2 = "update user_table set photo_url=%s  where phone_number=%s;"     # 头像

for i in range(0,len(des)):
    cursor.execute(sql2,[des[i][7],des[i][5]])
    conn.commit()
cursor.close()
conn.close()