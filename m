X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/01/2
Message-ID: <1557139.J15zvKlvWX@arcadia>
Date: Sun, 01 Jan 2017 16:41:25 +0100
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Subject: libtiff: multilple crashes
Content-Type: text/plain; charset=utf-8

Happy year to everyone.

I discovered several crashes in libtiff. To avoid dozens of posts, I tried to 
group them based on the type of issue.
Summary:

1) The majority of the issues were reproducible by upstream and they were 
fixed
2) Few issues were reproducible by upstream and they were NOT fixed
3) Some issues were NOT reproducible by upstream.

So for now I will not post the issues described at the point N°3 and try in 
the near future to make upstream able to reproduce them.

Will follow the details.

-- 
Agostino Sarubbo
Gentoo Linux Developer
