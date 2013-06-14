X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/14/3
Message-ID: <CA+5g0SKjc=D_GDy=JOUoJHjwzUmgPN64KspYwM0S8f9MrqC+9Q@mail.gmail.com>
Date: Fri, 14 Jun 2013 14:21:34 -0300
From: Felipe Pena <felipensp@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: XSS on Monkey HTTPD - dirlisting plugin
Content-Type: text/plain; charset=utf-8

A vulnerability was found in the Monkey HTTP - dirlisting plugin, which does not
filter file names before printing on HTML page, hence vulnerable to XSS attack.

PoC
----
$ touch "' onmouseover='alert(1);"


Report
------
http://bugs.monkey-project.com/ticket/185


CREDITS
-------
Felipe Pena

--
Regards,
Felipe Pena
