X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/17/4
Message-ID: <6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>
Date: Thu, 17 Nov 2016 16:56:06 +0000
From: John Haxby <john.haxby@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2016-4484: - Cryptsetup Initrd root Shell
Content-Type: text/plain; charset=utf-8

On 17/11/16 16:39, Jason Cooper wrote:
> However, the golden rule still applies.  Physical access trumps all
> defensive measures.  The absolute best you can do is detect that
> physical access occurred.  From there, you're hoping there are no
> hardware implants or other devices outside the scope of software
> security.

I agree.  However, it ought be to be harder than leaning on the enter
key to break into a system.  You lock your doors even though it doesn't
stop a determined burglar?

(I note that if you set a grub password at installation time on Fedora
you also get rd.shell=0 which stops this particular attack dead.)

jch
