X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/13/4
Message-ID: <20131113155751.GC28665@sentinelchicken.org>
Date: Wed, 13 Nov 2013 07:57:51 -0800
From: Tim <tim-security@...tinelchicken.org>
To: oss-security@...ts.openwall.com
Subject: Re: Microsoft Warns Customers Away From RC4 and SHA-1
Content-Type: text/plain; charset=utf-8

> I'm inclined to agree. The question I suppose is, like DES (and
> 3DES/MD5) at what point do we start assigning CVE's for some of this?
> thoughts and comments welcome.

Using a weak encyption algorithm alone isn't a sufficient condition to
issue a CVE against software, since often the context of the usage
matters a lot.  If you use MD5 or SHA-1 for password hashing (with
lots of salt and rounds), then there's no vulnerability.  If you use
them for HMACs, then there's also likely no problem.  But if you use
them for a signature with a public key, there is.

So to answer the "at what point" question: *right now*, but *only* in
the proper context.  There needs to be a demonstrable attack in that
context. 

tim
