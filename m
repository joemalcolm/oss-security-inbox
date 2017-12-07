X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/12/08/1
Message-ID: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>
Date: Fri, 8 Dec 2017 00:51:50 +0100
From: Marcus Brinkmann <marcus.brinkmann@...r-uni-bochum.de>
To: oss-security@...ts.openwall.com
Subject: Re: Recommendations GnuPG-2 replacement
Content-Type: text/plain; charset=utf-8

Hi,

I started neopg.io two months ago to provide a modern replacement for
GnuPG.  It will go back to a single-binary architecture like gpg1 was,
but move forward on just about every other issue:

* Written in C++
* based on the Botan crypto library instead of libgcrypt
* typical library + CLI (with subcommands) architecture
* better testing (CI, static analysis)

In the beginning, things will be somewhat unstable as I am cleaning up
and restructuring the internals completely, but I try to keep every
commit a somewhat running version (currently keyserver lookup is broken
because I am not registering the root certificate of the keyserver CA -
yes, openpgp keyservers have their own self-signed root CA).

You can follow the progress on neopg.io and the resources linked from
there.  I am keen on documenting the changes and the reasons for them as
I go along.  I am open to suggestions, just open an issue on GitHub.

Thanks,
Marcus
