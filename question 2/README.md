۱. ابتدا داکر را نصب کردم

۲. با دستور docker pull mcr.microsoft.com/azure-sql-edge ایمیج sql را pull کردم

۳. با دستور docker run --cap-add SYS_PTRACE -e 'ACCEPT_EULA=1' -e 'MSSQL_SA_PASSWORD=yourStrong(!)Password' -p 1433:1433 --name azuresqledge -d mcr.microsoft.com/azure-sql-edge سرور لوکال را راه اندازی کردم و با استفاده از برنامه azure به سرویس وصل شدم

۴. جداول را با دستورات sql ساختم.

۵. برای پردازش اطلاعات، نیاز بود که فایل مورد نظر در مسیر داخلی داکر کپی شود. با استفاده از دستور docker cp /Users/shahriyarsharbatdar/Desktop/task/REF_SMS/REF_CBS_SMS2.csv azuresqledge:/ فایل را در مسیر داخلی داکر کپی کردم.

۶. با کمک BULK INSERT اطلاعات جدول را منتقل کردم.


## جواب سوال ۱

![alt text](<Screenshot 1402-11-30 at 6.55.12 in the evening.png>)

## جواب سوال ۲

![alt text](<Screenshot 1402-11-30 at 6.55.27 in the evening.png>)


## جواب سوال 3

![alt text](<Screenshot 1402-11-30 at 6.55.40 in the evening.png>)


## جواب سوال 4

![alt text](<Screenshot 1402-11-30 at 6.55.51 in the evening.png>)
