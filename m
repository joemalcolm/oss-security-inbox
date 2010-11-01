X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/01/2
Message-ID: <87sjzkeqb3.fsf@mid.deneb.enyo.de>
Date: Mon, 01 Nov 2010 21:34:24 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Proftpd pre-authentication buffer overflow in Telnet code
Content-Type: text/plain; charset=utf-8

I haven't seen a CVE/patch/discussion for this issue yet:

| 1.3.3c
| ---------
| 
|   + Fixed Telnet IAC stack overflow vulnerability (ZDI-CAN-925)

<http://proftpd.org/docs/RELEASE_NOTES-1.3.3c>

This:

|  + Fixed directory traversal bug in mod_site_misc

is <http://bugs.proftpd.org/show_bug.cgi?id=3519> and also seems to
lack a CVE assignment.

I don't know yet if the following is a security fix:

|  + Fixed SQLite authentications using "SQLAuthType Backend"
