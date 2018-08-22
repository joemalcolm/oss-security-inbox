X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/08/23/6
Message-ID: <5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
Date: Wed, 22 Aug 2018 23:36:44 +0200
From: Leonardo Taccari <iamleot@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
Content-Type: text/plain; charset=utf-8

Hello Bob,

Bob Friesenhahn writes:
> The CERT advisory at https://www.kb.cert.org/vuls/id/332928 provides a 
> policy.xml example which does not appear to block PS2 and PS3, which 
> are also entry points for reading Postscript.
> [...]

If I am not missing something I think that ghostscript isn't used
for them though.
