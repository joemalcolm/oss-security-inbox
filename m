X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1359" "Friday" "21" "October" "2016" "03:30:42" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161021073042.173846C09DC@smtpvmsrv1.mitre.org>" "33" "[oss-security] Re: imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862)" nil nil nil "10" "2016102107:30:42" "[oss-security] Re: imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862)" (number mark "U       cve-assign@m Oct 21   33/1359  " thread-indent "\"[oss-security] Re: imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862)\"\n") "<5202386.CNWfkh1GhB@blackgate>" ("<5202386.CNWfkh1GhB@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27962 invoked by uid 550); 21 Oct 2016 07:30:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27944 invoked from network); 21 Oct 2016 07:30:53 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <5202386.CNWfkh1GhB@blackgate>
Message-Id: <20161021073042.173846C09DC@smtpvmsrv1.mitre.org>
Date: Fri, 21 Oct 2016 03:30:42 -0400 (EDT)
Subject: [oss-security] Re: imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2016/10/20/imagemagick-memory-allocation-failure-in-acquiremagickmemory-memory-c-incomplete-fix-for-cve-2016-8862/
>
> still reproducible in the 7.0.3.4 version
> 
> #9 0x7f467fd11c67 in AcquireMagickMemory ... ImageMagick-7.0.3-4/MagickCore/memory.c:460:10

Use CVE-2016-8866.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYCcNeAAoJEHb/MwWLVhi20/wP/1iiGZqIk9G4dz6hhSnnOnbe
4rirHjWzkaudO10CibTukcsMKtRDA+1MiluIX4pwgmSiy2F6oFtJK2QH8/Q0/xeD
tGXs6+r8glxDEpaOxuhWeYZTs811Jln1VFZ9ma0qJ5dcciUZ6ArncwOUojuY9PFj
QiaZZKurbMj7sbsUwleYU4z7GQjljvQDSYX2BWVsOxgvy1IxXZN5370Dk3cGvfBj
hU9LNyxSxiTNYrDzL/oU2VraGwcSonpbQQvZ+v3gwVbAzB8CPTWEL4PE2Q/0CKem
+kmoRPL0sKBl73ZPQldOt5FCseOH/RVPIHHFgbsktUKFOipc70nssrPjaOVCBb+D
JkAWN3+JOIjs0DkDsmHu04d5hg6I4s9fQ3XHNAWf/IRHd1E13F0Oi3lZnCcD+91d
+MHl5q2DA3mRb5tQwugG3YE8Xq6iWJhPsAumBLy50HBSqPBThGNEY9j6l6LxvoHh
+EE5s3kR7VT3RFVWZzxS14s5dkkxeg5Szd/vX3yxug5PV/FQ9OtteBEJSuLBmfci
LB5AMIo66vyWcHDRPAkJCXO00Bw/J+RdNxITTJn47poBa2gSh08rdx0XRlzb4B/3
n9ToPs2ABty9XzRxOpNHK9/06X0IqAzCsV09l0MGMtdLjfg/cxoKEWI+jVbFGeeP
PjCoB0Arz8xQohWdPz9g
=AyGH
-----END PGP SIGNATURE-----
