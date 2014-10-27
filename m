X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/27/5
Message-ID: <20141027191800.GA660@jwilk.net>
Date: Mon, 27 Oct 2014 20:18:00 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: Re: strings / libbfd crasher
Content-Type: text/plain; charset=utf-8

* Michal Zalewski <lcamtuf@...edump.cx>, 2014-10-27, 11:59:
>Well, there's also a trivial stack buffer overflow in srec.c near line 
>254:
>
>      char buf[10];
>...
>        sprintf (buf, "\\%03o", (unsigned int) c);
>
>But with this test case, c will be -44, or "\1777777777777777777724",

More likely "\37777777724"...

>which sounds a lot longer than 9 characters.

...which is still longer than 9.

-- 
Jakub Wilk
