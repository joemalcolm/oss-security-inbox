X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2299" "Thursday" "18" "August" "2016" "20:18:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160819001841.A0F926DC092@smtpvmsrv1.mitre.org>" "65" "[oss-security] Re: CVE Requests Facebook HHVM" "^Cc:" nil nil "8" "2016081900:18:41" "[oss-security] Re: CVE Requests Facebook HHVM" (number mark "        cve-assign@m Aug 18   65/2299  " thread-indent "\"[oss-security] Re: CVE Requests Facebook HHVM\"\n") "<CABuU+O1eQnw21SVtGAf6YQyqEPpm=f4ntDLT0O9k37w9-fZ-MQ@mail.gmail.com>" ("<CABuU+O1eQnw21SVtGAf6YQyqEPpm=f4ntDLT0O9k37w9-fZ-MQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28161 invoked by uid 550); 19 Aug 2016 00:18:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28143 invoked from network); 19 Aug 2016 00:18:53 -0000
In-Reply-To: <CABuU+O1eQnw21SVtGAf6YQyqEPpm=f4ntDLT0O9k37w9-fZ-MQ@mail.gmail.com>
Message-Id: <20160819001841.A0F926DC092@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 18 Aug 2016 20:18:41 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Requests Facebook HHVM
To: rs@revskills.cz

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> -Fix out of bounds write access in
> mb_detect_encoding, mb_send_mail, mb_detect_order.
> https://github.com/facebook/hhvm/commit/365abe807cab2d60dc9ec307292a06181f77a9c2

Use CVE-2016-6870. The scope of this CVE is all of the incorrect uses
of strndup that were fixed in this commit. The commit message
references t11337047, which possibly is a bug that was discovered much
earlier. However, because we don't know of any earlier public
disclosure of t11337047, there isn't a separate CVE ID for t11337047.


> -Fix buffer overrun due to integer overflow in bcmath
> https://github.com/facebook/hhvm/commit/c00fc9d3003eb06226b58b6a48555f1456ee2475

Use CVE-2016-6871.


> -Fix integer overflow in StringUtil::implode
> https://github.com/facebook/hhvm/commit/2c9a8fcc73a151608634d3e712973d192027c271

Use CVE-2016-6872.


> -Fix self recursion in compact
> https://github.com/facebook/hhvm/commit/e264f04ae825a5d97758130cf8eec99862517e7e

Use CVE-2016-6873.


> -Fix recursion checks in array_*_recursive
> https://github.com/facebook/hhvm/commit/05e706d98f748f609b19d8697e490eaab5007d69

Use CVE-2016-6874.


> -Fix infinite recursion in wddx
> https://github.com/facebook/hhvm/commit/1888810e77b446a79a7674784d5f139fcfa605e2

Use CVE-2016-6875.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtk/uAAoJEHb/MwWLVhi2OFwP/Aig7rJ2rCVEyv+/KwDJBC+a
ufukAbNgsFbzHChTJxntRrWS3PJt7DKkZ4a2wlPzdUd4rQKGFObmMMm4OIWw2xaj
TiBngAelDRJNDNP/ZmkEySj9RGS33UMg+6QnI5pOFI3r7uXIqBau+cjIyq3diqUC
NFlaiFy2TcIb82bYRET3r4SIk8019uaP2rfN5CDLKuNPpYIM3d/Xo0490MwufTHh
QyTiFtFDwsZdtCQz5wFR949Lt+B6rEFdhzYDaqjJr9We6POxvy799/8LUI2UGtwN
P6UiCzS1o/ybx6QCh+Lx7wDNBuT/3t0aeFhWx1FJuFodtF9yiILMxD4BpaARlnva
4Nv/+TNhCmcGGLyE3wCrcAVeCX/QcsAaM9fXYVGy2SuqRmljW7sQIhpkaCIzQCwq
EEGCZMeqPBZ1pMlIJgKmWa0PvKfkv0nDtNhQqNN57hS3YcePE8rShO7+/HYRQaYL
zMe8u6OWVZr432Iwcia1Zjxnmi6ix1g3Ua8gz8oWAGrvw5/6T0gEzRyz+OB79+y+
3OKeE/GDQA/aVRutZciQrrHT30uzkgwtoAQdafur5Cna0cEqRQnclcwFxUfPdpr4
qJJFWH2vmPncge0xx2auUaDv8+7OBOonUvlmEWIfowSdg66D0Qm6EyqN6UNZqm5a
tVSy0zt3nnIATS36SGDd
=tBiw
-----END PGP SIGNATURE-----
