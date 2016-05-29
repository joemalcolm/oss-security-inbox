X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1590" "Sunday" "29" "May" "2016" "13:45:22" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160529174522.13B2B33202D@smtpvbsrv1.mitre.org>" "42" "[oss-security] Re: CVE request: Mplayer/Mencoder read out-of-bounds parsing a mp3 file" nil nil nil "5" "2016052917:45:22" "[oss-security] Re: CVE request: Mplayer/Mencoder read out-of-bounds parsing a mp3 file" (number mark "U       cve-assign@m May 29   42/1590  " thread-indent "\"[oss-security] Re: CVE request: Mplayer/Mencoder read out-of-bounds parsing a mp3 file\"\n") "<CACn5sdR5YjVY3TqJchTxhUQJQqCwJfjtZD6hzRE0AQiOYMmOXQ@mail.gmail.com>" ("<CACn5sdR5YjVY3TqJchTxhUQJQqCwJfjtZD6hzRE0AQiOYMmOXQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5633 invoked by uid 550); 29 May 2016 17:45:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5606 invoked from network); 29 May 2016 17:45:34 -0000
From: cve-assign@mitre.org
To: gustavo.grieco@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CACn5sdR5YjVY3TqJchTxhUQJQqCwJfjtZD6hzRE0AQiOYMmOXQ@mail.gmail.com>
Message-Id: <20160529174522.13B2B33202D@smtpvbsrv1.mitre.org>
Date: Sun, 29 May 2016 13:45:22 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Mplayer/Mencoder read out-of-bounds parsing a mp3 file

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A read out-of-bounds parsing a mp3 file was found in the last revision
> of mplayer. Technical details and a reproducer are available here:
> 
> https://trac.mplayerhq.hu/ticket/2298

>> Component:  libavcodec
>> libavformat version 57.34.103 (internal)
>> 
>> AddressSanitizer: heap-buffer-overflow
>> READ of size 4
>> 
>> in avcodec_decode_audio4

Use CVE-2016-5115 for this libavcodec issue. We did not check whether
this affects any versions of FFmpeg. libavformat version 57.34.103 is
more recent than in FFmpeg 3.0.2, for example.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXSyoVAAoJEHb/MwWLVhi2sOkP/3FeYYp5pcAVPHm4Lx3qM9Rr
LZYC8ph+Cn8HSTxMhOO+jtTe7DdlXkMvHWMRDGAreaw/RKTT4OjY+iF3u2zdpd6n
Txw31NSKyToof4jVWTojxibkjUa3mAXdNYo9hIW9DL5YBtIz0mYLxoRu5gnNg+V4
pMN/aSKVfiB9W4W36tpo6al8fyEOHakYgqetbkOpV9O40j1nfO9qywGrLA+tWg6Z
b+aLByyLRTYbCoTuuEKYhP/wE78KnVLZRxzoMPSGL0rCFDeQYYBR9ha5bW3n3Dzo
zPag7BqUafbIDOfnhPmbh+FkGqySuHTJxqfZycPH4RymDMzLW0Wb5wtuI+xc13Nx
c7SpdLhX1fQcXBwPUmv0qdhbDMPpGgoovRPvKxCDH2sXR7+ZCtP7QUv2wO7gqe3w
mMqJsORLguf81m4r95QC/Nm0np6GVwDEkNCaQkJft8p3CbACib2NoY3i2OSBEqKB
RO5n4Wq6TIeMpoNTQhTxN2Zhni/ZQ+88Uo2qQP5YPH2griPAUADXopypv7hhCSsx
UZpiLvdRJrMevXMU1D8llqvTfOtYzVoJ7IWlDbg+vtJhQEwyMhT0HYjamkLVusm9
TnfIshGwWKq3jtre3xqDez24S/N9zvTA9FaFQtJb+we95n5cSrZJb17RhOii52M+
tZGsRx2O5Wsp/74wvnli
=nzCw
-----END PGP SIGNATURE-----
