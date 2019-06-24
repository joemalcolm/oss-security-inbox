X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/24/9
Message-ID: <alpine.GSO.2.20.1906241135310.23351@scrappy.simplesystems.org>
Date: Mon, 24 Jun 2019 11:42:17 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@...ple.dallas.tx.us>
To: oss-security@...ts.openwall.com
Subject: Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
Content-Type: text/plain; charset=utf-8

On Mon, 24 Jun 2019, Stuart D. Gathman wrote:
>
> Question: is fuzzing useful for languages like Java/python?  Obviously,
> you eventually reach a native code module in both cases, but fuzzing the 
> entire virtual machine is cumbersome.  Maybe native code libraries
> for "safe" languages should include fuzzing as part of testing.

There is nothing about languages like Java and Python which 
necessarily makes them safe.  Access outside of memory bounds is just 
one issue which often afflicts C/C++.  Java and Python can easily do 
something wrong such as use all available resources or never finish. 
In the case of Python, Python can easily make arbitrary calls into C 
code under control of the script.

Bob
-- 
Bob Friesenhahn
bfriesen@...ple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
