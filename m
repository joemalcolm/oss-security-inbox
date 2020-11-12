X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1296" "Thursday" "12" "November" "2020" "18:10:46" "+0000" "John Haxby" "john.haxby@oracle.com" "<79EF808D-1EB1-496E-875E-003FF44B6B12@oracle.com>" "43" "[oss-security] CVE-2014-4508" nil nil nil "11" "2020111218:10:46" "[oss-security] CVE-2014-4508" (number mark "U       john.haxby@o Nov 12   43/1296  " thread-indent "\"[oss-security] CVE-2014-4508\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2014-4508" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32706 invoked by uid 550); 12 Nov 2020 18:13:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32683 invoked from network); 12 Nov 2020 18:13:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : message-id : date : to; s=corp-2020-01-29;
 bh=N/64UcA0LKGsin9B7nFEPaVCO05rZvdCTXKInBoUR8E=;
 b=pDqhOMlkSxI0CPDlH8YeOnkUAH1tDTJu4SUBwh+SAGHvwGsFuHkcG4rPg5/JPHDbaR3o
 uwc1aoRtco2/aAz5toi0ZUXF0jP0pB/pQL+CP/RLj3JS7PD/kr2OOL9O/qwiLMd5D+PH
 l8c20ZRnjtpIfHAWXGhHQhG8AC46NE6d+CaUhYrl4htWOoyBODJyCFYbXp4KYBvynF6U
 LRo/KhOLff/a5uZ4BQILh6wJN5SWHVIgJpcbFK4kfomxsiuKCgdwx9opd7X0fhqs/lCp
 /NQH58VzhtvUduOIHy2yex7yU7w5YVFjJCUvO3giVlXGc3A/LjU8NiEadsEUAS8NijEe wQ== 
From: John Haxby <john.haxby@oracle.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F4583618-10D1-4DD7-84CC-6A2F2B62C9EB";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Message-Id: <79EF808D-1EB1-496E-875E-003FF44B6B12@oracle.com>
Date: Thu, 12 Nov 2020 18:10:46 +0000
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9803 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=1
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011120106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9803 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 suspectscore=1 lowpriorityscore=0 adultscore=0 phishscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1034
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011120107
Subject: [oss-security] CVE-2014-4508

--Apple-Mail=_F4583618-10D1-4DD7-84CC-6A2F2B62C9EB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hello,

This is an old CVE but it was recently "rediscovered" [1].

CVE-2014-4508 is a memory leak in the auditing subsystem in the kernel.  On=
 old 32 bit linux kernels that don't have [2] this memory leak turns out to=
 be quite bad: you can trigger an out of memory condition that the system c=
annot recover from not matter how hard it tries.

If you believe you have such a kernel, please get in touch with me directly.

jch




[1] Thanks to Dan Moulding for bringing this to our attention
[2] 554086d85e71 ("x86_32, entry: Do syscall exit work on badsys (CVE-2014-=
4508)")

--Apple-Mail=_F4583618-10D1-4DD7-84CC-6A2F2B62C9EB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCX616pgAKCRBFC7t+lC+j
yIEsAP9HkdPad4mahCtd8yu7h35qxLYBpLP/HKx2ORorvQKqTgD/XyU55Vd6sSdj
TEFYP3EDrG2PQJMSpbmrPDfL2GjnLgI=
=TBLc
-----END PGP SIGNATURE-----

--Apple-Mail=_F4583618-10D1-4DD7-84CC-6A2F2B62C9EB--
