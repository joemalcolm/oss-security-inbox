X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10491" "Sunday" "7" "August" "2016" "17:12:15" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160807151215.joaj3nopmi67ghlj@eldamar.local>" "248" "[oss-security] CVE Requests: Various ImageMagick issues (as reported in the Debian BTS)" nil nil nil "8" "2016080715:12:15" "[oss-security] CVE Requests: Various ImageMagick issues (as reported in the Debian BTS)" (number mark "U       carnil@debia Aug  7  248/10491 " thread-indent "\"[oss-security] CVE Requests: Various ImageMagick issues (as reported in the Debian BTS)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5557 invoked by uid 550); 7 Aug 2016 15:12:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5533 invoked from network); 7 Aug 2016 15:12:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1p7CenJiGNCQVOaNOPER0aWkz80dksryywawwr9JAbE=;
        b=sK/BA3MeLnw8NfrhpMTptCgvPKJqo/ztQ99KvCxyxpoq0eZsD+VD7Kxeyn8vpo7ieW
         HaBaRqvlYjN8LDjCMXonyACxTvs8bcFbd/GvKdxARl1Qyvpz8tnLhQ76f4Wlp/Fa1rS5
         u5a2QaCasQ/qicCa4osxrScBCXSXgPIujnu7OdfKf+vdhgz0EhJa/preBOD7jUVpKMOD
         /T/5W29SIGJDdLJAUJaxCP+TOL3k4SCzPB/qmaM6qDNZfi6Pz8umsUXgrjcNUkx+BiPi
         Xn7TURyozz4Da/GYlqadyY+1f5/D+TEzzjQRH9QX0DQiToXE0tIwybxxfBIxIfscrtqU
         oDdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=1p7CenJiGNCQVOaNOPER0aWkz80dksryywawwr9JAbE=;
        b=hJ/wFJUTjhoa/T3mvQKCjIvZfe1nC9TWE4mkfPhEDSCAQg1o/wRvwpPcZxBQIQ7G/k
         T+9i+6KPtUP9TL2lqp3fEjpxITlftEUtTFdIWH3SqgwlyvV3BaGqLdKl8E9fbSBd2JvQ
         M17CKlfvR1Qz9lua4YnKFzLchZdPyNaTlpLZBR37CAVypZWt5e+TCO56naOeXEDNnRe5
         Pq2B9an34CGLd3KLXdUD/cJ/1cdHAa0xpkWR1hjxKfmai1Ca+obYzPiTFRPHwhFqaRlJ
         DaSQXSjQ6Q118AXInUZU+z2GwY3ssCrLKDznL/xvqaZyM79cjs4SL80tBQlZvYaz+VLF
         q/wQ==
X-Gm-Message-State: AEkoouvtbrpM+Tow7AZdKG3NwW05g0xFEMu+eanOletQTay4EoRI0osxBvZJYsdwGEnJlQ==
X-Received: by 10.28.211.10 with SMTP id k10mr11491233wmg.16.1470582737249;
        Sun, 07 Aug 2016 08:12:17 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 7 Aug 2016 17:12:15 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>,
	CVE Assignments MITRE <cve-assign@mitre.org>
Cc: Bastien ROUCARIES <roucaries.bastien@gmail.com>,
	team@security.debian.org, luciano@debian.org
Message-ID: <20160807151215.joaj3nopmi67ghlj@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (2016-07-23)
Subject: [oss-security] CVE Requests: Various ImageMagick issues (as reported in the Debian
 BTS)

Hi

Bastien Roucaries (who is as well one of the Debian maintainers for
imagemagick), reported recently bugs (of which part are split up from
the original https://bugs.debian.org/823750) into single ones for
trackability.

I tried to keep the format, in first referenging the bug in the Debian
bugtracker, and then giving additional references which were provided
by Bastien in the corresponding bug.

Could you assing CVEs for those item, to identify the issues across
distributions as well?

off-by-one error leading to segfault:
	Debian Bug: https://bugs.debian.org/832455
	Additional references:
	----------------------
	https://github.com/ImageMagick/ImageMagick/commit/a54fe0e8600eaf3dc6fe717d3c0398001507f723

out-of-bounds read in coders/psd.c:
	Debian Bug: https://bugs.debian.org/832457
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1533442
	https://github.com/ImageMagick/ImageMagick/issues/83
	https://github.com/ImageMagick/ImageMagick/commit/198fffab4daf8aea88badd9c629350e5b26ec32f
	https://github.com/ImageMagick/ImageMagick/commit/6f1879d498bcc5cce12fe0c5decb8dbc0f608e5d
	https://github.com/ImageMagick/ImageMagick/commit/e14fd0a2801f73bdc123baf4fbab97dec55919eb
	https://github.com/ImageMagick/ImageMagick/commit/280215b9936d145dd5ee91403738ccce1333cab1

rle file handling for corrupted file:
	Debian Bug: https://bugs.debian.org/832461
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1533445
	https://github.com/ImageMagick/ImageMagick/issues/82
	https://github.com/ImageMagick/ImageMagick/commit/2ad6d33493750a28a5a655d319a8e0b16c392de1

buffer overflow in sun file handling:
	Debian Bug: https://bugs.debian.org/832464
	Additional references:
	----------------------
	http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=26838
	https://github.com/ImageMagick/ImageMagick/commit/78f82d9d1c2944725a279acd573a22168dc6e22a
	https://github.com/ImageMagick/ImageMagick/commit/bd96074b254c6607a0f7731e59f923ad19d5a46d
	https://github.com/ImageMagick/ImageMagick/commit/450bd716ed3b9186dd10f9e60f630a3d9eeea2a4

potential DOS in sun file handling due to malformed files:
	Debian Bug: https://bugs.debian.org/832465
	Additional references:
	----------------------
	http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=26857
	https://github.com/ImageMagick/ImageMagick/commit/b8f17d08b7418204bf8a05a5c24e87b2fc395b75
	https://github.com/ImageMagick/ImageMagick/commit/1aa0c6dab6dcef4d9bc3571866ae1c1ddbec7d8f
	https://github.com/ImageMagick/ImageMagick/commit/6b4aff0f117b978502ee5bcd6e753c17aec5a961
	https://github.com/ImageMagick/ImageMagick/commit/8ea44b48a182dd46d018f4b4f09a5e2ee9638105

out of bunds problem in rle, pict, viff and sun files:
	Debian Bug: https://bugs.debian.org/832467
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1533452
	https://github.com/ImageMagick/ImageMagick/issues/77
	https://bugs.launchpad.net/bugs/1533449
	https://github.com/ImageMagick/ImageMagick/issues/80
	https://bugs.launchpad.net/bugs/1533447
	https://github.com/ImageMagick/ImageMagick/issues/81
	https://bugs.launchpad.net/bugs/1533445
	https://github.com/ImageMagick/ImageMagick/issues/82

heap overflow in hdr file handling:
	Debian Bug: https://bugs.debian.org/832469
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1537213
	https://github.com/ImageMagick/ImageMagick/issues/90
	https://github.com/ImageMagick/ImageMagick/commit/14e606db148d6ebcaae20f1e1d6d71903ca4a556

heap buffer overflow in psd file handling:
	Debian Bug: https://bugs.debian.org/832474
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1537418
	https://github.com/ImageMagick/ImageMagick/issues/92
	https://github.com/ImageMagick/ImageMagick/commit/30eec879c8b446b0ea9a3bb0da1a441cc8482bc4

out of bound access for malformed psd file:
	Debian Bug: https://bugs.debian.org/832475
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1537419
	https://github.com/ImageMagick/ImageMagick/issues/93
	https://github.com/ImageMagick/ImageMagick/commit/4b1b9c0522628887195bad3a6723f7000b0c9a58

meta file out of bound access:
	Debian Bug: https://bugs.debian.org/832478
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1537420
	https://github.com/ImageMagick/ImageMagick/issues/96
	https://github.com/ImageMagick/ImageMagick/commit/f8c318d462270b03e77f082e2a3a32867cacd3c6
	https://github.com/ImageMagick/ImageMagick/commit/5a34d7ac889bd6645f6cfd164636e3efb56dbb2f

heap buffer overflow in psd file coder:
	Debian Bug: https://bugs.debian.org/832480
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1537424
	https://github.com/ImageMagick/ImageMagick/issues/98
	https://github.com/ImageMagick/ImageMagick/commit/5f16640725b1225e6337c62526e6577f0f88edb8

out of bound access in wpg file coder:
	Debian Bug: https://bugs.debian.org/832482
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1539050
	https://bugs.launchpad.net/bugs/1542115
	https://github.com/ImageMagick/ImageMagick/issues/102
	https://github.com/ImageMagick/ImageMagick/issues/122
	https://github.com/ImageMagick/ImageMagick/commit/b6ae2f9e0ab13343c0281732d479757a8e8979c7
	https://github.com/ImageMagick/ImageMagick/commit/d9b2209a69ee90d8df81fb124eb66f593eb9f599
	https://github.com/ImageMagick/ImageMagick/commit/a251039393f423c7858e63cab6aa98d17b8b7a41

out of bound access for viff file coder:
	Debian Bug: https://bugs.debian.org/832483
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1537425
	https://github.com/ImageMagick/ImageMagick/issues/99
	https://github.com/ImageMagick/ImageMagick/commit/ca0c886abd6d3ef335eb74150cd23b89ebd17135

out of bound access in xcf file coder:
	Debian Bug: https://bugs.debian.org/832504
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1539051
	https://bugs.launchpad.net/bugs/1539052
	https://github.com/ImageMagick/ImageMagick/issues/104
	https://github.com/ImageMagick/ImageMagick/issues/103
	https://github.com/ImageMagick/ImageMagick/commit/a2e1064f288a353bc5fef7f79ccb7683759e775c

out of bound in quantum handling:
	Debian Bug: https://bugs.debian.org/832506
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1539067
	https://bugs.launchpad.net/bugs/1539053
	https://github.com/ImageMagick/ImageMagick/issues/105
	https://github.com/ImageMagick/ImageMagick/commit/63346f34f9d19179599b5b256e5e8d3dda46435c
	https://github.com/ImageMagick/ImageMagick/commit/c4e63ad30bc42da691f2b5f82a24516dd6b4dc70
	https://github.com/ImageMagick/ImageMagick/issues/110
	https://github.com/ImageMagick/ImageMagick/commit/b5ed738f8060266bf4ae521f7e3ed145aa4498a3

pbd file out of bound access:
	Debian Bug: https://bugs.debian.org/832633
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1539061
	https://bugs.launchpad.net/bugs/1542112
	https://github.com/ImageMagick/ImageMagick/issues/107

Fix handling of corrupted psd file:
	Debian Bug: https://bugs.debian.org/832776
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1539066
	https://github.com/ImageMagick/ImageMagick/issues/109

wpg file out of bound for corrupted file:
	Debian Bug: https://bugs.debian.org/832780
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1542114
	https://github.com/ImageMagick/ImageMagick/issues/120
	https://github.com/ImageMagick/ImageMagick/commit/bef1e4f637d8f665bc133a9c6d30df08d983bc3a

out of bound access in generic decoder:
	Debian Bug: https://bugs.debian.org/832785
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1542785
	https://github.com/ImageMagick/ImageMagick/issues/126
	https://github.com/ImageMagick/ImageMagick/commit/430403b0029b37decf216d57f810899cab2317dd

out of bound access for corrupted psd file:
	Debian Bug: https://bugs.debian.org/832787
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1545180
	https://github.com/ImageMagick/ImageMagick/issues/128

SEGV reported in corrupted profile handling:
	Debian Bug: https://bugs.debian.org/832789
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1545367
	https://github.com/ImageMagick/ImageMagick/issues/130
	https://github.com/ImageMagick/ImageMagick/commit/478cce544fdf1de882d78381768458f397964453

out of bound access for corrupted pdb file:
	Debian Bug: https://bugs.debian.org/832791
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1553366
	https://github.com/ImageMagick/ImageMagick/issues/143
	https://github.com/ImageMagick/ImageMagick/commit/424d40ebfcde48bb872eba75179d3d73704fdf1f

SIGABRT for corrupted pdb file:
	Debian Bug: https://bugs.debian.org/832793
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1556273
	https://github.com/ImageMagick/ImageMagick/issues/148
	https://github.com/ImageMagick/ImageMagick/commit/53c1dcd34bed85181b901bfce1a2322f85a59472

DOS due to corrupted DDS files:
	Debian Bug: https://bugs.debian.org/832944
	Additional references:
	----------------------
	http://www.imagemagick.org/discourse-server/viewtopic.php?f=3&t=26861
	https://github.com/ImageMagick/ImageMagick/commit/93ab016764c7f787829d9065440d86f5609765110
	https://github.com/ImageMagick/ImageMagick/commit/9b428b7af688fe319320aed15f2b94281d1e37b4

DOS due to corrupted DDS files:
	Debian Bug: https://bugs.debian.org/832942
	Additional references:
	----------------------
	https://github.com/ImageMagick/ImageMagick/commit/21eae25a8db5fdcd112dbcfcd9e5c37e32d32e2f
	https://github.com/ImageMagick/ImageMagick/commit/d7325bac173492b358417a0ad49fabad44447d52
	https://github.com/ImageMagick/ImageMagick/commit/504ada82b6fa38a30c846c1c29116af7290decb2

potential DOS by not releasing memory:
	Debian Bug: https://bugs.debian.org/833101
	Additional references:
	----------------------
	Fixed by: https://github.com/ImageMagick/ImageMagick/commit/4e81ce8b07219c69a9aeccb0f7f7b927ca6db74c
	http://www.imagemagick.org/discourse-server/viewtopic.php?f=2&t=28946

writing to rgf format aborts:
	Debian Bug: https://bugs.debian.org/827643
	Additional references:
	----------------------
	https://bugs.launchpad.net/bugs/1594060
	https://github.com/ImageMagick/ImageMagick/pull/223

Regards,
Salvatore
