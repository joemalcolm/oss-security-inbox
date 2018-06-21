X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/21/5
Message-ID: <718d05e5-3057-7c32-da9a-70bc5a82e3f5@tao.at>
Date: Thu, 21 Jun 2018 13:54:16 +0200
From: Sven Schwedas <sven.schwedas@....at>
To: oss-security@...ts.openwall.com
Subject: Re: Intel hyper-threading security issues
Content-Type: text/plain; charset=utf-8

On 2018-06-21 12:28, Lukas Odzioba wrote:
> 2018-06-21 12:22 GMT+02:00 Lukas Odzioba <lukas.odzioba@...il.com>:
>> If you feel like you really need that, on Linux you can dump SRAT ACPI
>> table decompile it, remove APICID entries of "ht processors", compile
>> it back and put into initrd.
>> https://www.kernel.org/doc/Documentation/acpi/initrd_table_override.txt
> 
> Or use cpu hotplug mechanism, which should be way more convenient:
> https://www.kernel.org/doc/html/v4.17/core-api/cpu_hotplug.html
> 

Hotplug doesn't seem differentiate between HT threads and physical
cores, will setting maxcpus=2 on a 2 cores+HT machine reliably disable
HT, or can it disable one core and keep HT active on the other?



Download attachment "signature.asc" of type "application/pgp-signature" (660 bytes)
