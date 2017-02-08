X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1457" "Tuesday" "7" "February" "2017" "20:19:19" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<3cd6d83d8565413891ad2de83f725a6f@imshyb02.MITRE.ORG>" "34" "[oss-security] Re: CVE Request - Code execution vulnerability in GNU/bash v4.4 autocompletion" nil nil nil "2" "2017020801:19:19" "[oss-security] Re: CVE Request - Code execution vulnerability in GNU/bash v4.4 autocompletion" (number mark "U       cve-assign@m Feb  7   34/1457  " thread-indent "\"[oss-security] Re: CVE Request - Code execution vulnerability in GNU/bash v4.4 autocompletion\"\n") "<38c661a9-5631-2bc0-a4eb-7821733d0f24@cispa.saarland>" ("<38c661a9-5631-2bc0-a4eb-7821733d0f24@cispa.saarland>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21687 invoked by uid 550); 8 Feb 2017 01:19:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21669 invoked from network); 8 Feb 2017 01:19:31 -0000
From: <cve-assign@mitre.org>
To: <jens.heyens@cispa.saarland>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<stock@cs.uni-saarland.de>
In-Reply-To: <38c661a9-5631-2bc0-a4eb-7821733d0f24@cispa.saarland>
Message-ID: <3cd6d83d8565413891ad2de83f725a6f@imshyb02.MITRE.ORG>
Date: Tue, 7 Feb 2017 20:19:19 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request - Code execution vulnerability in GNU/bash v4.4 autocompletion

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/jheyens/bash_completion_vuln/raw/master/2017-01-17.bash_completion_report.pdf
> http://git.savannah.gnu.org/cgit/bash.git/commit/?id=4f747edc625815f449048579f6e65869914dd715

Use CVE-2017-5932.

The scope of this CVE is the single vulnerability resulting from the
combination of the "Double dequoting of dirname" issue and the "Flags
not being forwarded in expand_word_internal" issue.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYmm+6AAoJEHb/MwWLVhi2m+gP/A9e0TfQWk4soMJkiZCQAOBt
yGI3xQtDUWGqMBvKTajCNufdRRU3mTjWmf5RDZNmF6HRbinwqiMSxUDpWC/+Rofk
CD/8u0VHRVuZ1DLiN1mbhjLlbZxWxzCX4uJgU5fabYTXxvbnIK36mxNS+MSa9dr/
zUBMs7eOM19wcNcbVr53sURjEqroEKB7qX+JxE1kSvh8BxDi/mLDM5AAQk8cOXPh
qK+cPhejya1QMq16iozxZsOdd7gsiPE63TGBYjXeoN40ypmfNDduPe474gnIyChc
kfKpjWT9+8SwyC8MPmteEJkdgTtJymmoxh7u9Z13KPNjZrafvbVH1HokwwGRkzGo
J5rg6wWE0JOF72t3f+v3abZYaoETuGjeSWKU/v0qTdQQnFYOVN7s6VvDTd/Uc0lD
0a/ZZl4QvQ/gl5gczAU8rElVTZcQ/DnEwGy2vkbs9vu1/Baxf+v7Hs6r2oaGLbgN
HixcoyE9P0ftuqXqEjnS6juXGijl7Yrg/lbWKidbuL+G+u09XY6qzI03+2MPNScA
xtDxwQHXY7htROuvWuWW1kSFwAL28hvdA4b0Qi3s7OfgW+X6obaVR5JTeAvPNFQN
2LU3ZS5Qi5yjBX9iB1/nuybLCxN/5JCBQgvAij6dV1PAD2IiO4Kz3wC8uPV5D+eb
NuHugptNphEzgZaSOI5u
=v+0f
-----END PGP SIGNATURE-----
