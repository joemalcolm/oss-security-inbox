X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1580" "Thursday" "2" "February" "2017" "00:49:41" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<53d3fa6071944c4cabf555a4d5741b38@imshyb01.MITRE.ORG>" "40" "[oss-security] Re: CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)" nil nil nil "2" "2017020205:49:41" "[oss-security] Re: CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)" (number mark "U       cve-assign@m Feb  2   40/1580  " thread-indent "\"[oss-security] Re: CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)\"\n") "<CAN6_dU-+NxBLRrn4_W4myHh0hEBsC-dh=DrSkt_mDfd6fAC2_w@mail.gmail.com>" ("<CAN6_dU-+NxBLRrn4_W4myHh0hEBsC-dh=DrSkt_mDfd6fAC2_w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11825 invoked by uid 550); 2 Feb 2017 05:49:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11798 invoked from network); 2 Feb 2017 05:49:52 -0000
From: <cve-assign@mitre.org>
To: <chunibalon@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CAN6_dU-+NxBLRrn4_W4myHh0hEBsC-dh=DrSkt_mDfd6fAC2_w@mail.gmail.com>
Message-ID: <53d3fa6071944c4cabf555a4d5741b38@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 00:49:41 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> they are in netpbm(10.47.63)

> http://bugzilla.maptools.org/show_bug.cgi?id=2654
> http://bugzilla.maptools.org/show_bug.cgi?id=2655

> netpbm calls TIFFRGBAImageGet with width and
> height parameters switched because it looks at the TIFF orientation tag and
> thinks that TIFFRGBAImageGet will do a transposition
> 
> assumption is violated here when switching width and height as the width passed
> to TIFFRGBAImageGet becomes 32800 which is greater than the original width of
> 32

Use CVE-2017-5849 for both 2654 and 2655.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYksbdAAoJEHb/MwWLVhi2mgoP/j2QykW5WoefH+BF9ah0jCGD
KoDC6fM9Xcz5dH0pr3bYSDC6X8nwUJKmRCRZSNJ1Y4ATP4JmqoG7kLcZNxF1q1YK
l9cWoqdn14JpiLH125y5IcQTbMjsIU4ED2OnfJ65u3vuRizyDmmsrcWHExcFGjS5
+EJmZK1CLsStTZTNBlxc3m2/aObxSTYR5eFvgza1Regk2q+GmIZWQd3VRQBuMDAm
nK32FOWt4Ace9djcxrqkWz4+bdz70JoQZaBBloe/DFkqwE3/TBBbWMf+bn584vLr
nP7gxrjfI9M/B2/Ac7WBT8POw//bo25C0X0LJlSnLjVmIiTcXjGnlMe87thNHJkQ
Lxsg5OnZOhZZvQgpz61567eDX5h9xv7U51ebS59qFpD4yp63znV9tA8DtiZ9WKxn
5e28tfxAABzDWclUJEx6/kobNKytgyTvvPbIrKo75b9FvoYE9lXDLW0eR6fk745Q
0GyP4wptvbPga5aNZpCOBbq9IwXm2yNCGbUvSLNMm+ZPPo80Fs1sBdX26bvTqV0k
FRC0jbp/bcGdC7vSWja3XS9YJSHAZdhlNXFF1sxf+H1Ia5SiYMFWNTyYYER34DZN
EW4RxC0I+pEBsvV6fbznEKo2Abn8AqiyIxJ5orKsie5KOg73vHCx3KMWLPP2HOaW
RZ1j4Wy9tBaf0S+AMiFc
=wfq9
-----END PGP SIGNATURE-----
