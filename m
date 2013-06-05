X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/05/19
Message-Id: <06483F0F-4F15-4AF9-859F-91DA6029479F@audreyt.org>
Date: Thu, 6 Jun 2013 02:42:10 +0800
From: 唐鳳 <audreyt@...reyt.org>
To: Russ Allbery <rra@...nford.edu>
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE-2013-2145: perl Module::Signature code execution vulnerability
Content-Type: text/plain; charset=utf-8

Russ Allbery <rra@...nford.edu> 於 2013/6/6 上午2:24 寫道：
> Speaking as a CPAN author, the second would be awesome.  For bonus points,
> once one registers a key with CPAN, CPAN could then even check one's
> uploads and disallow uploads that aren't signed with the proper key.

Indeed. Note the main design & work for the module was done ~10 years ago, so my recollection is a bit fuzzy, but the module was designed such that it allows this invocation against a hypothetical CPAN OpenPGP server:

    env MODULE_SIGNATURE_KEYSERVER=pgp.cpan.org cpansign verify

At that time PAUSE (the CPAN upload server) was not yet made public, and there were insufficient rounds of tuits to implement this feature as part of my TPF 2003 grant .

Now that the PAUSE codebase has been released on GitHub since 2010, one can imagine adding a PGP import functionality into it. That'd be _awesome_.

Cheers,
Audrey
