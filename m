X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/13/3
Message-ID: <87d4fw7xts.fsf@mid.deneb.enyo.de>
Date: Sat, 13 Dec 2008 19:07:59 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Re:  Re: CVE Request - roundcubemail
Content-Type: text/plain; charset=utf-8

* Florian Weimer:

> * Raphael Geissert:
>
>> I became aware of some sort of code execution vulnerability one day
>> before that ticket was reported. After reviewing the file I
>> determined that it isn't a vulnerability in roundcube, but in PHP
>> itself; but I'm open to be proved wrong.
>
> I think this is a documented feature of preg_replace with the "e"
> flag, comparable to what happens when you use string concatenation to
> create SQL statements.

Scratch that, I had an off-by-one error in matching search/replace
terms. 8-(

Therefore, I agree with Raphael that the issue has not been found yet.
