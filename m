X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/07/12
Message-ID: <CAHmME9q6vctff8ZAyL-Ats_DMPKi=aazUBWX86fdKNNH5c7OfQ@mail.gmail.com>
Date: Mon, 7 Mar 2016 18:52:04 +0100
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Cgit XSS "vulnerability" has no CVE?
Content-Type: text/plain; charset=utf-8

At the moment, none of those example filters are XSS-safe. I think
I'll likely rewrite them for the next version to use a framework for
that. But there's never been any guarantee for those filters, and
they've never been provided as anything but potential example filters
for people to tweak and change.
