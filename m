X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/10/04/7
Message-ID: <505590680.1194281286219929364.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 4 Oct 2010 15:18:49 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Eugene Teo <eugeneteo@...nel.sg>, coley <coley@...re.org>
Subject: Re: CVE request: kernel: SCTP memory corruption in HMAC handling
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-3705

Thanks.

-- 
    JB


----- "Dan Rosenberg" <dan.j.rosenberg@...il.com> wrote:

> Reference:
> http://marc.info/?l=linux-kernel&m=128596992418814&w=2
> 
> When parsing a peer's supported HMAC authentication options in the
> sctp_auth_asoc_get_hmac() function, a malicious peer can craft their
> HMAC array in such a way as to cause memory corruption (out-of-bounds
> read followed by use of retrieved out-of-bounds data), which at the
> very least could cause a denial of service via kernel panic, and
> possibly worse.  It appears this could be triggered remotely when
> connecting to a malicious peer, or locally by a user acting as both
> endpoints.  In both cases, the "auth_enable" sysctl must be set in
> order to trigger the bug.
> 
> -Dan
