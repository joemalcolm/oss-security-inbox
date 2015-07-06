X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2618" "Monday" "6" "July" "2015" "23:26:43" "+1200" "Amos Jeffries" "squid3@treenet.co.nz" "<559A65F3.80103@treenet.co.nz>" "75" "[oss-security] Squid HTTP proxy CVE request" nil nil nil "7" "2015070611:26:43" "[oss-security] Squid HTTP proxy CVE request" (number mark "U       squid3@treen Jul  6   75/2618  " thread-indent "\"[oss-security] Squid HTTP proxy CVE request\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13941 invoked by uid 550); 6 Jul 2015 11:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13916 invoked from network); 6 Jul 2015 11:27:05 -0000
Message-ID: <559A65F3.80103@treenet.co.nz>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 06 Jul 2015 23:26:43 +1200
From: Amos Jeffries <squid3@treenet.co.nz>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Squid HTTP proxy CVE request
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Greetings,

This months release of Squid HTTP proxy, version 3.5.6, contains fixes
for two security issues.


Issue #1:

Due to incorrect handling of peer responses in a hierarchy of 2 or
more proxies remote clients (or scripts run on a client) are able to
gain unrestricted access through a gateway proxy to its backend proxy.

If the two proxies have differing levels of security this could lead
to authentication bypass or unprivileged access to supposedly secure
resources.

<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13856.p
atch>

All Squid up to and including 3.5.5 are vulnerable.

(when published the advisory for this will be
<http://www.squid-cache.org/Advisories/SQUID-2015_2.txt>)


Issue #2:

This is somewhat more obscure, and I am seeking clarification perhapse
more than assignment.

Squid up to and including 3.5.5 are apparently vulnerable to DoS
attack from malicious clients using repeated TLS renegotiation
messages. This has not been verified as it also seems to require
outdated (0.9.8l and older) OpenSSL libraries.

<http://www.squid-cache.org/Versions/v3/3.5/changesets/squid-3.5-13849.p
atch>

CVE-2009-3555 was mentioned by the submitter, but that was clearly
assigned for server-initiated renegotiation. This Squid change is
specifically for the client-initiated renegotiation part of the TLS
protocol flaw.

There may be some relevant CVE already assigned, although I've been
unable to find it. Only CVE-2011-1473 which is for the library itself
and disputed.

So, is server software being assigned specific CVE (or a shared
generic one) for resolving this flaw? Please indicate which CVE Squid
announcements should mention (if any).


Thanks,
Amos Jeffries
Squid Software Foundation
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQIcBAEBAgAGBQJVmmXyAAoJEGvSOzfXE+nLLjMP/2qTXQODFIdE9zfL3ZQ8MRhZ
Edh4PNFxSkhvVyYn8kU6ZMg2jx7hiXXEfiP/Ilvo3XcY/eDWf64g+POgLX20X5jV
o/StXDKHvcZUargImliJb2W1nalIGw1iqBERs6qwfRJhK67MHPgGWwxHu/SFEWsM
Kk2GRlGlIM4H8g7FnsDvwAnAYweGm3+iSqZlQEaX5JOqem2M8qukGziQsc28yU4E
SU5YIwNltW563pQYD+UTerz5i24Dt086in1AvSEFiLfqAMq4o3AdcFK73RhBdKyY
yJJ0rKaz3o18vtru3I7soms8dmUI0mLxX6imPrBHOeSInjGbbRvPIU3g2WYpcdwF
o6/7Xbg8HB+9QORXINqzC02aBiIJf8blleBnUKJQt1JMhQkb8vXAW4wcHoKfKTPo
w9gyhwHgbBCYk0gSQ5CuIlaqPUEPAST0DiV0OIDHltjeLSq7vsq5zij9OKLxQdDJ
nemVr03jrPHELCvV6eKXT/UJj6X+vfpCJk+giQq6rXC8ikhTvpID1aU/xOGxNJGq
ig9ThwADl6RE2/cgjh7bnz1IPcG679V85uMbwPVTXU38XmhTyWQKjDdt5DuAdd6a
RUsheekgzf5Lhhcv7/wht/ecNxDbBKvW8o8fvMinn5j9c0GNSNXtGbp8QYlySFS9
ycdNaJLFdIm8LnV5rNSW
=COJ4
-----END PGP SIGNATURE-----
