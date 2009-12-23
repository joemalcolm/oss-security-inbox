X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/12/23/6
Message-ID: <Pine.GSO.4.64.0912231650420.21134@faron.mitre.org>
Date: Wed, 23 Dec 2009 16:50:56 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: Re: CVE request: acl 2.2.47 always follows symlinks
Content-Type: text/plain; charset=utf-8


On Wed, 23 Dec 2009, Hanno Böck wrote:

> setfacl/getfacl (part of package acl-2.2.47) contains a bug that it ignores
> the --physical/-P parameter that means don't follow symlinks on -R
> (recursive).

Use CVE-2009-4411, to be filled in later.

- Steve
