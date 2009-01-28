X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/28/7
Message-ID: <Pine.GSO.4.51.0901280858500.490@faron.mitre.org>
Date: Wed, 28 Jan 2009 09:02:45 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: update on CVE-2008-5718
Content-Type: text/plain; charset=utf-8


On Wed, 28 Jan 2009, Thomas Biege wrote:

> New patch attached, the old one was missing spaces.
> Hope the blacklist is complete now...

Would a "-" character allow an argument injection attack by inserting
dangerous command-line switches?  Things like being able to add a "-rf" as
an argument to the rm command...

I assume there's something undesirable about quoting everything unless
it's alphanumeric?

- Steve
