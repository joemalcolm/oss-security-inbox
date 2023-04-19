Received: (qmail 11809 invoked by uid 550); 20 Apr 2023 08:32:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21659 invoked from network); 19 Apr 2023 22:11:56 -0000
Date: Thu, 20 Apr 2023 00:11:44 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20230419221144.WRtLD%steffen@sdaoden.eu>
In-Reply-To: <20230419055256.zhwa4okfxdbsc72z@beesty>
References: <w7boj4fg4x2o2bjz7a7zkjk4bgxqvqyuxycdqqw2dl3bhanh6a@h4jtbccffxgv>
 <20230416205727.0XQJ2%steffen@sdaoden.eu>
 <20230418005741.GA25557@openwall.com>
 <20230419055256.zhwa4okfxdbsc72z@beesty>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-450-g9589f04a75
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Re: CVE-2023-2002: Linux Bluetooth:
 Unauthorized management command execution

nightmare.yeah27@aceecat.org wrote in
 <20230419055256.zhwa4okfxdbsc72z@beesty>:
 |On Tue, Apr 18, 2023 at 02:57:41AM +0200, Solar Designer wrote:
 |> On Sun, Apr 16, 2023 at 10:57:27PM +0200, Steffen Nurpmeso wrote:
 |
 |>> You have to do some things, and if you give up privileges
 |>> thereafter, extended capabilities are gone.
 |
 |> POSIX saved IDs should help retain/regain the capabilities.
 |
 |Another (simpler?) way is to fork before giving up privilege.

So it ends up, logically torn into individual pieces, each of
which with diverted privileges, that all communicate via CMSG or
shared memory (file maps).  OpenBSD at least provided a nice
syslog syscall, for FreeBSD and Linux i even had to split out
logging via syslog(3) to a dedicated logger process, since who
knows what the C libraries do to get that done, and that is only
today -- who knows what they do tomorrow.  So many context
switches, so many detours for each and every thing.  Having said
that, audio goes these long roads for most of you (i'd say), so
a litte log message is not a thing.  But, you know, if you have
some work to do that involves network traffic, including DNS
resolving, and TLS, then this process (a thread cannot be it
.. except maybe on Linux when you unroll it through adapted
clone(2)) should still be constrained via pledge/unveil / capsicum
/ seccomp, no?  And this seems to be a very complicated thing to
do given all the libraries one has to use; isn't this
a maintenance nightmare?  So i was thinking; i mean the BSDs are
holistical, which, if you build only upon facilities in the base
system, is maybe doable.  But Linux?

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
