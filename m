X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4122" "Tuesday" "3" "January" "2017" "13:06:42" "+0100" "Peter Wu" "peter@lekensteyn.nl" "<20170103120642.GA7083@al>" "92" "[oss-security] CVE Request: pcsc-lite use-after-free and double-free" nil nil nil "1" "2017010312:06:42" "[oss-security] CVE Request: pcsc-lite use-after-free and double-free" (number mark "U       peter@lekens Jan  3   92/4122  " thread-indent "\"[oss-security] CVE Request: pcsc-lite use-after-free and double-free\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8035 invoked by uid 550); 3 Jan 2017 13:34:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26057 invoked from network); 3 Jan 2017 12:06:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lekensteyn.nl; s=s2048-2015-q1;
	h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date; bh=+VMHcnVJNVXWxcCDfcv7IsYEtdckq8PxdKqLQz1uGvQ=;
	b=BEVeehdyJOrNWFx0I+g/UGUKG5rYsSGSHC4Ta/91OAsD9NEeZ72XwYnVpdMwUmHRQeI79aZW4F4iArkqPjGBdL3Gs2bUcDGQbF/PWSXkGrIXdRha4HBk/fYl2RDj1yTatb/nbqeDK0s8rLOaTxBNlY6RWqe7xMLi/QnGlm9MXN7JCKa6zNb6qIjKphz3Gowqt9mvQ/bIs3Pu/dfueYZhh4tAcXwMqQ9sZU5pcVIPjGDtyes1/SzXeD2uXcMR26JztQ82jiILcB3HJFwcFffU7xHXq1zC6hbRxoYSJLRL48Yy14GSc28I/g8QJ3ispn3NGeCJkOcpZOOlNtrxcwFr9A==;
Date: Tue, 3 Jan 2017 13:06:42 +0100
From: Peter Wu <peter@lekensteyn.nl>
To: oss-security@lists.openwall.com
Cc: Ludovic Rousseau <ludovic.rousseau@free.fr>
Message-ID: <20170103120642.GA7083@al>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: [oss-security] CVE Request: pcsc-lite use-after-free and double-free

--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Vulnerability type:
CWE-415, CWE-416

Vendor:
Muscle

Affected Versions:
PCSC-Lite >= 1.6.0, < 1.8.20

Description:
PCSC-Lite[1] is a middleware to access a smart card using the SCard API (PC/SC).
It can be used with GnuPG, OpenSC and others for hardware like the Nitrokey and
Yubikey. These software use a client library (libpcsclite) which communicate
with a daemon (pcscd) that actually accesses the hardware.

The SCardReleaseContext function normally releases resources associated with the
given handle (including "cardsList") and clients should cease using this handle.
A malicious client can however make the daemon invoke SCardReleaseContext and
continue issuing other commands that use "cardsList", resulting in a
use-after-free.  When SCardReleaseContext is invoked multiple times, it
additionally results in a double-free of "cardsList".

The issue allows a local attacker to cause a Denial of Service, but can
potentially result in Privilege Escalation since the daemon is running as root
while any local user can connect to the Unix socket.

Fixed by patch "SCardReleaseContext: prevent use-after-free of cardsList"[2]
which is released with hpcsc-lite 1.8.20 on 30 December 2016[3].

Credit:
This issue was discovered and fixed by Peter Wu (peter@lekensteyn.nl).

Additional information:
The issue is confirmed for:
Arch Linux (1.8.18-1)
CentOS 7 (1.8.8-6.el7)
Debian Jessie (1.8.13-1)
using the PoC from https://lekensteyn.nl/files/pcscd-doublefree-poc.py

    $ python pcscd-doublefree-poc.py run/pcscd.comm
    [*] Sending SCARD_RELEASE_CONTEXT
    [*] Request succeeded, possible vulnerable
    [*] Sending SCARD_RELEASE_CONTEXT (2)
    [+] Daemon crashed, it is vulnerable!

    $ sbin/pcscd --foreground --debug
    ...
    00000167 winscard_svc.c:337:ContextThread() Authorized PC/SC client
    00000011 winscard_svc.c:341:ContextThread() Thread is started: dwClientID=6, threadContext @0x610000007f40
    00000009 winscard_svc.c:359:ContextThread() Received command: RELEASE_CONTEXT from client 6
    00000008 winscard.c:226:SCardReleaseContext() Releasing Context: 0x0
    00000008 winscard_svc.c:470:ContextThread() RELEASE_CONTEXT rv=0x0 for client 6
    00000088 winscard_svc.c:359:ContextThread() Received command: RELEASE_CONTEXT from client 6
    00000012 winscard.c:226:SCardReleaseContext() Releasing Context: 0x0
    =================================================================
    ==11540==ERROR: AddressSanitizer: heap-use-after-free on address 0x60300000d728 at pc 0x000000410490 bp 0x7f34ab4dd920 sp 0x7f34ab4dd910
    READ of size 8 at 0x60300000d728 thread T2
        #0 0x41048f in list_clear src/simclist.c:634
        #1 0x4108ba in list_destroy src/simclist.c:303
        #2 0x41843e in MSGRemoveContext src/winscard_svc.c:884
        #3 0x4194f3 in ContextThread src/winscard_svc.c:468
        ...

 [1]: https://pcsclite.alioth.debian.org/
 [2]: https://anonscm.debian.org/cgit/pcsclite/PCSC.git/commit/?id=697fe05967af7ea215bcd5d5774be587780c9e22
 [3]: http://lists.alioth.debian.org/pipermail/pcsclite-muscle/Week-of-Mon-20161226/000779.html

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEExM9kSv4OEG3ICTvzTaMIHg295zcFAlhrk8oACgkQTaMIHg29
5zdCjxAAqDP5BM9vMkgOj11NJBRp5QU7R8UTDM7hpEEVZExb4O03DC1OWZO0IOwS
NHqxqpn8x2sslGhKuYGTAsDMHFdJBjPQou8n2iP0sXt8PLZdfDLk85c+wEACenKZ
ERSY1efj1GmRx3urOlel/fq0jK+bTvg5F+Z2zx0NUxAqbYwnYeWIlhiUNXE7gN59
oizqVs4am4Vb499oORErLc1wdh65sGB8H8BxYVIxLukZD0ZIl3IyHaGoYkA1AFa9
7UCWzFDZJS1v+9lZFapsSoRduBKOjC5dBNo6qwoJd/IK6ujmvjoxL2mxNUPg5bN9
66ejbotsRcBuQxCTDAo3Swc03yurPhQE/nYgdOCIMvXvjEvRlkTMlgtQUPOSUihI
mstUstqA1kOt38o6uQB6GtuPJCGR76nB7WOJ7g1zEpQW3CBorRYsX79/2L+MG+90
68vfx28H38xMewtHtYBcZNYDjlYBl5d3gL9XcuX1PPh7Vc47ORwedvHe4a5irDuz
XoJLc9df0+M0xVxPqiWyMr+3FKKMJZSIS6dynTHjsUeGKqlhaC9dV8DHj93RaRj2
3gcjjvc/7CiDUd5/MS7uUL2EtmiOTkE922ErSDp3eVzyHDjoM6MMp1+5WqWyMxd3
1P+Q7l7oisF3SH7RnE0FwGvUAOtWup+UdU5C7KqID8hiA/mWqkk=
=0/5b
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--
