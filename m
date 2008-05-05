X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/05/05/5
Message-ID: <Pine.GSO.4.51.0805051249370.17161@faron.mitre.org>
Date: Mon, 5 May 2008 12:51:28 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: coley@...us.mitre.org
Subject: Re: asterisk dupe?
Content-Type: text/plain; charset=utf-8


On Wed, 30 Apr 2008, Moritz Muehlenhoff wrote:

> I think there's been a dupe in a recent CVE assignment for
> asterisk. CVE-2008-1923 appears to be a duplicate of
> CVE-2007-4103.

These are most likely different based on different advisories from
Asterisk, as well as different types of issue - CVE-2007-4103 is basically
resource exhaustion via "malformed" handshakes, and CVE-2008-1923 involves
Smurf-ish traffic amplification being sent to a spoofed address.

- Steve
