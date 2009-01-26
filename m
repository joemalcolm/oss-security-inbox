X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/01/26/1
Message-ID: <20090126140300.23af2b17@redhat.com>
Date: Mon, 26 Jan 2009 14:03:00 +0100
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: Re: CVE request - ganglia
Content-Type: text/plain; charset=utf-8

On Tue, 20 Jan 2009 21:13:26 -0500 (EST) "Steven M. Christey"
<coley@...us.mitre.org> wrote:

> Notice the second CVE for the bandwidth/CPU consumption.  The attack
> scenario isn't completely clear to me, but since it's labeled as a
> DoS by the developer, I decided to include it.

CVE-2009-0242 was disputed on the ganglia mailing list, even by the
reporter:
http://www.mail-archive.com/ganglia-developers@lists.sourceforge.net/msg04973.html

The flaw should only apply to gmetad with multi-request feature
proposal included (was part of the original mail, along with the fix
for buffer overflow).  Though from the quick look at the issue,
specifying invalid paths does not seem to make the issue any worse even
there:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2009-0242#c1

-- 
Tomas Hoger / Red Hat Security Response Team
