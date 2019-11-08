X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1143" "Friday" "8" "November" "2019" "12:29:50" "+0000" "John Haxby" "john.haxby@oracle.com" "<5B458214-EF60-45B1-B20C-585B5306D66A@oracle.com>" "39" "Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" "^Date:" nil nil "11" "2019110812:29:50" "[oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" (number mark "        john.haxby@o Nov  8   39/1143  " thread-indent "\"Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|\"\n") "<E0315DDE-505B-4D2A-8567-9E1BA39ADBBF@oracle.com>" ("<CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>" "<E0315DDE-505B-4D2A-8567-9E1BA39ADBBF@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9703 invoked by uid 550); 8 Nov 2019 12:30:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9685 invoked from network); 8 Nov 2019 12:30:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2019-08-05;
 bh=6STxnaYTVH9w0KpVd7unulEA976EI5OqdtthhDSM9j0=;
 b=iqH2S/d+xm0jh3eBy3XiTEbwyEEOJarIE/JK6QhhKXWYw5kxLWvpg9/VyIn1GDKpGpMM
 c2egbA5NASaDNA3e3a4/UsRsNFgLllrMMeTVq+ZQdNtT/1zc/tU6hJ9mSP9yzIDk3d0T
 kxZrpMw2WL1xRKmJeCx64LumxSXC9fRn06GAwJsNB+68vRdPKfQdOyphpUGigT7o2ewI
 mezpW9+4S+2fI38A9qgbCUqmR5EVfRfwzgez8sOQMA5cnRCNJ6BaLVe2xMMUVaP5jhR4
 eNbL2DaCjqA2vPFpSbEG9PWDIhRtJDdd3p3xN1+qKEpGuIRav5XmleUBL3s+RZzKxyhM FA== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_FEE5680D-A251-43C4-B8B1-5CCAE8B85315";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <CAGUWgD9si-9cayWBzt+AUi8iyb0hY=8fExf6-mLDr-C+mcqiyg@mail.gmail.com>
 <E0315DDE-505B-4D2A-8567-9E1BA39ADBBF@oracle.com>
In-Reply-To: <E0315DDE-505B-4D2A-8567-9E1BA39ADBBF@oracle.com>
Message-Id: <5B458214-EF60-45B1-B20C-585B5306D66A@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911080124
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9434 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911080124
Date: Fri, 8 Nov 2019 12:29:50 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Controversy and exploitability of gcc issue 30475
 |assert(int+100 > int)|
To: oss-security@lists.openwall.com

--Apple-Mail=_FEE5680D-A251-43C4-B8B1-5CCAE8B85315
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 8 Nov 2019, at 12:06, John Haxby <john.haxby@oracle.com> wrote:
>=20
> In this particular case, the assert() will always trigger if the assert i=
s on "a > INT_MAX-100" because that is well defined.   Does ubsan catch thi=
s issue?

Answering my own question:

foo.c:6:2: runtime error: signed integer overflow: 2147483647 + 99 cannot b=
e represented in type 'int'
a.out: foo.c:6: foo: Assertion `a+100 > a' failed.

jch

--Apple-Mail=_FEE5680D-A251-43C4-B8B1-5CCAE8B85315
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXcVfvgAKCRBFC7t+lC+j
yJWaAQC0aGmua3Dz9DFCHfTtVp4MP8GHLgdD5BT/jWsn+nA7gAD/StQhlK6/J9Ju
POHdnOsXqQgd27bSLgGl82Eq7B4mQLs=
=S+KL
-----END PGP SIGNATURE-----

--Apple-Mail=_FEE5680D-A251-43C4-B8B1-5CCAE8B85315--
