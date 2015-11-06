X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3168" "Friday" "6" "November" "2015" "10:37:19" "+0100" "Luca Bruno" "lucab@debian.org" "<4494606.3KQYZIffxk@chimera>" "88" "[oss-security] Review+CVE request: multiple issues in redis EVAL command (lua sandbox)" "^Date:" nil nil "11" "2015110609:37:19" "[oss-security] Review+CVE request: multiple issues in redis EVAL command (lua sandbox)" (number mark "        lucab@debian Nov  6   88/3168  " thread-indent "\"[oss-security] Review+CVE request: multiple issues in redis EVAL command (lua sandbox)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32705 invoked by uid 550); 6 Nov 2015 09:37:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32687 invoked from network); 6 Nov 2015 09:37:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=unstable.it; s=mail;
	t=1446802643; bh=M+8g555gA8dtKFjepcuSr4GXK1yT5q0UKBwcYUDxMkU=;
	h=From:To:Subject:Date:From;
	b=RR2RQR5fxdhfTiJAu186rVJemOtVTqm865sSjj4aIgqdB0LaEVooKRlRmqNyqYspa
	 l9hNYFcC2v9mcooSIrS7VJDQzZqyyx+Zy3Ndo19bZmcBsCt35WhtetW4bn8+79tWtn
	 9zUyzCOUHmWKaHsZfFrpDoEWmwFVVqHQuYv6fpY4=
Message-ID: <4494606.3KQYZIffxk@chimera>
Organization: Debian
User-Agent: KMail/4.14.1 (Linux/3.16.0-4-amd64; KDE/4.14.2; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart4333175.JjCRQjA8Ws"; micalg="pgp-sha1"; protocol="application/pgp-signature"
Date: Fri, 06 Nov 2015 10:37:19 +0100
From: Luca Bruno <lucab@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Review+CVE request: multiple issues in redis EVAL command (lua sandbox)
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--nextPart4333175.JjCRQjA8Ws
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,
after earlier disclosure to (antirez) redis author, and upon agreement with=
 him,
I've just reported via github three issues related to the redis EVAL comman=
d=20
and its LUA sandbox.
Those include:
 * sandbox subverting via global environment manipulation
 * crash via assertion hitting (related to the above issue)
 * integer overflow / stack-based buffer overflow in embedded lua_struct.c

I would like to get some review/feedback on those, and (if deemed worthy)
CVEs assigned.
For some background, [0] was the public part of the discussion and [1] a re=
cent
post by upstream author on redis security (his post came just after private
reporting).
[0] https://www.reddit.com/r/redis/comments/3rby8c/a_few_things_about_redis=
_security/cwnz6qi
[1] http://antirez.com/news/96

For detailed reference, these are the issues reported:

1) Ineffective whitelisting allows for global environment manipulation
   + https://github.com/antirez/redis/issues/2854

   Redis lua sandbox is whitelist-based, and some of the exposed functions
   allow for global environment manipulation. This make easier to bypass pa=
rts
   of the sandbox (eg. the "strict lua" mode) and to cause other internal
   state de-sync.

2) Reliable remote crash via assertion hitting
   + https://github.com/antirez/redis/issues/2853

   Manipulating the lua global environment, it is possible to de-sync lua/r=
edis
   internal state, and reliably trigger a DoS/crash by hitting an assertion.
   Reproducer attached to the bug report.

3) Integer overflow (leading to stack-based buffer overflow) in embedded lu=
a_struct.c
   + https://github.com/antirez/redis/issues/2855

   Input parsing code in lua_struct.c suffers of Integer Overflow and
   int/size_t confusion, allowing for crafted EVAL command to trigger a sta=
ck-based
   buffer overflow with (limited) user-controlled writes.
   Reproducer attached to the bug report.

Ciao, Luca

--=20
Luca Bruno (kaeso)
 Security Engineer
 Rocket Internet SE
 -> GPG: 0xBB1A3A854F3BBEBF


--nextPart4333175.JjCRQjA8Ws
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABAgAGBQJWPHTPAAoJEKmDSiJSB45OYJ4P/3dfAWqyU6sgWe2ExEBtDmTu
wl2uTItc9mMMF36DvDcyVf+nYuRfmLw5vWEUAG5PUymJ//r2jyPr2zOAFsMshOH4
3ty5OsRs0fsDNNUPgQg9+xAfsjWx4Wip5M28Odib4lDhU9FhXo9ocHlnzgO9vfjZ
dkO+PesJNFdjQwgPen6swDYPDt4SIjxR/zA7IefAQoAcP3FjHZryPdlK+50lyer/
U4qACkm5TOziGFTZqaDKRwewBxd0JZPaPiRcmiTk8LfUiI86IUiiWDKUzMgRWwlY
pDWXIJkwgaHWOedok7PZ90tbS4RYG9PARV7mw/31rTG/tNt/BleSG5SMajcotZJS
lz/kNI1XhjYDKAyCQHCet1MGZkkSNTes4+0xiIw/Tgwg6pUYf5jVdci8WdH6nhA+
rqSsbGeRamEOun14iPu+BQLqjp2KjZpWIyp4LFuXLXzHpauPAy8J6dx7j8ewav3h
PGsQVt5HCQSQmMutMiH7NLTAgg+/UbUZj7jtxB4PDFzRUtZRZz5EpiCJydwywSL3
P2gPhTwJZeZuDTQbQhG+MY1Xce6hCFiKgJ5eUVCBD+9ooSOL0q5tlPVHcpgIBk17
reX2Z9BfI4Wxr1BqHnr1KNl8eFOXhqkH4ScAli4qWGGCJI9I0oJ+a1NgFHmRzjTh
QJDsbfBe8pAwpKShcBV5
=5HXL
-----END PGP SIGNATURE-----

--nextPart4333175.JjCRQjA8Ws--

