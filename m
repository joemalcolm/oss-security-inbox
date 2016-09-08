X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1941" "Thursday" "8" "September" "2016" "02:53:27" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160908065327.6DEBD6C1B17@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: CVE Request: OpenJPEG Heap Buffer Overflow Issue" nil nil nil "9" "2016090806:53:27" "[oss-security] Re: CVE Request: OpenJPEG Heap Buffer Overflow Issue" (number mark "U       cve-assign@m Sep  8   46/1941  " thread-indent "\"[oss-security] Re: CVE Request: OpenJPEG Heap Buffer Overflow Issue\"\n") "<1F2D4DA31CA62740BFF46830A0E6A4F7066E5805@EXMBX-TJ002.tencent.com>" ("<1F2D4DA31CA62740BFF46830A0E6A4F7066E5805@EXMBX-TJ002.tencent.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32165 invoked by uid 550); 8 Sep 2016 06:53:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32144 invoked from network); 8 Sep 2016 06:53:39 -0000
From: cve-assign@mitre.org
To: winsonliu@tencent.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1F2D4DA31CA62740BFF46830A0E6A4F7066E5805@EXMBX-TJ002.tencent.com>
Message-Id: <20160908065327.6DEBD6C1B17@smtpvmsrv1.mitre.org>
Date: Thu,  8 Sep 2016 02:53:27 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: OpenJPEG Heap Buffer Overflow Issue

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I reported a security issue of OpenJPEG some days ago and it has been
> fixed now. The fix is available at
> https://github.com/uclouvain/openjpeg/commit/e078172b1c3f98d2219c37076b238fb759c751ea
> 
> A Heap Buffer Overflow (Out-of-Bounds Write) issue was found in
> function opj_dwt_interleave_v of dwt.c. This vulnerability allows
> remote attackers to execute arbitrary code on vulnerable installations
> of OpenJPEG.
> 
> AddressSanitizer: heap-buffer-overflow
> WRITE of size 4

e078172b1c3f98d2219c37076b238fb759c751ea modifies tcd.c not dwt.c - is this
still the correct commit?

Also, is this the same vulnerability as the
https://pdfium.googlesource.com/pdfium/+/b6befb2ed2485a3805cddea86dc7574510178ea9
(aka Chromium bug 632622) issue that was already assigned CVE-2016-5157 in the
https://googlechromereleases.blogspot.com/2016/08/stable-channel-update-for-desktop_31.html
post?

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX0QmYAAoJEHb/MwWLVhi2JuIQAInY8Bed/W9wZwgmO4peepl7
lOJptN9utdMwCdYEug6NzCFjpcUslSmrBQcNdXEGMoPw5rku/Hw73sHNbhdfM71I
TDU2OEwzSNQeo+4m/3rXMlYyHwOqHMp3owHQnl5JWJRcz6hhmI/JpokWxKncthtb
rpywwao89VJZJf5GLF7RQFXvHwlREP+D3XYrW0cbqEfOrUAQ7oxK5OaFCa30NWrh
ISJ4iDalfTeWr7x98Bb3X6v40dL7bkUtuWHnqFN+LwuBJL2MlJ74XmsdIDrSXGOf
grrpU1sMGZ+yJhbc+4n6JcTxXI6/AWOaKqn/pkCG8UkNL/LxzuaGmIYguGecYh7V
2tc5e7IZ4IzCYNaRUKKLAtlfENMbOn8IqL0zFWXRoSzw7YcSw24s1A0hzEBiPonS
cPWGhMYsu4bCmJmZZenuKNIKx/CuOZq+YgyFpXjowUxFGpZwOk9eVPnpmK8CRl7z
kGaS33l9yElstG1gsPeGDxZYHtG09z/T/VrJWIHNieTMUOEO0LZf8+xG5bfXWC1A
y5S6GCFOSM+8QrvPHgua4l8h7uAxbCVKlLqahOVhID83sCKKTWyxLGa+1FtPIsRH
zTmEMeS0Q6JytXc7f2DitI9t/hEEh877xQLRWactOBmP19XdC+rCLcBZcoksK8UB
2osVa1EkAYD9ZVrCOo0i
=CVgG
-----END PGP SIGNATURE-----
