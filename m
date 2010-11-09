X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/09/5
Message-ID: <AANLkTimGTii32wHjpB=Md=3asfuqtM6yiQzy-=MxkKyR@mail.gmail.com>
Date: Tue, 9 Nov 2010 07:14:58 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: Petr Matousek <pmatouse@...hat.com>
Cc: coley@...us.mitre.org, oss-security@...ts.openwall.com
Subject: Re: CVE request: kernel: gdth: integer overflow in ioc_general()
Content-Type: text/plain; charset=utf-8

>
> #define SIZE 0x10000029aUL
>
> ...
>    volatile unsigned long t = SIZE;  // volatile so that it does not get optimised (error)
>
>    printk("nada: %lx\n", current_thread_info()->addr_limit.seg);
>    printk("nada2: %lx\n", access_ok(VERIFY_READ, 0, t));
>    printk("nada3: %lx\n", t);
>    printk("nada4: %lx\n", t > UINT_MAX);
> ...
>
> nada: ffff810000000000
> nada2: 1
> nada3: 10000029a
> nada4: 1
>

Huh.  Learn something new every day, I suppose.  I wonder if this is
kernel version or architecture dependent?  In either case, ignore my
previous statement, unless someone else sees anything fishy going on.
