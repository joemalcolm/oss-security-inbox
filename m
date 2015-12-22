X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1576" "Wednesday" "23" "December" "2015" "01:48:09" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512230141060.10838@wniryva>" "45" "[oss-security] CVE request Qemu: hmp: stack based OOB write in hmp_sendkey routine" "^cc:" nil nil "12" "2015122220:18:09" "[oss-security] CVE request Qemu: hmp: stack based OOB write in hmp_sendkey routine" (number mark "        ppandit@redh Dec 23   45/1576  " thread-indent "\"[oss-security] CVE request Qemu: hmp: stack based OOB write in hmp_sendkey routine\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30667 invoked by uid 550); 22 Dec 2015 20:18:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30649 invoked from network); 22 Dec 2015 20:18:43 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1512230141060.10838@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
cc: Ling Liu <liuling-it@360.cn>
Date: Wed, 23 Dec 2015 01:48:09 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: hmp: stack based OOB write in hmp_sendkey
 routine
To: oss security list <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the Human Monitor Interface(HMP) support is 
vulnerable to an OOB write issue. It occurs while processing 'sendkey' command 
in hmp_sendkey routine, if the command argument is longer than the 
'keyname_buf' buffer size.

A user/process could use this flaw to crash the Qemu process instance 
resulting in DoS.

Upstream fix:
- -------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg02930.html

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1283926

This issue was discovered by Mr Ling Liu of Qihoo 360 Inc.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWebACAAoJEN0TPTL+WwQfKkEP/R/yWa0pC7a1nky6EWrcuuKC
d4Sd9cN0q4LjOGAZB+Csfb33HWWbnRZWKiBQuc9v0Ivh4xE7rP605Hh+it+mYzA6
YCt5vnT0tmwSf6Uq4gS+Ap1G1L7e0aVq/8SaPkaIT59nFfDRRVMPD6xBMy/ZBftT
ilKmR7O4aE8xK5IvZY2Q857ywrp0FkLzH5MFKrU9aFqSWshtEl+E27cQZoaNPY6q
B39m1ZY0mW5d0JBJiq5RZbz9qBqKNqTFumQ9femE6uzPlxwVDvWEt8QAhl6EuxXh
QU+zVoD+nrA7EFZL96cdKHcZEgyF+tCOkyA80wF/fHzPM+wRpWWbydgFCXS13ChN
L8jGvMIRAhx+leIinpXj/fDDtXrcCFxf8XoE+G0THYoF6SCw2ukh5FBXUWKL1Wsi
VL1tsVgZdemdGX/PifZ7WrZHyvjb9xJg1uLZctCuXRLNZe5f/EZlXrdSAdc6HsJH
a/+i3o1SSJ8RHFBLn1Ve+bldEmJFA7cEJPB9nz8lRj77A8Pivy10+38Nfuuo9kXy
dEL6mlfq2JrMp7pgGgIVtJChjH0+mwETrkUd/yYPgp1AmTBLkum7M76Jxwli7AVX
OFRfGAmEUxnzXs6cJSP4tW1QXidUHsSwOCInZpiRNweU/azBtsrK6EexQIx0IceJ
egafyYsnZIEpcKyeGrld
=j7pK
-----END PGP SIGNATURE-----
