## مراحل ایجاد اسکریپت:

1. **ایجاد فایل اسکریپت:**
   ابتدا با استفاده از دستور `nano myscript.sh` فایل اسکریپت را ایجاد کرده‌ایم.

2. **اجازه اجرا دادن به فایل:**
   با دستور `chmod +x myscript.sh` اجازه داده‌ایم که سیستم فایل را بتواند اجرا کند.

3. **شروع به کد نویسی:**
   با استفاده از ویرایشگر nano، شروع به نوشتن کد اسکریپت کردیم.

4. **تعیین ترمینال برای اجرا:**
   با قرار دادن `#!/bin/bash` در ابتدای فایل، مشخص کردیم که این اسکریپت با ترمینال bash اجرا شود.

5. **پردازش ورودی کاربر:**
   با دستورهای `echo` و `read` ورودی کاربر را پردازش کرده و آن را به عنوان `username` ذخیره می‌کنیم.

6. **نگهداری از لاگ‌ها:**
   این اسکریپت دو فایل `right_log` و `wrong_log` را برای نگهداری لاگ کاربران ایجاد می‌کند.

7. **تولید عدد تصادفی:**
   با دستور `target=$((RANDOM % 1000))` یک عدد تصادفی بین ۰ تا ۱۰۰۰ را تولید و ذخیره می‌کنیم.

8. **حلقه اجرا:**
   با استفاده از حلقه `while true; do` برنامه را تا زمانی که به شرطی نرسد، اجرا می‌کنیم.

9. **پردازش ورودی کاربر:**
   از دستورات شرطی `if`, `elif`, و `else` برای بررسی و پردازش ورودی کاربر استفاده می‌شود.

10. **نگهداری از لاگ‌ها:**
   تمامی حدس‌های کاربر در لاگ‌ها ثبت می‌شوند و در صورت حدس درست، از حلقه خارج می‌شود.