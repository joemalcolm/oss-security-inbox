X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/05/20/1
Message-ID: <87y765bjug.fsf@mocca.josefsson.org>
Date: Tue, 20 May 2008 07:55:19 +0200
From: Simon Josefsson <simon@...efsson.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE ID request: GNUTLS
Content-Type: text/plain; charset=utf-8

Jonathan Smith
<smithj-TzNcu2uxYW0shl4onS21xdBPR1lH4CV8@...lic.gmane.org> writes:

> Florian Weimer wrote:
> | Several issues have been announced in GNUTLS-SA-2008-1:
>
> Note that the fixed versions has changed. 2.2.4 didn't fix the issue, so
> they pushed 2.2.5 today as well.
>
> reference
> http://permalink.gmane.org/gmane.comp.encryption.gpg.gnutls.devel/2812

Actually, v2.2.4 did fix the security issue.

However, the code to detect and print a debug message about the attack
was buggy and was triggered for normal connections under some conditions
(conditions which, alas, the self-tests did not exercise).

Still, the 2.2.5 announcement is what you want to read to get the full
picture.  Note that gmane garbles OpenPGP signed cleartext patches.  Try
this link instead:

http://lists.gnu.org/archive/html/gnutls-devel/2008-05/msg00060.html

/Simon
