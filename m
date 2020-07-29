X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4148" "Wednesday" "29" "July" "2020" "17:57:44" "+0100" "John Haxby" "john.haxby@oracle.com" nil "112" "[oss-security] multiple secure boot grub2 and linux kernel vulnerabilities" "^Date:" nil nil "7" nil nil (number mark "  z     john.haxby@o Jul 29  112/4148  " thread-indent "\"[oss-security] multiple secure boot grub2 and linux kernel vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] multiple secure boot grub2 and linux kernel vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 30608 invoked by uid 550); 29 Jul 2020 16:58:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30575 invoked from network); 29 Jul 2020 16:58:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : message-id : date : to; s=corp-2020-01-29;
 bh=3D3sc9BpNfvezNeCYWLfS3xVSP8TJqe5CpOpDvuJOac=;
 b=0ZO7j8OYhJl9RxA6KPHdeuHFTqB9c6BWmlokTKtbGRu2yr9R0y4g3DD3e10ntYWYdDqh
 088EKmpOHlELz6kze3UM5AiogF8zRMvPgW6EmFSLsTgEH2CIULBh9T5+tTvLB1f67rOj
 bIXq8jIgsPITSh6OA8ujfYPz7AlhQC97WPvIHLLsTZo7tLOpiQNUEvcEJq7kAids7spW
 RRnbxNNG4OGV476DBdPjZ4+6R7PnDIrBkMmcffU96orwt8HM6CdRXzuJsz0UTYVuviar
 qNUgPFNjPzJmj1WYquLSlwg3W0co0hJxGlszg5jeEz3/H7THrV85Ip/tGEY7QI6oAvLd mQ== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8A5A0217-310C-4200-B865-B4077DEFE17B";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <29B1C52A-3781-4893-BBB3-9345E98B83DC@oracle.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9697 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 spamscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007290114
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9697 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 clxscore=1034
 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007290115
Date: Wed, 29 Jul 2020 17:57:44 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] multiple secure boot grub2 and linux kernel vulnerabilities
To: oss-security@lists.openwall.com

--Apple-Mail=_8A5A0217-310C-4200-B865-B4077DEFE17B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

[This message expands slightly on the post to the distros list on 2020-07-2=
0.]

Hello All,

There are several CVEs both in GRUB2 and the Linux kernel (details
below) that compromise UEFI Secure boot and kernel lockdown.

 * These bugs allow unsigned code to be booted and run on hardware
   configured to prevent that.

 * Affected vendors will be publishing fixed, re-signed shim, grub and
   kernels to allow systems to continue to boot post-mitigation.
   Details of exactly what is published will vary from vendor to
   vendor.

 * The actual mitigation is a UEFI Revocation List update that
   prevents exploitable binaries from loading. This list will be
   available from: https://uefi.org/revocationlistfile soon.  Vendors
   may also include this in an updated release of a dbxtool package.

 * In addition to the Microsoft Key Encryption Key (KEK)-signed UEFI
   Revocation List updates, hardware vendors may also issue their own
   updates signed with their own KEKs.  Again, this will vary from
   vendor to vendor.

Exploiting these flaws require a significant level of access to a
system. The flaws would allow, for example, a nefarious kernel to hide
a rootkit or similar to be loaded onto a system that has UEFI Secure
Boot enabled. It is important to note that updating the exploitable
binaries does not in fact mitigate the CVE, since an attacker could
bring an old, exploitable, signed copy of a grub binary onto a system
with whatever kernel they wished to load. In order to mitigate, the
UEFI Revocation List (dbx) must be updated on a system. Once the UEFI
Revocation List is updated on a system, it will no longer boot
binaries that pre-date these fixes. This includes old install media.

Fully mitigating a system against these flaws should be done with the
clear understanding that old kernels and old install media will not
boot on a secure-boot system.

CVE details:

There are two kernel CVEs that are already public: CVE-2019-20908 and
CVE-2020-15780.  In addition there are the following GRUB2 CVEs:

CVE-2020-10713
    8.2/CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H
    This is the original flaw discovered by Eclypsium, also known as
    "BootHole" and is describe in Eclypsium's paper at
    https://www.eclypsium.com/2020/07/29/theres-a-hole-in-the-boot/

CVE-2020-14308
    6.4/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H
    grub2: grub_malloc does not validate allocation size allowing for
    arithmetic overflow and subsequent heap-based buffer overflow.

CVE-2020-14309
    5.7/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/A:H
    grub2: Integer overflow in grub_squash_read_symlink may lead to
    heap based overflow.

CVE-2020-14310
    5.7/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/A:H
    grub2: Integer overflow read_section_from_string may lead to heap
    based overflow.

CVE-2020-14311
    5.7/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/A:H
    grub2: Integer overflow in grub_ext2_read_link leads to heap based
    buffer overflow.

CVE-2020-15705
    grub: avoid loading unsigned kernels when grub is booted directly
    under secureboot without shim
    6.4/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H

CVE-2020-15706
    script: Avoid a use-after-free when redefining a function during
    execution
    6.4/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H

CVE-2020-15707
    grub2: Integer overflow in initrd size handling.
    5.7/CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/A:H

jch


--Apple-Mail=_8A5A0217-310C-4200-B865-B4077DEFE17B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXyGqiAAKCRBFC7t+lC+j
yDVlAP0T1HScFeWs9Km9rvycCI64rRO78pnrHtXZhnsh+SUGDQEAiOzWBAuhtlAO
rtOKKMaxsizLOcc6Km1wFGMrlZa0wQs=
=VudN
-----END PGP SIGNATURE-----

--Apple-Mail=_8A5A0217-310C-4200-B865-B4077DEFE17B--
