# keshihua
bookstore书城项目可视化
一．项目概述
Bookstore是一个网上购书的电子商务平台。平台采用B2C的购物模式：Bookstore网站管理和维护着所有代售书籍，消费者能在网站上浏览书籍、加入购物、购买书籍、支付；商家根据订单将书籍邮寄给消费者。
二．数据描述
1.	数据参数
该数据每日进行采集汇总。数据范围涵盖各类书籍以及购书的用户信息。
2.	数据类型
该数据每日进行采集汇总。
	中文名称	英文名称	数据类型
	图书名	Book_name	VARCHAR
	图书编号	Book_id	INT
	图书市场价	Book_market_price	DECIMAL
	图书出版社	Book_press	VARCHAR
	图书交易价	Book_price	DECIMAL
	图书浏览量	Look_mount	INT
	图书成交量	Deal_mount	INT
	用户地址	Detail_address	VARCHAR
	用户邮箱	email	VARCHAR
	用户地区	location	VARCHAR
	交易时间	Times	DATATIME
	用户编号	User_id	INT
	用户身份	Identify	VARCHAR	
	用户性别	Gender	CHAR
	电话号码	Phone	VARCHAR	
	用户名	Username	VARCHAR	

3.	数据清洗说明
该数据暂无敏感数据项
数据样例：该数据样例提供了 2022年 5月19日至5月X日的网站销售书籍数据。
三．功能需求
1.	统计每个省份的购买用户数量、销售书籍数量和购书消费总额（中国地图）（和后面一个合并了）
2.	统计各个身份购书数量（柱状图）
3.	统计各个身份用户数量比例（饼状图）
4.	统计每个用户购买书籍的价格均值（除去最高和最低）
5.	统计购书数量排名前三的用户
6.	求销售量排名前五的书籍，再按性别统计每本书的购买量（双柱状图）
7.	求每天销售书籍数量（折线图）
8.	求每个出版社的销售量
9.	统计销售数前三的书籍名字
10.	统计各个时间段购买书籍数量（0-4点，4-8点，8-12点，12-16点，16-20点，20-24点）（柱状图）

bookstore运行效果图
![图片](https://user-images.githubusercontent.com/89886362/174523428-b53bb308-593f-43ab-9d71-264116cff9cb.png)


可视化效果图
![图片](https://user-images.githubusercontent.com/89886362/174523255-f85e6c6b-9ac6-456d-8ac6-ee53902ce1e0.png)
![图片](https://user-images.githubusercontent.com/89886362/174523292-619f6b18-aaa9-47bd-a90e-31ec93cb2f35.png)
![图片](https://user-images.githubusercontent.com/89886362/174523302-a7a590a8-a252-49b3-a37b-7abef056381e.png)
![图片](https://user-images.githubusercontent.com/89886362/174523312-d4c55858-ef48-438e-9c1e-086595ececc2.png)
