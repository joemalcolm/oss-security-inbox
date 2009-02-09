X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/09/1
Message-ID: <1202223069.5062081234143596586.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Sun, 8 Feb 2009 20:39:56 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: "Steven M. Christey" <coley@...us.mitre.org>
Cc: coley@...re.org, oss-security@...ts.openwall.com
Subject: Re: CVE request: Squid <2.7.6, 3.0.13, 3.1.0.5 DoS
Content-Type: text/plain; charset=utf-8


----- "Steven M. Christey" <coley@...us.mitre.org> wrote:

> I do subscribe to oss-security so see these emails.  Still working on the
> best process to be able to respond more quickly.
> 
> The SQUID advisory doesn't state what kind of DoS it is, and it's not
> clear from the patches either.  Is it a crash, hang, resource consumption,
> etc.?  Not essential from a CVE perspective but probanly convenient to
> Squid users.

I have more information in the Red Hat bug:
https://bugzilla.redhat.com/show_bug.cgi?id=484246

A remote user can trigger an assert() call, so it's a crash basically.

-- 
    JB
