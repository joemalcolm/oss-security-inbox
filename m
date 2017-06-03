X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/03/4
Message-ID: <1496493559.21640.7.camel@gmail.com>
Date: Sat, 03 Jun 2017 08:39:19 -0400
From: Daniel Micay <danielmicay@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel: stack buffer overflow with controlled payload in get_options() function
Content-Type: text/plain; charset=utf-8

> The lockdown patches would be useful if they were complete

In the context of filling holes in containment of root based on
namespaces / chroots / MAC, where they can already be useful today. Not
as something that's independently useful, especially when it's known to
not be complete without other isolation primitives...
