X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/1
Message-ID: <eae76304-b1b6-436b-bd22-934789cc6f89@oracle.com>
Date: Tue, 11 Aug 2026 17:50:53 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Damien Miller <djm@....openbsd.org>
Subject: Re: Announce: OpenSSH 10.5 released
Content-Type: text/plain; charset=utf-8

On 8/10/26 21:40, Damien Miller wrote:
> Changes since OpenSSH 10.4
> ==========================
> 
> This release contains a number of security fixes and small bugfixes.
> 
> Security
> ========

MITRE has now published CVE ids for these:

>   * ssh-agent(1): fix an interaction between agent locking and the
>     session-bind@...nssh.com extension that is used to identify
>     forwarded agents. These binding requests were refused when the
>     agent was locked, with the result that operations that were
>     intended to be limited to local use only could be performed
>     remotely, including the ability to add PKCS#11 tokens and make
>     use of keys that had destination restrictions applied.
>     Reported by sn0x-sharma

https://www.cve.org/CVERecord?id=CVE-2026-73281

>   * ssh(1): avoid potential realloc use-after-free in the client if a
>     remote forwarding is added via the local session multiplexing
>     socket while a remote forwarding open request is pending with the
>     server. Report and fix from Brian Mingus of Cognatory

https://www.cve.org/CVERecord?id=CVE-2026-73282

>   * sshd(8): make the authorized_keys "restrict" keyword apply
>     correctly to tunnel forwarding too (which is administratively
>     disabled by default). Reported by Erichen, Institute of Computing
>     Technology, Chinese Academy of Sciences

https://www.cve.org/CVERecord?id=CVE-2026-73283

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
