X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/21/3
Message-ID: <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>
Date: Thu, 21 Jun 2018 12:22:28 +0200
From: Lukas Odzioba <lukas.odzioba@...il.com>
To: oss-security@...ts.openwall.com
Cc: secure@...el.com
Subject: Re: Intel hyper-threading security issues
Content-Type: text/plain; charset=utf-8

2018-06-21 11:37 GMT+02:00 Stuart Henderson <stu@...cehopper.org>:
> That isn't possible with some BIOS. For example, newer Lenovo machines
> removed the option apparently due to perceived lack of demand...

If you feel like you really need that, on Linux you can dump SRAT ACPI
table decompile it, remove APICID entries of "ht processors", compile
it back and put into initrd.
https://www.kernel.org/doc/Documentation/acpi/initrd_table_override.txt

Thanks,
Lukas
