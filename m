X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1315" "Monday" "26" "September" "2016" "01:45:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160926054540.231936DCCB9@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: ffmpeg afl bugs" "^Cc:" nil nil "9" "2016092605:45:40" "[oss-security] Re: ffmpeg afl bugs" (number mark "        cve-assign@m Sep 26   35/1315  " thread-indent "\"[oss-security] Re: ffmpeg afl bugs\"\n") "<trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1546 invoked by uid 550); 26 Sep 2016 05:45:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1520 invoked from network); 26 Sep 2016 05:45:51 -0000
In-Reply-To: <trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>
Message-Id: <20160926054540.231936DCCB9@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon, 26 Sep 2016 01:45:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: ffmpeg afl bugs
To: cookieopfer@gmx.net

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> ffmpeg version N-81723-g6d9a46e Copyright (c) 2000-2016 the FFmpeg developers
> 
> /usr/share/doc/afl/vuln_samples/ffmpeg-h264-call-stack-overflow.mp4
> 
> Input #0, mov,mp4,m4a,3gp,3g2,mj2
> 
> overread end of atom 'stsd' by 4294967134 bytes

Use CVE-2016-7554.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX6LUTAAoJEHb/MwWLVhi2MggP/1SfPxFGyp8gOPQyeKFxcSJl
g3T8gAdp9OMOj3Qru+dH+qwBIYKomr0T+k6w5qv/ihaihqI2tuDV/lytFJ29asee
7yuc4TFnQRFHShXqnAnjzgDHSb86pK5QfwQQAAyIp8U3oCkmuLe22JcionfW1gQy
hDmz/6jz7/k5MzYyTAV3h0jq3y9QQLLnn2IOofUVm915kaa2JiLoRe3U2P+OCaN4
o1rMsYxlqKgxQg4B5+IyXYTlczeqEioaYeW3lvfploX2ji+scfdN+5Q5y802Hc8b
HB5Ia3+L1bUeHVbNUTDvXzaTUPl+L68eVvsj4E0FJXcbwdG+07hQBcDOwXo3OhoR
6707noYWX6v6lNlYObCJRTbrUYbj5YOHDdiHg6spVyehlBQPEnCtZzxXp7GAM+SE
xOsyArQYWO4f8N12dHyVNvc8sywF5mU0LNwELE2eROjmHURf/i9tVzr5CWzQUaGN
JPSLLpfQR+ex6D91+gCn+RcNqVXfxOpccjnUe+t9xQhnDPbdkZ+FhV1gP6WKPfwG
yaMvAoWkZkDE3SlikQaF66giuXPltQX/pMbyRi6SCFD+0VLjbDQU68C0S6nYDhND
G55sKC8WYZfR2aCiJ/d8ZhvtTaYk6HOfNG/l/dJrM1nXMGxnHPuLwXXO4DAIHc8Y
yi+xnI3SJRzi3a00kOI0
=Tla5
-----END PGP SIGNATURE-----
