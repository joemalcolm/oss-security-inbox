X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1750" "Thursday" "24" "September" "2015" "00:16:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150924041621.914CA8BC02B@smtpvmsrv1.mitre.org>" "50" "[oss-security] Re: CVE Request: Maliciously crafted text files in IPython/Jupyter editor" nil nil nil "9" "2015092404:16:21" "[oss-security] Re: CVE Request: Maliciously crafted text files in IPython/Jupyter editor" (number mark "        cve-assign@m Sep 24   50/1750  " thread-indent "\"[oss-security] Re: CVE Request: Maliciously crafted text files in IPython/Jupyter editor\"\n") "<CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>" ("<CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5940 invoked by uid 550); 24 Sep 2015 04:16:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5916 invoked from network); 24 Sep 2015 04:16:33 -0000
In-Reply-To: <CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>
Message-Id: <20150924041621.914CA8BC02B@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@ipython.org, rgbkrk@gmail.com, jkamens@quantopian.com, ssanderson@quantopian.com
Date: Thu, 24 Sep 2015 00:16:21 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Maliciously crafted text files in IPython/Jupyter editor
To: benjaminrk@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Software name: IPython notebook / Jupyter notebook
> Type of vulnerability: Maliciously forged file
> Attack outcome: Possible remote execution

> Vulnerability: A maliciously forged file opened for editing can execute
> javascript, specifically by being redirected to /files/ due to a failure to
> treat the file as plain text.

> Affected versions:
> 
> - IPython 3.0 <= version <= 3.2.1
> - notebook 4.0 <= 4.0.4
> 
> URI with issues:
> 
> - GET /edit/**

> Patches:
> 
> - IPython 3.x: https://github.com/ipython/ipython/commit/0a8096adf165e2465550bd5893d7e352544e5967
> 
> - Jupyter 4.0.x: https://github.com/jupyter/notebook/commit/9e63dd89b603dfbe3a7e774d8a962ee0fa30c0b5

Use CVE-2015-7337.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWA3g8AAoJEL54rhJi8gl5nPYQALND4562BMNgf8AljcDNH/t7
vslyEpM0547uN1Nrss+wTkXgAbkVDtggguPoE1Ok/I6PQP2D586Gp+V8TnKPiMBq
u7i34j++T1E0eWtK/vV40Bx3oPNKdfO3pv54wJDvgToBIUc5f5yBffueejQtmGHS
WNIhDSCRu0YNzV1Qw1hydLZiRu22JTP2PRCMAI+Go15v8iXq0dBtDE/c7hjyKkIK
hCc3pCT+JQnOtjOENMa1A1V/pdT3y87FB8/wWYzCoBYzaYnJy1dEa+ZHDjRWoQSJ
Y0kDRT/NzxMrXvnRNxgoaTITdk1vNooTXv3vn8U7omVIBf2AUjM6jXAZ1Kdve4Cz
3D9eXibuBKCcgu3RSKhvVJrX8LcewVlJPUudqFjRA4btBljEI61K81t389Mrmb7o
saxXyaeUc0qaJ4yaXf9Zf5B7XTMcUU7dZtTOMZouDYL5l+od2sgxNzcerPC9tJg5
L9mIDaKKq0JraiExeRPJ623dh1iYPf1e3MediffPXJXA2fl6G8rZQU2IMUeXW14O
/tBZeKxExdpRM/D/HfMb8bw9kryzWlIxPINHl9UbM/4V3+kg7boDwPpOaFXS+94P
epoZxo7DbjesPCZ0MfDsPcw+ap2g19QCU5X9ey8Dj49Pc3TrqTybCMwEM7z74fOI
Tgy1TA0PSNfSgpJ2EuNQ
=KkUJ
-----END PGP SIGNATURE-----
