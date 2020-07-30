X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5369" "Thursday" "30" "July" "2020" "13:23:47" "+0100" "John Haxby" "john.haxby@oracle.com" nil "152" nil "^Date:" nil nil "7" nil nil (number mark "        john.haxby@o Jul 30  152/5369  " thread-indent "\"Re: [oss-security] UEFI SecureBoot bypass fixes rolled out to kernels below radar\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] UEFI SecureBoot bypass fixes rolled out to kernels below radar" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25975 invoked by uid 550); 30 Jul 2020 12:24:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25957 invoked from network); 30 Jul 2020 12:24:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2020-01-29;
 bh=+VMZmCnorevA/7cOg+gzge9MS/f8PxOixbv6Ml93KVM=;
 b=COcmmv6p+ahRz+ELIgm9qmN2Zn/kshYqFO8lJO3fPNwJ3d1SWG+UxGDp5dUf5DRYw4vm
 +mrjzW6D10RvSzLJiMVtOani6zt0zjj56rwh7moiCMGlAhIG/wBdFTSU9ei/KCKlAlMb
 ir9Fw+emgmhjO/U/Tigy5jQhY72vN8wyqJ5up37lrWbW4+77z3N9Jki1m6K8geRaQMJ0
 XBJbTPCH+tomPK+YbZ8Z8urh+IvYHIDL41ayeDWBsHdG5zUCj+6+3zNqyqh7lBDIqDWo
 Dbv4sfCg49QvYGdgmG9AH9mryGoh8UzWnob2uPJEJp6Wm2xKYnyWbY9xElfxvAMFkrga UQ== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0D08A9F2-66FC-47EE-87AF-99C785C2A23C";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
References: <20200730114841.GA513718@zx2c4.com>
In-Reply-To: <20200730114841.GA513718@zx2c4.com>
Message-Id: <C76592F6-5353-4C8C-9263-E911D7020BA6@oracle.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9697 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999 mlxscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007300092
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9697 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 clxscore=1034
 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007300092
Date: Thu, 30 Jul 2020 13:23:47 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] UEFI SecureBoot bypass fixes rolled out to kernels
 below radar
To: oss-security@lists.openwall.com

--Apple-Mail=_0D08A9F2-66FC-47EE-87AF-99C785C2A23C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 30 Jul 2020, at 12:48, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>=20
> Hi,
>=20
> I thought I should mention that yesterday's UEFI SecureBoot bypass
> headlines neglected to mention the bugs I found over a month ago (with
> the exception of Debian's announcement, which got some details wrong
> initially but those have since been rectified).
>=20
> It appears that Linux vendors are now releasing fixes for:
>=20
> - CVE-2019-20908
>  https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-=
language.sh
>  https://www.openwall.com/lists/oss-security/2020/06/14/1
>  https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-20908
>=20
> - CVE-2020-15780
>  https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-=
language-2.sh
>  https://www.openwall.com/lists/oss-security/2020/06/15/3
>  https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2020-15780
>=20
> In the Red Hat Enterprise Linux 8 kernel sources, diffing yesterday's
> release with the one from a few weeks prior, we see a patch for both of
> these, which I've put at the bottom of this email.
>=20
> It seems like mention of these was left out from the advisories that
> were making news yesterday from Microsoft/Red Hat/etc, presumably
> because there's no shiny logo and press release route with these
> exploits, but rather just shoddy exploits and posted them here,
> alongside patches on LKML.

Yep.  I mentioned these in my post yesterday but I didn't go into any detai=
l as they've been public for some little while.   The various vendor update=
s are patching both CVEs, as you noted.  Ubuntu punlished an advisory for t=
hese a few days ago (https://ubuntu.com/security/notices/USN-4440-1), we, a=
nd others, rolled the kernel fixes in with the rest of the changes.

Important and necessary as these fixes are they're not the main reason for =
pushing new kernels out along with updated grub and shim.   Complete mitiga=
tion requires updating the entire signature chain and most vendors needed t=
o resign the kernel.  (I'm not only losing track of who resigned what, but =
the will to live :))

>=20
> But anyway, PSA: if you're scrambling to get your systems updated for
> this, be sure to update your kernel in addition to GRUB2. This is more
> than just a bootloader situation. And I'm sure we'll have plenty more
> SecureBoot bypasses coming up too.


In other breaking news, software is buggy :)  As sure as it rains in Lancas=
hire, there will be more secure boot bypass bugs somewhere along the chain.=
  And we will be ready for them.

Seriously, as I and others have said several times: you must update the ent=
ire signature chain then, and only then, you must update the dbx.    Someon=
e, somewhere, probably several someones, are going to decide they know bett=
er and wind up bricking their secure boot systems.    Personally, they'll f=
ind my sympathy in short supply when they do :/

jch


>=20
> Jason
>=20
>=20
> RHEL8 patch, which shipped yesterday:
>=20
> diff -ru linux-4.18.0-193.13.2.el8_2/drivers/acpi/acpi_configfs.c linux-4=
.18.0-193.14.3.el8_2/drivers/acpi/acpi_configfs.c
> --- linux-4.18.0-193.13.2.el8_2/drivers/acpi/acpi_configfs.c	2020-07-14 0=
0:38:37.000000000 +0200
> +++ linux-4.18.0-193.14.3.el8_2/drivers/acpi/acpi_configfs.c	2020-07-20 1=
6:02:22.000000000 +0200
> @@ -14,6 +14,7 @@
> #include <linux/module.h>
> #include <linux/configfs.h>
> #include <linux/acpi.h>
> +#include <linux/kernel.h>
>=20
> #include "acpica/accommon.h"
> #include "acpica/actables.h"
> @@ -31,7 +32,10 @@
> {
> 	const struct acpi_table_header *header =3D data;
> 	struct acpi_table *table;
> -	int ret;
> +	int ret =3D kernel_is_locked_down("Modifying ACPI tables");
> +
> +	if (ret)
> +		return ret;
>=20
> 	table =3D container_of(cfg, struct acpi_table, cfg);
>=20
> diff -ru linux-4.18.0-193.13.2.el8_2/drivers/firmware/efi/efi.c linux-4.1=
8.0-193.14.3.el8_2/drivers/firmware/efi/efi.c
> --- linux-4.18.0-193.13.2.el8_2/drivers/firmware/efi/efi.c	2020-07-14 00:=
38:37.000000000 +0200
> +++ linux-4.18.0-193.14.3.el8_2/drivers/firmware/efi/efi.c	2020-07-20 16:=
02:22.000000000 +0200
> @@ -31,6 +31,7 @@
> #include <linux/acpi.h>
> #include <linux/ucs2_string.h>
> #include <linux/memblock.h>
> +#include <linux/kernel.h>
>=20
> #include <asm/early_ioremap.h>
>=20
> @@ -245,6 +246,11 @@
> static char efivar_ssdt[EFIVAR_SSDT_NAME_MAX] __initdata;
> static int __init efivar_ssdt_setup(char *str)
> {
> +	int ret =3D kernel_is_locked_down("Modifying ACPI tables");
> +
> +	if (ret)
> +		return ret;
> +
> 	if (strlen(str) < sizeof(efivar_ssdt))
> 		memcpy(efivar_ssdt, str, strlen(str));
> 	else
>=20
>=20


--Apple-Mail=_0D08A9F2-66FC-47EE-87AF-99C785C2A23C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXyK70wAKCRBFC7t+lC+j
yKAWAPsGBj8hFLc+sztz0+9qJx5ordXKL+jPFhTx1ekBAffGUgD/fRkrSp7XwWJZ
6vcktvPgke1g1RaKhqBY34kYJdb0CFA=
=qiwI
-----END PGP SIGNATURE-----

--Apple-Mail=_0D08A9F2-66FC-47EE-87AF-99C785C2A23C--
