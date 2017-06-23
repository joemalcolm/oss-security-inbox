X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/23/1
Message-ID: <af227933-a69f-6a1f-5ab1-00a1031e8819@redhat.com>
Date: Fri, 23 Jun 2017 07:37:54 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, Simon McVittie <smcv@...ian.org>
Subject: Re: CVE-2017-9780: Flatpak: privilege escalation via setuid/world-writable file permissions
Content-Type: text/plain; charset=utf-8

On 06/22/2017 11:01 PM, Simon McVittie wrote:
> * If you are using Flatpak to install apps from a third-party vendor,
>   then there is already a trust relationship: the app is sandboxed, but
>   the third-party vendor chooses what parameters are used for the sandbox.

Doesn't this qualify as a vulnerability in its own right?  Flatpak
advertises countermeasures against malicious applications:

“
Secure, sandboxed applications

Flatpak's sandboxing technology prevents exploits and hinders malicious
applications.
”

But maybe it's like selling a VPN which isn't encrypted.

Thanks,
Florian
