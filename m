X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/21/4
Message-ID: <CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>
Date: Thu, 21 Jun 2018 12:28:33 +0200
From: Lukas Odzioba <lukas.odzioba@...il.com>
To: oss-security@...ts.openwall.com
Cc: secure@...el.com
Subject: Re: Intel hyper-threading security issues
Content-Type: text/plain; charset=utf-8

2018-06-21 12:22 GMT+02:00 Lukas Odzioba <lukas.odzioba@...il.com>:
> If you feel like you really need that, on Linux you can dump SRAT ACPI
> table decompile it, remove APICID entries of "ht processors", compile
> it back and put into initrd.
> https://www.kernel.org/doc/Documentation/acpi/initrd_table_override.txt

Or use cpu hotplug mechanism, which should be way more convenient:
https://www.kernel.org/doc/html/v4.17/core-api/cpu_hotplug.html
