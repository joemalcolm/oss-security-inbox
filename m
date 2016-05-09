X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1459" "Monday" "9" "May" "2016" "19:29:09" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160509232909.8E58C52E014@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: kernel information leak vulnerability in Linux sound module" "^Cc:" nil nil "5" "2016050923:29:09" "[oss-security] Re: CVE Request: kernel information leak vulnerability in Linux sound module" (number mark "U       cve-assign@m May  9   37/1459  " thread-indent "\"[oss-security] Re: CVE Request: kernel information leak vulnerability in Linux sound module\"\n") "<CABEk9YyTYLpTE0Q5wtvqdHirJd6-2sdJ6Y2YE_kty+wi3DB4jw@mail.gmail.com>" ("<CABEk9YyTYLpTE0Q5wtvqdHirJd6-2sdJ6Y2YE_kty+wi3DB4jw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32431 invoked by uid 550); 9 May 2016 23:29:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32413 invoked from network); 9 May 2016 23:29:21 -0000
In-Reply-To: <CABEk9YyTYLpTE0Q5wtvqdHirJd6-2sdJ6Y2YE_kty+wi3DB4jw@mail.gmail.com>
Message-Id: <20160509232909.8E58C52E014@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, csong84@gatech.edu, insu@gatech.edu, taesoo@gatech.edu
Date: Mon,  9 May 2016 19:29:09 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: kernel information leak vulnerability in Linux sound module
To: kangjielu@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://comments.gmane.org/gmane.linux.kernel/2214250
> 
> The stack object "tread" has a total size of 32 bytes. Its field
> "event" and "val" both contain 4 bytes padding. These 8 bytes
> padding bytes are sent to user without being initialized.

Use CVE-2016-4569.

This is not yet available at
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/sound/core/timer.c
but may be there later.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXMRzFAAoJEHb/MwWLVhi2mMAP/3G1B/9smkpGJB5/VGfvpifs
Nzkd+Jy6CHSi+Q0A91h1YdTrLwtFQMffVo0keZd8gYarApxSpA8qiRVK1sc3bsZ6
Um9NW+4dVLjUZ+RjQ0RjDMjKWbTHFyzZC8Z8DiY8ZXMzpY4UaylEVP9auSCUXvmq
4p8guXW+6PdoaDarFqTVW/fpSfk2gHFxbkWZ602xUdXTn8ZGkItv25dvtVgp21IP
zOfaZmZG+yPjOPCMEQNm3TcuJ7jFeq/KpsuLmtyY/EOBUNqZpRtJBtEPTMMkxlNZ
BaDuV1SrJsXu7ZDsfdz+Yx+57Wa/gDkOsVnFlJyTR6NOrtJfjwJG+dYZYAA0bg4N
KliqQTCOhGGkPGOB52zRg9UYg+7d/dEqcL2oP6Xuvr74aY1CZepbD+zDMkympXuQ
Wu93c5Hh05g3xOwNj+90s3u8DQ0sDJlfizUXWbStEmBJNwno6y/HjSVJqs/vjZWk
ERyWZd4vkVGbt4rBoTCNdxUi+V1k04xQGM6dF1XUSQd4rhQ0HJKRva10ac90JVSx
pt/KPWxL89MxWLOmHP5VdIHFoQyFre4a4fOzFMovixB0RJsm5/iZ3lAKPc0RKsu6
ZgtaujTVAkMAtFM0tfCybSI++JEsYIMV5Rr9cNkSYSVZYKbn0A+i+mH3luREBJyF
6rS0YTVBB5kAR9DgUc2n
=I4nm
-----END PGP SIGNATURE-----
