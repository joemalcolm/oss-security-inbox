X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/05/10
Message-Id: <E1XanDO-0007o1-1k@rmm6prod02.runbox.com>
Date: Sun, 05 Oct 2014 10:55:14 -0400 (EDT)
From: "David A. Wheeler" <dwheeler@...eeler.com>
To: "oss-security" <oss-security@...ts.openwall.com>
CC: "oss-security" <oss-security@...ts.openwall.com>
Subject: Re: Shellshocker - Repository of "Shellshock" Proof of Concept Code
Content-Type: text/plain; charset=utf-8

On Sun, 5 Oct 2014 17:44:15 +0400, Solar Designer <solar@...nwall.com> wrote:
> .... Most non-expert people only need to know that they need either the
> prefix/suffix patch included or function imports disabled, preferably in
> a security update from their distro vendor.  This makes the individual
> parser bugs, which got CVEs assigned, irrelevant.
> 
> Here's the relevant test:
> testfunc='() { echo bad; }' bash -c testfunc

This is a MUCH better test for most people.  Hanno's test script is great for detail, but most people don't need the detail.

I'm putting that email in my timeline at http://www.dwheeler.com/essays/shellshock.html#timeline - this is an EASY test people can directly use.

---  David A. Wheeler

