X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2343" "Tuesday" "10" "January" "2017" "22:35:30" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<2a724b72b93347198689962487eb2cfa@imshyb02.MITRE.ORG>" "56" "[oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm" nil nil nil "1" "2017011103:35:30" "[oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm" (number mark "U       cve-assign@m Jan 10   56/2343  " thread-indent "\"[oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm\"\n") "<20170110062713.GB10582@lorien.valinor.li>" ("<20170110062713.GB10582@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24187 invoked by uid 550); 11 Jan 2017 03:35:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24169 invoked from network); 11 Jan 2017 03:35:42 -0000
From: <cve-assign@mitre.org>
To: <carnil@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<cjwatson@chiark.greenend.org.uk>
In-Reply-To: <20170110062713.GB10582@lorien.valinor.li>
Message-ID: <2a724b72b93347198689962487eb2cfa@imshyb02.MITRE.ORG>
Date: Tue, 10 Jan 2017 22:35:30 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: icoutils: exploitable crash in wrestool programm

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> It turns out that this is not enough, so upstream has issued
> 
> http://git.savannah.gnu.org/cgit/icoutils.git/commit/?id=4fbe9222fd79ee31b7ec031b0be070a9a400d1d3
> 
> Could you please assign a further CVE for this follow up fix?

Use CVE-2017-5331.


> Furthermore I would like to ask if the following two commits from upstream,
> can have as well an identifier assigned:
> 
> http://git.savannah.gnu.org/cgit/icoutils.git/commit/?id=1aa9f28f7bcbdfff6a84a15ac8d9a87559b1596a
> http://git.savannah.gnu.org/cgit/icoutils.git/commit/?id=1a108713ac26215c7568353f6e02e727e6d4b24a

Yes, but because these are immediately consecutive commits, the CVE
mapping may seem unusual.

Use CVE-2017-5332 for all of 1aa9f28f7bcbdfff6a84a15ac8d9a87559b1596a
and also the index correction in
1a108713ac26215c7568353f6e02e727e6d4b24a. In other words, the change
from "entries[c]" to "entries[c-skipped]" in
1a108713ac26215c7568353f6e02e727e6d4b24a cannot have a new CVE ID
because the code was never "shipped" with "entries[c]" in use. There
aren't two independent problems related to establishing a maximum
allowable value of the size variable.

Use CVE-2017-5333 for the separate vulnerability fixed by the
introduction of the "size >= sizeof(uint16_t)*2" test in
1a108713ac26215c7568353f6e02e727e6d4b24a.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYdacWAAoJEHb/MwWLVhi2Uh4QAKcBj4W4AS+E9hGkW21JOLU2
LuXjv0EkgogMNeCGP271wW7KBW/QTx47wFkTjqIRImD9zfM0J/mylwRXwRs1sdLV
f+c3TNA1SnTQTHjtDdsK9hx2bwG8Ief9POuyqpjsosFv246+2bkzNtne0IOCRZWi
8VVL44osOA0QIXkYwlyDTO756yfQow3S12OUX+zjirxz+bxmJxJwxniX1xZfKerz
2EhWGrqTlFTW73EazzpjXHv5UxQ2HHOckduLIGNOfObFP2PBDwAVflb7fIT2zLcJ
d/d7R4f2B4wA4kFg9ZYwr1Llofj9Ke8WW/mK38YmeNihsfR/0na0oACNZT9Qjt63
mSDw9+sG5Msn0uVQtXkomMD1VrMmtIfSrknrMsfJQ5yIntWDKqXwAK2xvAkoRYGU
dbX6eYO2P2/S8ZI8PpVBk20np5pSEpMtR6fh8c8JuUGkYL4DcVxjSwYbvVvWvCm2
vUXt67Ez42IAkDGObU7eO/gII3lPdMfnBCw+Qllpn+pW5uOFwl38wtzVnq92FvbM
+n1IDWPnHp8BoXjq3TKf+WvlSmvaj6eCG0vHOH4hTHquLzS2a5gxs/h3Gkn7Fw03
SkUeh1zly8wwTpY1x58N8gmwkPiopXB9BbTtrfFMDNyGhIMwhNe4qrKSoI7ooo58
2KJ16gxRfv2BGepMe9fm
=6LBf
-----END PGP SIGNATURE-----
