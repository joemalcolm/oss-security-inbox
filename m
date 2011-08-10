X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/10/3
Message-ID: <CAOSRhRN4fz7L1ZiD4T7Pinbt6KWr-Ou0ng4=Aag9ArTn3tUaOA@mail.gmail.com>
Date: Tue, 9 Aug 2011 23:33:04 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Cc: csmall@...ian.org
Subject: CVE request (and disclosure): ax25d missing setuid return code check
Content-Type: text/plain; charset=utf-8

The AX.25 daemon (ax25d), typically provided in the ax25-tools
package, allows administrators to associate incoming AX.25, NET/ROM,
and ROSE traffic with the execution of an endpoint program (most
commonly "node"), which is run under a specified user account.
Because ax25d is missing a check on the return code for a setuid call
responsible for dropping privileges to the specified user, it may be
possible to cause setuid to fail, after which the chosen program will
be executed with root privileges.  In other words, if you're in the
business of handing out unprivileged shells over amateur radio (don't
we all? :p ), this would allow for remote compromise.

-Dan
