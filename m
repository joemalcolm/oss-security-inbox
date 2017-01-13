X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1261" "Thursday" "12" "January" "2017" "21:51:26" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<8a06802e079a484ab1e93eba1be86b9c@imshyb02.MITRE.ORG>" "36" "[oss-security] Re: invalid free in GNU ed before 1.14.1" "^CC:" nil nil "1" "2017011302:51:26" "[oss-security] Re: invalid free in GNU ed before 1.14.1" (number mark "        cve-assign@m Jan 12   36/1261  " thread-indent "\"[oss-security] Re: invalid free in GNU ed before 1.14.1\"\n") "<20170112121405.563ee9ee@pc1>" ("<20170112121405.563ee9ee@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14082 invoked by uid 550); 13 Jan 2017 02:51:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14053 invoked from network); 13 Jan 2017 02:51:37 -0000
In-Reply-To: <20170112121405.563ee9ee@pc1>
Message-ID: <8a06802e079a484ab1e93eba1be86b9c@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
Date: Thu, 12 Jan 2017 21:51:26 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: invalid free in GNU ed before 1.14.1
To: <hanno@hboeck.de>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Reproducer:
> echo -e "H\n?\{" | ed

> regex.c

> https://lists.gnu.org/archive/html/bug-ed/2017-01/msg00000.html

>> AddressSanitizer: attempting free on address which was not malloc()-ed

Use CVE-2017-5357.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYeEBbAAoJEHb/MwWLVhi2hdIP/2rMN3IGuLZtCtyVTrzgrBpp
sl4OhNcEXzUGurEXVVKEnPrfVmxYN5oh9wSStmEVYJihVnSqM+QjnogbcIEAv/HO
YvhnDcED/PiQUf++YftLw3phrRetGxYcnYowIsqLQKYjV7pzmog8KvEb/SesKmb3
tjcyyGRoproc/GHSAsoxR7Ogl0KUHUrlS4f74cUGK+eBj//n5j9vzpsz3IvklrCZ
xkmMShar9OnnIV6ctmHf9wgRUoJGudn3IJflOWa+jkkGaoTBeqFgeD1ik8zgXTFi
NDMILwwUTQ+gt2r8UWHqh3oNekbOMCKTP247KEMsZNIj3yWoqAO30z1vvNAFSDF3
rCmnrizLIRX7eKtpzuLNaoAOV7XNCw5HZrmXnRUMbOyFi/WxK1Ukzk8MyoILr56Z
LED/+N0CNHy9Ah8dDh+m7k0PwDREoPPSC/L+pSqqk2B8OfJzACrilJZb6oygkdpR
ijFgki262csSSoiRMxjRU0YOs+rG0NW/QTPxo2MJpot9DhX3Nx9VRplH43k42H2m
d4dGz6p5VyqxylnIUnRmErd7GhIbsiCc3ANxxuNz3YruNe+lcVtjhTzO3wsO242i
wmajPlqv6uuOgYMDJY9viWJdzERA+kAJHrnpi1fUNDpOsjkH+80MigQ4dSfNBSEn
nLRgu4i8m2hr6YWi29Sm
=m+vX
-----END PGP SIGNATURE-----
