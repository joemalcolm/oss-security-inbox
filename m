X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1112" "Monday" "7" "December" "2020" "10:23:45" "+0000" "John Haxby" "john.haxby@oracle.com" "<76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>" "37" "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil "12" "2020120710:23:45" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" (number mark "U       john.haxby@o Dec  7   37/1112  " thread-indent "\"Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2\"\n") "<CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>" ("<CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12156 invoked by uid 550); 7 Dec 2020 10:24:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12135 invoked from network); 7 Dec 2020 10:24:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : message-id :
 content-type : mime-version : subject : date : in-reply-to : cc : to :
 references; s=corp-2020-01-29;
 bh=lf0dmJ4dszayB1hwXrbQspLwW05IBV9pnfO0MrrouZQ=;
 b=xLoXg2KDsBO4cFLW4Gjs3eSELapmT1EXeBKhIcyJLrK9ftmEcWem2s0YOJdixcRRqfel
 5FcLP1B3lPslZsI/r6ExZ58ZKmH2SJ82H5NTZoSBIkuQ+zTqDx0mA+nabE/CddsiZENU
 mdx5QLyZBnOOlK0A8GdYJTUWilnLy56qIbK6Bfk75J+CFKQ605Wrw0LDn5SB/5cpemav
 og9L72liPGmFTMWbeGFIWpaX8YaMTBXkyovnl0Gn47XAVsgc3j4qLqX9xUnKhFiIWZ2Q
 b2jCP6IdoPzNM9XLwXQQ5BIRlI4DChgzzZBcxUfaQvTBXySihmyHZ9QKKVsHllCqOpuL iw== 
From: John Haxby <john.haxby@oracle.com>
Message-Id: <76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0486423E-E752-4CEF-9B62-33A90A21CC64";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Date: Mon, 7 Dec 2020 10:23:45 +0000
In-Reply-To: <CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>
Cc: nopitydays@gmail.com
To: oss-security@lists.openwall.com
References: <CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9827 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0 mlxscore=0
 malwarescore=0 suspectscore=1 mlxlogscore=999 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012070065
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9827 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=999 clxscore=1034 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012070065
Subject: Re: [oss-security] Linux kernel NULL-ptr deref bug in
 spk_ttyio_receive_buf2

--Apple-Mail=_0486423E-E752-4CEF-9B62-33A90A21CC64
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii



> On 7 Dec 2020, at 02:20, Shisong Qin <qinshisong1205@gmail.com> wrote:
> 
> Recently we found another NULL-ptr deref BUG in spk_ttyio.c in the latest
> Linux kernel(5.9.11 is the latest at that now). In the
> spk_ttyio_receive_buf2() function, it would dereference spk_ttyio_synth
> without checking whether it is NULL or not, and may lead to a NULL-ptr
> deref crash.

Did you ask for a CVE for bug?

jch

--Apple-Mail=_0486423E-E752-4CEF-9B62-33A90A21CC64
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCX84CsQAKCRBFC7t+lC+j
yAUuAQCVoswv7YHfC17gb/giZBPRbffoUugNnHnpTpewV3tw4AD+LA8BEmhWs/+D
H9C4XXIAnqhXPhR7fF4pio//Dh82aDk=
=L/r0
-----END PGP SIGNATURE-----

--Apple-Mail=_0486423E-E752-4CEF-9B62-33A90A21CC64--
