X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1332" "Saturday" "15" "October" "2016" "22:45:35" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161016024535.717936C0D4B@smtpvmsrv1.mitre.org>" "32" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome (pixel-accessor.h)" nil nil nil "10" "2016101602:45:35" "[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome (pixel-accessor.h)" (number mark "U       cve-assign@m Oct 15   32/1332  " thread-indent "\"[oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome (pixel-accessor.h)\"\n") "<1975736.yU59nFIvqB@arcadia>" ("<1975736.yU59nFIvqB@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15764 invoked by uid 550); 16 Oct 2016 02:45:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15739 invoked from network); 16 Oct 2016 02:45:47 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1975736.yU59nFIvqB@arcadia>
Message-Id: <20161016024535.717936C0D4B@smtpvmsrv1.mitre.org>
Date: Sat, 15 Oct 2016 22:45:35 -0400 (EDT)
Subject: [oss-security] Re: imagemagick: heap-based buffer overflow in IsPixelMonochrome (pixel-accessor.h)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/07/imagemagick-heap-based-buffer-overflow-in-ispixelmonochrome-pixel-accessor-h/

> AddressSanitizer: heap-buffer-overflow ... READ of size 10
> ImageMagick-7.0.3-0/./MagickCore/pixel-accessor.h:557:24 in IsPixelMonochrome

Use CVE-2016-8678.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAudMAAoJEHb/MwWLVhi2q1AQAIBi/od3vsXpt53PUspCr8sZ
IwEVpM7XL9/Ee7rH4GJTI7dJp/FOf+obiVIASLMIIvpC7Kgy8omoBDIZ2s8mmCkv
jMM4MUSs2QUZFjoR26uYW9L+IiwQyD4bBMlMUOFuKUoHbOYpVb7QQABft5NV8H81
RB6ZmbSzDmLwVRIQOLV27L4EZx+kUJb72mbs9VfMIFO5hwF5UX1mCUqp6jQ25UP4
/zlYPPcUsTTcAjRiai+zSxSIKKySfzuEJF4XiHdETPNFguMDquH505OBg8zenpjZ
djYjpnI2cVxFe/yWVpa7d+oTEya7jscuV8PlqquOtLfmfOCYGTI8V7js0Zd3yx8/
/4lhcaMyULhILvho2191mh7CD4SkgL8XNq94DrlQ8IhcZflzCdUOU0lQCn6RRdfg
GqfZ82obAIdg/DJSrMO5QOt5DYyAYNpPS1AFAOpH2UgIfhEcHaAbv3wkudG7vnK2
3Jlj4vUmAxcfWHHSKgpYVh0ffrBHegDypLV5wwHlg/XIVEfEwQ6EjFePMqFHO2AJ
atXRM85uh93WWok09ay+oW84JHzX5F9jDTrTM+92XG62KrRWRCjQviMAZKbx5+yB
kvcH0IWZ0aHRs0BOJ5nuhk8h1VocdzSZwe3nJw1aOJ+UCpzPQqHu60PxqMbrLyyb
3r1w88ZsRdwdsxJ8fch0
=Im8q
-----END PGP SIGNATURE-----
