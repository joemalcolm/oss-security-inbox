X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11112" "Thursday" "30" "January" "2020" "18:00:03" "+0000" "John Haxby" "john.haxby@oracle.com" "<7151FEEF-4905-4333-8F4A-8B46AEC36E07@oracle.com>" "218" "[oss-security] CVE-2019-3016: information leak within a KVM guest" "^Date:" nil nil "1" "2020013018:00:03" "[oss-security] CVE-2019-3016: information leak within a KVM guest" (number mark "        john.haxby@o Jan 30  218/11112 " thread-indent "\"[oss-security] CVE-2019-3016: information leak within a KVM guest\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-3016: information leak within a KVM guest" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32127 invoked by uid 550); 30 Jan 2020 18:00:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32105 invoked from network); 30 Jan 2020 18:00:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : message-id : date : to; s=corp-2019-08-05;
 bh=3CcKtMo8KA78jWH7herSBoYZmgVcI1YxUs+6QMuPPmY=;
 b=mPA7RhV9zhQzR4bHNCHFYlkK+qUKq7SRsmiCdlzS1qFZJhN0BkeWRc6kcC13M1WbGqIm
 YErtt34GN8SphAyomxsHLtA+sLkEvDTKLuBKzdds6niP+pUscGozhrvkJH0D7Wvv1tBk
 IzaltmW+lYzOv3WEH2y8ZfIVC6HVUanmsezpWv9YoPMFURrfL4wYUuX2AlL/me4QexTo
 HSkXRRGMfYtAkCDYG7MuwmJPfSIP5FBUMvnwAgUUU+2HzX9niP2j6SDsj1ICKTfADlEr
 3Myg1I1HP4sOYgFRqN2xYFh25VHRxiTfF+Imz1lfUKggZH0Y2pJVX08SzCFSBHESQOMy 6w== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_01D82B3D-B5DE-4A9D-A852-5C0C99FE40EA";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Message-Id: <7151FEEF-4905-4333-8F4A-8B46AEC36E07@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9516 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001300124
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9516 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001300124
Date: Thu, 30 Jan 2020 18:00:03 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-3016: information leak within a KVM guest
To: oss-security@lists.openwall.com

--Apple-Mail=_01D82B3D-B5DE-4A9D-A852-5C0C99FE40EA
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_373721EB-361F-409A-87E9-CBBCF828F9CC"


--Apple-Mail=_373721EB-361F-409A-87E9-CBBCF828F9CC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

The problem is missing TLB flushes which potentially allows a process in a =
KVM guest to access memory locations within that guest that it should not h=
ave access to.

The problem is limited to host kernels 4.10 onwards with guest kernels runn=
ing 4.16 onwards and PV TLB exposed to the guests.  Additionally, the probl=
em mainly affects AMD processors but we cannot rule out Intel CPUs.

=46rom the patch cover note:

> The KVM hypervisor may provide a guest with ability to defer remote TLB
> flush when the remote VCPU is not running. When this feature is used,
> the TLB flush will happen only when the remote VPCU is scheduled to run
> again. This will avoid unnecessary (and expensive) IPIs.
>=20
> Under certain circumstances, when a guest initiates such deferred action,
> the hypervisor may miss the request. It is also possible that the guest
> may mistakenly assume that it has already marked remote VCPU as needing a
> flush when in fact that request had already been processed by the hypervi=
sor.
> In both cases this will result in an invalid translation being present in=
 a
> vCPU, potentially allowing accesses to memory locations in that guest's
> address space that should not be accessible.
>=20
> Note that only intra-guest memory is vulnerable.
>=20
> The attached patches address both of these problems:
> 1. The first patch makes sure the hypervisor doesn't accidentally clear
> guest's remote flush request
> 2. The rest of the patches prevent the race between hypervisor
> acknowledging a remote flush request and guest issuing a new one.


Part of the attached patches were discovered independently[1] and made publ=
ic on 2019-01-16 although it was our considered opinion that the security i=
mplications of this were not at all obvious so we kept the embargo.

The original patches posted to linux-distros broke ARM so I'm attaching the=
 v2 patches.  These will be heading to the mainline kernel shortly.

jch


[1] https://lore.kernel.org/kvm/20200116001635.174948-1-jmattson@google.com



--Apple-Mail=_373721EB-361F-409A-87E9-CBBCF828F9CC
Content-Disposition: attachment;
	filename=CVE-2019-3016.v2.tgz
Content-Type: application/octet-stream;
	x-unix-mode=0644;
	name="CVE-2019-3016.v2.tgz"
Content-Transfer-Encoding: base64

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
eAAA

--Apple-Mail=_373721EB-361F-409A-87E9-CBBCF828F9CC--

--Apple-Mail=_01D82B3D-B5DE-4A9D-A852-5C0C99FE40EA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXjMZowAKCRBFC7t+lC+j
yAYnAP9xWzZsYEh4zKYLd7yEyUbBQug9NxWhOJXq7uz1Ag8XZAD/fIpQie2WZN5B
fiCNpHvoLH9OuvBWFtQIRKm7p40JFic=
=nfv9
-----END PGP SIGNATURE-----

--Apple-Mail=_01D82B3D-B5DE-4A9D-A852-5C0C99FE40EA--
