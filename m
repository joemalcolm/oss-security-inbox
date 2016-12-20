X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12317" "Tuesday" "20" "December" "2016" "13:06:29" "-0500" "Antoine =?utf-8?B?QmVhdXByw6k=?=" "anarcat@debian.org" "<87pokmjx0a.fsf@angela.anarc.at>" "307" "[oss-security] CVE requests for various ImageMagick issues" nil nil nil "12" "2016122018:06:29" "[oss-security] CVE requests for various ImageMagick issues" (number mark "U       anarcat@debi Dec 20  307/12317 " thread-indent "\"[oss-security] CVE requests for various ImageMagick issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23985 invoked by uid 550); 20 Dec 2016 18:27:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10074 invoked from network); 20 Dec 2016 18:06:47 -0000
From: anarcat@debian.org (Antoine =?utf-8?Q?Beaupr=C3=A9?=)
To: oss-security@lists.openwall.com
Date: Tue, 20 Dec 2016 13:06:29 -0500
Message-ID: <87pokmjx0a.fsf@angela.anarc.at>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Subject: [oss-security] CVE requests for various ImageMagick issues

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Hi,

The Debian security tracker has a number of unassigned security issues
that I have been working on in the last week as part of the Debian LTS
project. I am hereby requesting CVE identifiers for the following (20)
issues.

It is unclear why upstream hasn't requested those themselves, but I
assume, given the time since those issues were discovered, that they
will not proceed with requests themselves and there should be no
duplicates here. The Debian security team is very dilligent in handling
CVEs and if there were identifiers already issued for those issues, they
would have been sorted out already.

I include the Debian bug numbers, the upstream commit and, when
possible, the upstream issue where more discussions sometimes took
place. I also include a Debian-specific reference URL that we use
internally to keep track of the issue which shows which versions of
Debian are fixed and other notes. Some issues also include when the
issue was fixed upstream in cases where it was obvious in the commitlog
or Debian release process.

All commits are on the Imagemagick 7 and generally have a counterpart on
the 6 branch, available in Debian or upstream, unless otherwise noted.

It is the first time I request a large number of CVE identifiers. I have
tried to provide as much details as I could. Given the amount of
information actually available upstream, this has proven to be
difficult. I hope the format is acceptable and the information
sufficient, I would welcome any feedback as to how to improve this
process.

I would also like to remind the list that the following request is still
pending CVE IDs: http://www.openwall.com/lists/oss-security/2016/02/22/4

Thanks in advance.

Off-by-one count when parsing an 8BIM profile
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug-767240
Reference URL: https://security-tracker.debian.org/767240
Upstream commit: N/A
Upsteram issue: N/A
Upstream version fixed: 6.8.9-9

I could not find which exact commit patched this specific
vulnerability. All other issues reported here have patches
attached. Sorry for the inconvenience.

Buffer overflow in draw.c
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/833730
Reference URL: https://security-tracker.debian.org/833730
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/989f9f88=
ea6db09b99d25586e912c921c0da8d3f
Upstream issue: N/A
Upstream version fixed: 6.9.5-5

memory leak in XML file transversal
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/833732
Reference URL: https://security-tracker.debian.org/833732
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/fc6080f1=
321fd21e86ef916195cc110b05d9effb
Upstream issue: N/A
Upstream version fixed: 6.9.4-7

arbitrary module loading due to not escaping relative path
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/833735
Reference URL: https://security-tracker.debian.org/833735
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/fc6080f1=
321fd21e86ef916195cc110b05d9effb
Upstream issue: N/A
Upstream version fixed: 6.9.4-7

Buffer overflow when reading corrupt RLE files
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/833743
Reference URL: https://security-tracker.debian.org/833743
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/3e916528=
5eda6e1bb71172031d3048b51bb443a4
Upstream issue: https://www.imagemagick.org/discourse-server/viewtopic.php?=
f=3D3&t=3D29710
Upstream version fixed: 6.9.4-4

Heap overflow when reading corrupt RLE files
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/833744
Reference URL: https://security-tracker.debian.org/833744
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/73fb0aac=
5b958521e1511e179ecc0ad49f70ebaf
Upstream issue: N/A
Upstream version fixed: 6.9.4-8

Use after free when using identify or convert
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/834183
Reference URL: https://security-tracker.debian.org/834183
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/ecc03a25=
18c2b7dd375fde3a040fdae0bdf6a521
Upstream issue: https://www.imagemagick.org/discourse-server/viewtopic.php?=
f=3D3&t=3D30245
Upstream version fixed: 6.9.5-5

Out-of-bound in exif (jpeg) reader
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/834501
Reference URL: https://security-tracker.debian.org/834501
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/9e187b73=
a8a1290bb0e1a1c878f8be1917aa8742
Upstream issue: N/A
Upstream version fixed: 6.9.5-6

TIFF divide by zero
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/836171
Reference URL: https://security-tracker.debian.org/836171
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/f983dcdf=
9c178e0cbc49608a78713c5669aa1bb5
Upstream issue: N/A
Upstream version fixed: 6.9.5-8=20

Buffer overflow in SIXEL, PDB, MAP, and CALS coders
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

Debian bug: https://bugs.debian.org/836172
Reference URL: https://security-tracker.debian.org/836172
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/10b3823a=
7619ed22d42764733eb052c4159bc8c1
Upstream issue: N/A
Upstream version fixed: 6.9.5-8

Memory leak in psd file handling
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845239
Reference URL: https://security-tracker.debian.org/845239
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/4ec444f4=
eab88cf4bec664fafcf9cab50bc5ff6a
Upstream issue: N/A
Upstream version fixed: 6.9.6-3

TIFF file buffer overflow
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845195
Reference URL: https://security-tracker.debian.org/845195
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/58cf5bf4=
fade82e3b510e8f3463a967278a3e410
Upstream issue: N/A
Upstream version fixed: 6.9.4-1

Check return of write function
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845196
Reference URL: https://security-tracker.debian.org/845196
Upstream commit:
  - https://github.com/ImageMagick/ImageMagick/commit/933e96f01a8c889c7bf5f=
fd30020e86a02a046e7
  - https://github.com/ImageMagick/ImageMagick/commit/4e914bbe371433f0590ce=
fdf3bd5f3a5710069f9
Upstream issue: https://github.com/ImageMagick/ImageMagick/issues/196
Upstream version fixed: 7.0.1-10

The above fixes may be incomplete, according to the upstream issue. In
addition, the -6 branch seems to have an incomplete fix as well.

Check validity of extend during TIFF file reading
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845198
Reference URL: https://security-tracker.debian.org/845198
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/2bb6941a=
2d557f26a2f2049ade466e118eeaab91
Upstream issue: N/A
Upstream version fixed: 6.9.5-1

Better check for bufferoverflow for TIFF handling
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845202
Reference URL: https://security-tracker.debian.org/845202
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/f8877aba=
c8e568b2f339cca70c2c3c1b6eaec288
Upstream issue: N/A
Upstream version fixed: 6.9.5-1

Fix out of bound read in viff file handling
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845212
Reference URL: https://security-tracker.debian.org/845212
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/134463b9=
26fa965571aa4febd61b810be5e7da05
Upstream issue: https://github.com/ImageMagick/ImageMagick/issues/129
Upstream version fixed: 7.0.1-0

Suspend exception processing if there are too many exceptions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845213
Reference URL: https://security-tracker.debian.org/845213
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/04742375=
08f39c4f783208123431815f1ededb76
Upstream issue: N/A
Upstream version fixed: 6.9.4-5

Commit against 6 branch, unknown if fixed or relevant on 7 branch.

This commit may also be necessary to trigger exceptions early:

https://github.com/ImageMagick/ImageMagick/commit/f6e9d0d9955e85bdd7540b251=
cd50d598dacc5e6

Prevent fault in MSL interpreter
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845241
Reference URL: https://security-tracker.debian.org/845241
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/56d6e20d=
e489113617cbbddaf41e92600a34db22
Upstream issue: https://www.imagemagick.org/discourse-server/viewtopic.php?=
f-3&t-30797
Upstream version fixed: 6.9.6-4

Add check for invalid mat file
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845244
Reference URL: https://security-tracker.debian.org/845244
Upstream commit: https://github.com/ImageMagick/ImageMagick/commit/8a370f9a=
b120faf182aa160900ba692ba8e2bcf0
Upstream issue: N/A
Upstream version fixed: 6.9.4-5

Commit against 6 branch, unknown if fixed or relevant on 7 branch.

mat file out of bound
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Debian bug: https://bugs.debian.org/845246
Reference URL: https://security-tracker.debian.org/845246
Upstream commit:=20
  - https://github.com/ImageMagick/ImageMagick/commit/b173a352397877775c51c=
9a0e9d59eb6ce24c455
  - https://github.com/ImageMagick/ImageMagick/commit/f3b483e8b054c50149912=
523b4773687e18afe25
Upstream issue: https://github.com/ImageMagick/ImageMagick/issues/131
Upstream version fixed: 6.9.4-0

Commits against 6 branch, unknown if fixed or relevant on 7 branch.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYWXMmAAoJEHkhUlJ7dZIeQNUQAJzeu6h9fY28VEgbTlOoifCk
klV46wfci93vi1zZygzm0cOInDdmIJ/i6WR0+PlS8MAViiNOO5bzW0C9tMgmDtsm
eJ/V47ll1eJHy6FXR7oTuwlmn3qvrUgCvN6LKsleS+3xgEp2aBJE2e8WLD3pgqcu
SSM0hu2JuFIbazrvHjevflQ5Ak6hLd7+tsGSZUCLeOK9Sl01X3z5W/oa6wluIYhV
xF6rydij4HCSDyYwzHF57MjSzKLpFX/3L8cx57FKv5J91NIIiKsZQDkjXOzNIHsd
BkOS8qAzYDPVwaPE3rv7ZZONCqJ/G4bt/RD+Yu2xLbtKoiFYQdWACvaJSVrpUQwR
68VELzv6gmPMpgrzBk6/X/DKefZzm+aZIuKgT/KGfJMrkGTQ2gBw9od+J2Ch7Vzx
n/N7R2h7CFrXNxoemgmnQBXjys8lnJDAeYxu2KfqxYrN8i+Mz/5GHAbOUXLiJ9dc
GddQ8SYZ0OrllaQdKkCyD6WGDhDHzjkOg0XA68te/j+Mqp5hbAR9t9S5SPCWfzWC
EyoDAqTHTu4g9lY3b7KOWRdG1QbJOZ9evfJzD9nJbD8RDeEzP8i22qGMHsQfQfAd
FFQfs0OvbCVOCFipu6S3g7+S9BrCfp69um/MAAA7a2cR+gLSxaeEsXSVZg+ATpmg
ysOB0uFFCt5bREfq6H20
=iLOw
-----END PGP SIGNATURE-----
--=-=-=--
