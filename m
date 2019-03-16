X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5166" "Saturday" "16" "March" "2019" "09:54:39" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<fdd8218f-e06f-9ebe-5554-99e2b898dfa9@oracle.com>" "125" "[oss-security] Fwd: [ANNOUNCE] libXdmcp 1.1.3 [fix for CVE-2017-2625]" "^Date:" nil nil "3" "2019031616:54:39" "[oss-security] Fwd: [ANNOUNCE] libXdmcp 1.1.3 [fix for CVE-2017-2625]" (number mark "U       alan.coopers Mar 16  125/5166  " thread-indent "\"[oss-security] Fwd: [ANNOUNCE] libXdmcp 1.1.3 [fix for CVE-2017-2625]\"\n") "<20190316163157.GA23880@also.us.oracle.com>" ("<20190316163157.GA23880@also.us.oracle.com>") nil nil nil nil nil nil nil "[oss-security] Fwd: [ANNOUNCE] libXdmcp 1.1.3 [fix for CVE-2017-2625]" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3516 invoked by uid 550); 16 Mar 2019 16:54:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3495 invoked from network); 16 Mar 2019 16:54:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : references
 : to : from : message-id : date : mime-version : in-reply-to :
 content-type; s=corp-2018-07-02;
 bh=OOYbNtzL1s7KSMGx98PPxZ8DjhP8/sD4xB8bfhOAaug=;
 b=GLYR4+tYxMdn4OTEUOqOeS6+XdSyMXRdoBNR5hURcB/elRG3jqZ/ieX8opNr7SIRjU3e
 8wQ7nTDbUKSzXiY2vj7GlA8Zm/ZMc9x0+8hMYFMd886OjdFWKvdt8MU7BpQoCtUJ8UEr
 d7ELATo+UDCbk+Qjusx6eWSJ+xdXfN8JlFIomKNcnH8dyEAQW/xU+ytGIzwJVSZ8Ozw+
 Jn5HvgT9SdRbXRuYP5vvQlgTBsHCPc9Yv3vavhjsZEDIlFP5sUjh1SWuD9tOCCvrVbxV
 SJgCv7ItWdh96Uf4LIC0gN2ZZas1cVNONrwpA0MRptW9pxwCzvpvwqZRlhCkt9W2L7le oA== 
References: <20190316163157.GA23880@also.us.oracle.com>
X-Forwarded-Message-Id: <20190316163157.GA23880@also.us.oracle.com>
Message-ID: <fdd8218f-e06f-9ebe-5554-99e2b898dfa9@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190316163157.GA23880@also.us.oracle.com>
Content-Type: multipart/mixed;
 boundary="------------50420CB64E5BA7AB044D13CB"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9197 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1903160128
Date: Sat, 16 Mar 2019 09:54:39 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: [ANNOUNCE] libXdmcp 1.1.3 [fix for CVE-2017-2625]
To: oss-security@lists.openwall.com

--------------50420CB64E5BA7AB044D13CB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

This issue was already disclosed at:
   https://www.x41-dsec.de/lab/advisories/x41-2017-001-xorg/
   https://www.openwall.com/lists/oss-security/2017/02/28/3

This just upgrades the fix from a git commit/patch to a released tarball.

	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org


-------- Forwarded Message --------
Subject: [ANNOUNCE] libXdmcp 1.1.3
Date: Sat, 16 Mar 2019 09:31:57 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
To: xorg-announce@lists.x.org
CC: xorg@lists.x.org

libXdmcp is the X Display Manager Control Protocol library, used by both
X servers and display managers to handle both ends of the XDMCP connection.

This release provides a fix for CVE-2017-2625 for platforms which don't have
arc4random_buf() in their default libraries but do have getentropy(), such
as Linux platforms with a kernel version of 3.17 or newer and a glibc version
of 2.25 or newer.   (libXdmcp 1.1.2 already ensured that arc4random_buf()
is used on platforms that have it to provide sufficient entropy in XDMCP
key generation, but left other platforms with the weaker methods.  Linux
platforms could also have linked against libbsd to use arc4random_buf()
with libXdmcp 1.1.2 for stronger keys.)

Alan Coopersmith (2):
       Update README for gitlab migration
       libXdmcp 1.1.3

Benjamin Tissoires (2):
       Use getentropy() if arc4random_buf() is not available
       Fix compilation error when arc4random_buf is not available

Emil Velikov (1):
       autogen.sh: use quoted string variables

Helmut Grohne (1):
       do not use &fullrelvers; in xdmcp.xml (Debian bug 761628)

Jon TURNEY (1):
       Link with winsock library for socket functions on MinGW

Mihail Konev (1):
       autogen: add default patch prefix

Peter Hutterer (1):
       autogen.sh: use exec instead of waiting for configure to finish

git tag: libXdmcp-1.1.3

https://xorg.freedesktop.org/archive/individual/lib/libXdmcp-1.1.3.tar.bz2
MD5:  115c5c12ecce0e749cd91d999a5fd160  libXdmcp-1.1.3.tar.bz2
SHA1: 0a8f8a274f829331efb1e8e2027c38631b204dd0  libXdmcp-1.1.3.tar.bz2
SHA256: 20523b44aaa513e17c009e873ad7bbc301507a3224c232610ce2e099011c6529 
libXdmcp-1.1.3.tar.bz2
SHA512: 
cb1d4650f97d66e73acd2465ec7d757b9b797cce2f85e301860a44997a461837eea845ec9bd5b639ec5ca34c804f8bdd870697a5ce3f4e270b687c9ef74f25ec 
  libXdmcp-1.1.3.tar.bz2
PGP:  https://xorg.freedesktop.org/archive/individual/lib/libXdmcp-1.1.3.tar.bz2.sig

https://xorg.freedesktop.org/archive/individual/lib/libXdmcp-1.1.3.tar.gz
MD5:  4855eb078703d3f9a6692fa67a3eb28a  libXdmcp-1.1.3.tar.gz
SHA1: a94cd4ce575b2a9b2620b1630a7bc4f0e59cab56  libXdmcp-1.1.3.tar.gz
SHA256: 2ef9653d32e09d1bf1b837d0e0311024979653fe755ad3aaada8db1aa6ea180c 
libXdmcp-1.1.3.tar.gz
SHA512: 
edd05654ad9ea893e9e08269e25ea050d10eaf9f997a08494e24127d1ba0c896cd5338b4595b155c8cbf576e1d910b76e6ad7820fee62d74644f1f276551e2f2 
  libXdmcp-1.1.3.tar.gz
PGP:  https://xorg.freedesktop.org/archive/individual/lib/libXdmcp-1.1.3.tar.gz.sig


-- 
	-Alan Coopersmith-               alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc


--------------50420CB64E5BA7AB044D13CB
Content-Type: application/pgp-signature;
 name="signature.asc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="signature.asc"

LS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0KVmVyc2lvbjogR251UEcg
djIKCmlRSWNCQUVCQ2dBR0JRSmNqU1Q4QUFvSkVNL2ZGSWdveGtLbmVQNFAv
UkRZNWFUZENwdGRDRndYSTRyV21qb0kKWVl0eDFzNVFKY0x3b3c0dy9tSHNV
cTFWYXpMdUVYNmo4eHpPLzlSaURSM0pOWUVVUlFCcWxwNEhzVDkxbDRXVQpE
SWFJOXZMVWtJcitQaTNIdGNDUnFnZHBDeXNqNUZkSjdqck90Q2hOYVpDdVZU
MGpNU29Na3VWTlF4MDRQRVFqCkJvQmcwNEU3THUrSm84UUNHSkNzSnNGVis3
Wk1DQmFUSEdwKytkY0Y4RFJvK1Q3MGc4NWRhVkVJYXA2aWd1Q0MKcVh1aVBI
THdUY2ZhKzVZS3RxSldhQkxrNm50c3VVS2FMbVlqWm5HN3lvMUhidVBsS2hQ
Qi9WcnNPRVZtQXdRdApEQW5iTGhNM1ZUNUloU2RnUGN3REJsWCszS3hCTVNK
eE5wWm94UmNmYmtHK0NibnRYOWV6L2o4UysyYXJ6L0pTCk9vOG9hYVdOVE56
OGQxS1doVDNrRk0zdDk0R2ZESXVZc3JGVC84V3ZSVC9iV2s3YTFkOHNENGJV
dXJkSld0ZkUKNDQrRk03SDl2Q2wzelN2aTR0S2NONjlxeFZ6azNsdFBBVkZV
V1Q3Nis4aFFrUHhqaHliQUQ5M1VtUngwNTZpRwpqV29MRGpBeVJBK2RUYUxy
YUUvWG9Yc2ZHdFRIREhpV0VKRWRiWVoyeTMxcENoRTRlKzdtT1I0ZXFjS2JL
ODAxCndra1VZWW5mQW1YakZuRUNkN21pYVhjdkg2YnNXTzg0Rks2TE5vaFM2
ZlFsZWFab3Z4cndKU0lETGpDMzNqMHAKQWlxbCs0US9pUjNCaVFGREV3T1BT
Unlocmkzd0JueWJ6NUxKMnFqaEExZlFpd0FmKzVhclZqcTE5SER2UWdacApZ
UzlRUExkQU5aa2d0Q2FFNXdoeAo9VW4zawotLS0tLUVORCBQR1AgU0lHTkFU
VVJFLS0tLS0KCg==

--------------50420CB64E5BA7AB044D13CB
Content-Type: text/plain; charset=UTF-8;
 name="Attached Message Part"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="Attached Message Part"

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KeG9yZ0BsaXN0cy54Lm9yZzogWC5Pcmcgc3VwcG9ydApBcmNoaXZlczog
aHR0cDovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy94b3JnCklu
Zm86IGh0dHBzOi8vbGlzdHMueC5vcmcvbWFpbG1hbi9saXN0aW5mby94b3Jn
CllvdXIgc3Vic2NyaXB0aW9uIGFkZHJlc3M6ICUodXNlcl9hZGRyZXNzKXM=

--------------50420CB64E5BA7AB044D13CB--
