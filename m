X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/28/12
Message-Id: <201302281024.r1SAOp6Y011022@core.courtesan.com>
Date: Thu, 28 Feb 2013 05:24:51 -0500
From: "Todd C. Miller" <Todd.Miller@...rtesan.com>
To: oss security list <oss-security@...ts.openwall.com>
Subject: Re: CVE request: potential bypass of sudo tty_tickets constraints
Content-Type: text/plain; charset=utf-8

> Sudo versions affected:
>     Sudo 1.3.5 through 1.7.10p6 and sudo 1.8.0 through 1.8.6p7 when
>     the "tty_tickets" option is enabled.  This option is enabled
>     by default in sudo 1.7.4 and above.

The affected versions are actually: 

  Sudo 1.3.5 through 1.7.10p5 and sudo 1.8.0 through 1.8.6p6 inclusive.

 - todd
