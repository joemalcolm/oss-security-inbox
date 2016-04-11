X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1549" "Monday" "11" "April" "2016" "00:39:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160411043901.70E186C017B@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: imlib2 - potential divide-by-zero in imlib_image_draw_ellipse" nil nil nil "4" "2016041104:39:01" "[oss-security] Re: CVE request: imlib2 - potential divide-by-zero in imlib_image_draw_ellipse" (number mark "U       cve-assign@m Apr 11   39/1549  " thread-indent "\"[oss-security] Re: CVE request: imlib2 - potential divide-by-zero in imlib_image_draw_ellipse\"\n") "<570AAC03.2030209@vorlons.info>" ("<570AAC03.2030209@vorlons.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12218 invoked by uid 550); 11 Apr 2016 04:39:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12197 invoked from network); 11 Apr 2016 04:39:13 -0000
From: cve-assign@mitre.org
To: matthias@vorlons.info
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <570AAC03.2030209@vorlons.info>
Message-Id: <20160411043901.70E186C017B@smtpvmsrv1.mitre.org>
Date: Mon, 11 Apr 2016 00:39:01 -0400 (EDT)
Subject: [oss-security] Re: CVE request: imlib2 - potential divide-by-zero in imlib_image_draw_ellipse

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> please provide a CVE ID for this issue in imlib2:
> 
> https://git.enlightenment.org/legacy/imlib2.git/commit/?id=c94d83ccab15d5ef02f88d42dce38ed3f0892882

>> Attempting to draw a 2x1 ellipse with e.g. imlib_image_draw_ellipse(x, y, 2, 1) causes a divide-by-zero.

> Debian bug report from 2011:
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=639414

>> this bug has minor security implications (DoS for 
>> applications that issue draw command based on untrusted input).

Use CVE-2011-5326.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXCyibAAoJEL54rhJi8gl5VRgP/ipfgG1QiVj0ZOxfVHta2T3t
yeIEMjWLpG9zFo1rGmJyDN/h0+UG/JSOQzM87l11INxceeUjHdN9FFSTDk3bN0rY
r9a1rUwrPUc/CV8F9Y90lA6AQ69pwj73mf3ylu66H5C5wWBo5ZNvjyqxvNaInIgO
o5SAKeiNMUdfjPryIK47GtBR/xp48Sl0GbG8S8GzYrhpA/lze39QG5RdmzYLJVWd
ktMlt5jE+oomypwtiJpe+MvpXHHu92AaVbZ6xnmk3Gv5/dttumU47xXLjAHCmz2i
cXJe4BVkB5hXWlQmg49V05Muivaec84blpN+OyRDfCnqWRp2dP6yBiWFBOJ/7KDX
zcWagbUHUoHR2GefHt9FSkiI65J/HINYYefhpSrNZK9gJxiE/ouJQXMyFV3eNvWm
IBGjoXR4wMcjuhx9W2bwRwTa9ILmWq375UVWm137cwOa/0QF0vo06qnFeuogtWlb
+OwV6m8/J+KZAYDQKR3viKOCTJGiUl/bB5CKdAGHpdXR1vbRqkydhc4tuLuQ64tn
fLXLdpAFDl/xGkRxcJu+7Ww7QHTvwH2daTfcVfzYQ8SSFuOWDx5ii31CPr1BkoOl
PcInntz6lAXdpgjqMaRUyP1QAD60H/la9/N6j2k4w1JN3EKKGsaZrQPhgN9aNNs2
8v8DY7QKNuVdyqT8idPB
=/w1g
-----END PGP SIGNATURE-----
