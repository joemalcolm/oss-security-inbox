X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3614" "Friday" "10" "July" "2015" "15:33:28" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<559F3D08.80401@treenet.co.nz>" "110" "Re: [oss-security] Squid HTTP proxy CVE request" nil nil nil "7" "2015071003:33:28" "[oss-security] Squid HTTP proxy CVE request" (number mark "U       squid3@treen Jul 10  110/3614  " thread-indent "\"Re: [oss-security] Squid HTTP proxy CVE request\"\n") "<CAESArwn24tDQ1kD_Tfb65zCSUTr_Nz8AYwy0a_vKP8V4be5utw@mail.gmail.com>" ("<559A65F3.80103@treenet.co.nz>" "<CAESArwn24tDQ1kD_Tfb65zCSUTr_Nz8AYwy0a_vKP8V4be5utw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25770 invoked by uid 550); 10 Jul 2015 03:33:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25747 invoked from network); 10 Jul 2015 03:33:56 -0000
Message-ID: <559F3D08.80401@treenet.co.nz>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
References: <559A65F3.80103@treenet.co.nz> <CAESArwn24tDQ1kD_Tfb65zCSUTr_Nz8AYwy0a_vKP8V4be5utw@mail.gmail.com>
In-Reply-To: <CAESArwn24tDQ1kD_Tfb65zCSUTr_Nz8AYwy0a_vKP8V4be5utw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Fri, 10 Jul 2015 15:33:28 +1200
From: Amos Jeffries <squid3@treenet.co.nz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Squid HTTP proxy CVE request
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 10/07/2015 8:47 a.m., Reed Black wrote:
> As I read this, issue #1 allows CONNECT requests to proceed that
> shouldn't otherwise. Is unsetting AllowTcpForwarding also
> sufficient for the "Determining if your version is vulnerable"
> section?

Short answer is no.

Lonng answer:

Since the only reference I can find for AllowTcpForwarding is TLS/SSL
related it looks like you are falling into the common misbelief that
HTTP CONNECT messages mean HTTPS (TLS).

CONNECT is a generic instruction for the proxy to setup a TCP tunnel.
Once such a tunnel exists it can be used for any TCP based protocol.
HTTP over TLS is just one usage

So no, the breakage happens at the plain-text HTTP layer below any TLS
that might be used to secure whatever the tunnelled protocol is.

Amos

> 
> On Mon, Jul 6, 2015 at 4:26 AM, Amos Jeffries
> <squid3@treenet.co.nz> wrote:
> 
> Greetings,
> 
> This months release of Squid HTTP proxy, version 3.5.6, contains
> fixes for two security issues.
> 
> 
> Issue #1:
> 
> Due to incorrect handling of peer responses in a hierarchy of 2 or 
> more proxies remote clients (or scripts run on a client) are able
> to gain unrestricted access through a gateway proxy to its backend
> proxy.
> 
> If the two proxies have differing levels of security this could
> lead to authentication bypass or unprivileged access to supposedly
> secure resources.
> 
> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13856
.p
>
> 
atch>
> 
> All Squid up to and including 3.5.5 are vulnerable.
> 
> (when published the advisory for this will be 
> <http://www.squid-cache.org/Advisories/SQUID-2015_2.txt>)
> 
> 
> Issue #2:
> 
> This is somewhat more obscure, and I am seeking clarification
> perhapse more than assignment.
> 
> Squid up to and including 3.5.5 are apparently vulnerable to DoS 
> attack from malicious clients using repeated TLS renegotiation 
> messages. This has not been verified as it also seems to require 
> outdated (0.9.8l and older) OpenSSL libraries.
> 
> <http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13849
.p
>
> 
atch>
> 
> CVE-2009-3555 was mentioned by the submitter, but that was clearly 
> assigned for server-initiated renegotiation. This Squid change is 
> specifically for the client-initiated renegotiation part of the
> TLS protocol flaw.
> 
> There may be some relevant CVE already assigned, although I've
> been unable to find it. Only CVE-2011-1473 which is for the library
> itself and disputed.
> 
> So, is server software being assigned specific CVE (or a shared 
> generic one) for resolving this flaw? Please indicate which CVE
> Squid announcements should mention (if any).
> 
> 
> Thanks, Amos Jeffries Squid Software Foundation
>> 
> 

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJVnz0IAAoJEGvSOzfXE+nLTk8QAIg6hY8UOhuwVYxdEKYm71jd
i28X64kWfthKBtACRjzuzbC/OFDOd9EQjuXg07dmKcMDh8UFfr+C62GELwSqQqfH
uHDD26WfiiSZh3ik4PXd3yRuybioLuiWTvVf+aXWz49ozItuHkMCVe+2LYp7H+0I
7Rykv19MvgVCeI5jb2jGprka7A+AAlBkGRWWISHpNzvLZzE6OEZD/kYwHfo8Litm
tZvTMXIiMZVdEzgXd4IqlqDSRL2+dWdIbrrQ4qd5Q+XIFttdYBMbs1PBYm/zH6Wa
morDPDd178LULqCpW45DscRX+GY0MpLDv3xA6LJRwxjmoOqDOnyQUeSNyKrZ9x0N
qiAP/Doqj97bB0HH5pX/0lbabUIayPmQA/AY1QCYZpuv8DH8snfFT0ySD31vhqyQ
2tgW4PhVcovXBfZ9mRRtnH/E+4NmX1m7lZMn0Re6aPXPQir6dEy+NyoaYd//IL0D
ZHVtAnYuKs2AIuHxJWwfG86Ko/xqYcQot+KzplSBB/N5/qLdHTuHI+mlybFoaaaE
q4HpLIT6K0aBwRdURsnuc85KVQNZNpoFKftK8bz4lWhQdE/mJu5SqVUWkXlYNYUW
l8Pkg5cglcGpz8da2TWy6gVJHBNZIjhSRs4tpoUyL+8z4x6pcpSNzzAKzkzxyPt4
Y5tdS0d1dUzDYEt4HKBC
=6miD
-----END PGP SIGNATURE-----
