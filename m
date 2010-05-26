X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/26/4
Message-ID: <20100526094644.6ec7db41@redhat.com>
Date: Wed, 26 May 2010 09:46:44 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: thomas@...ell.com, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: Fwd: [Full-disclosure] stratsec Security Advisory SS-2010-005: Samba Multiple DoS Vulnerabilities
Content-Type: text/plain; charset=utf-8

On Tue, 25 May 2010 17:10:04 +0200 Thomas Biege wrote:

> So far no assignments were made, right?

Do you have any public bug report with further details about these
flaws?  According to our samba maintainers, this code is only executed
in per-connection smbd child and one can only DoS own connection. It
seems upstream has not handled this as security either.

-- 
Tomas Hoger / Red Hat Security Response Team
