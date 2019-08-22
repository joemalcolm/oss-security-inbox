X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3649" "Thursday" "22" "August" "2019" "10:04:42" "+0100" "John Haxby" "john.haxby@oracle.com" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "90" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082209:04:42" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "U       john.haxby@o Aug 22   90/3649  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6137 invoked by uid 550); 22 Aug 2019 09:06:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6111 invoked from network); 22 Aug 2019 09:06:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 mime-version : subject : date : references : to : in-reply-to :
 message-id; s=corp-2019-08-05;
 bh=1GyIQEC8+nDGT9gRexfy56HjFDOwLjTG0FUF13dvmbI=;
 b=MWQA3lCWdcm1vhpc/65Hf2vkB2BWE5Ml7LSbBMamRcQWlzmA37y077BcBYnXC4lJPqAP
 5/z0xHaHu60H5VsEqM89Y4dZnFND4LhvyFYt3GPV6I9NHTDa4pjEbXn+Dv75unO4+JZ4
 Dw+zhicwCq8iu0h/0wO3gVwOVUy13pj6GGQlfp2C3KolHsWdSpv1O/gRZwZPfHfz4KcT
 plBY0jlW/vy5nTo46cbe/ZWFBFLffN/d/fa+xGahqrj1Q3swMDo43IHvrU8AJssmx+D/
 OVzCtBA6/ZMALQwDc6rBnc250eAJneTdiFyAHzn61SXrfWZVaoW0AFs7lGUf0QwBX9D1 4g== 
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F3AEE911-DF1B-4091-AA44-4BDC7FF7BAF9";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
In-Reply-To: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
Message-Id: <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908220100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9355 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908220100
Date: Thu, 22 Aug 2019 10:04:42 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

--Apple-Mail=_F3AEE911-DF1B-4091-AA44-4BDC7FF7BAF9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 20 Aug 2019, at 19:20, Andrey Konovalov <andreyknvl@gmail.com> wrote:
>=20
> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15216
>=20
> An issue was discovered in the Linux kernel before 5.0.14. There is a
> NULL pointer dereference caused by a malicious USB device in the
> drivers/usb/misc/yurex.c driver.
>=20
> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15217
>=20
> An issue was discovered in the Linux kernel before 5.2.3. There is a
> NULL pointer dereference caused by a malicious USB device in the
> drivers/media/usb/zr364xx/zr364xx.c driver.
>=20
> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15218
>=20
> An issue was discovered in the Linux kernel before 5.1.8. There is a
> NULL pointer dereference caused by a malicious USB device in the
> drivers/media/usb/siano/smsusb.c driver.
>=20
> * https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2019-15219
>=20
> An issue was discovered in the Linux kernel before 5.1.8. There is a
> NULL pointer dereference caused by a malicious USB device in the
> drivers/usb/misc/sisusbvga/sisusb.c driver.


Are these even realistic?   If I'm going to leave malicious USB devices in =
the parking lot for mischief am I going to rely on the unknown victim runni=
ng a Linux distro with the requisite kernel modules or am I going to just d=
rop a cheap and near-universal USB killer?

If I'm going to be connecting the USB device to unguarded laptops myself to=
 crash them, as opposed to destroy them, why not just casually lean on the =
power button for a few seconds?[1]

Actually, this is the CVSS3 score for a laptop's power button: 4.6 (CVSS:3.=
0/AV:P/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H (Medium).   There isn't a vector for =
a USB killer because there's no "A:P" (permanent loss).

I'm not saying that these aren't bugs that should be fixed, far from it.  T=
hat's not the issue.  The issue is that, for example, PCI DSS requires fixe=
s for anything with a score >=3D 4.0 so we have endless end-users demanding=
 fixes for their servers which don't have even physical access or, indeed, =
physical presence.  It's not even demanding the fixes as they may already b=
e fixed or simply not applicable because the affected driver isn't present;=
 it's the hours or days wasted verifying that the fix available or not pres=
ent.[2]



Frustrated of Lancashire, jch


[1] Some may remember the VAX 11/750 reset button.  In order to be able to =
use the serial console (usually a DECwriter) you had to have the key in whi=
ch also enabled the reset button.   Before I put the VAX "Do Not Copy this =
Key" key (yes, it fits all 750s) I pressed accidentally pressed the reset b=
utton a couple of times just by propping myself up on the machine.  Spectac=
ularly bad design by today's standards.


[2] Full disclosure.  It's ultimately about me because it's me that eventua=
lly gets the "customer requires fix for CVE-2019-15216" :)

--Apple-Mail=_F3AEE911-DF1B-4091-AA44-4BDC7FF7BAF9
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCXV5aqgAKCRBFC7t+lC+j
yDNfAP9QKn5QkNoUHBYeeMZA6CJ2Y4x+y6lRW7dikChm5adBsgD+Jd7a6ZVML3Dc
GJtgn/IV/NDmoJTn+Nr8bTOjD/kPZmM=
=rKON
-----END PGP SIGNATURE-----

--Apple-Mail=_F3AEE911-DF1B-4091-AA44-4BDC7FF7BAF9--
