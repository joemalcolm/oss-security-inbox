X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6510" "Thursday" "18" "August" "2016" "17:43:50" "+0100" "Ben Hutchings" "ben@decadent.org.uk" "<1471538630.13300.95.camel@decadent.org.uk>" "163" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016081816:43:50" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        ben@decadent Aug 18  163/6510  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<20160818151654.GK2701@suse.de>" ("<20160818142216.GH2701@suse.de>" "<20160818143014.GA27854@kroah.com>" "<20160818143957.GI2701@suse.de>" "<20160818145724.GA32181@kroah.com>" "<20160818151654.GK2701@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9859 invoked by uid 550); 18 Aug 2016 16:55:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5570 invoked from network); 18 Aug 2016 16:44:17 -0000
Message-ID: <1471538630.13300.95.camel@decadent.org.uk>
In-Reply-To: <20160818151654.GK2701@suse.de>
References: <20160818142216.GH2701@suse.de>
	 <20160818143014.GA27854@kroah.com> <20160818143957.GI2701@suse.de>
	 <20160818145724.GA32181@kroah.com> <20160818151654.GK2701@suse.de>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-1r+d8SaZLBATMht7SF2n"
X-Mailer: Evolution 3.20.4-1 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 82.70.136.246
X-SA-Exim-Mail-From: ben@decadent.org.uk
X-SA-Exim-Scanned: No (on shadbolt.decadent.org.uk); SAEximRunCond expanded to false
Cc: OSS Security List <oss-security@lists.openwall.com>,
 cve-assign@mitre.org,  security@kernel.org
Date: Thu, 18 Aug 2016 17:43:50 +0100
From: Ben Hutchings <ben@decadent.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in
 malicious USB devices
To: Marcus Meissner <meissner@suse.de>, Greg KH <greg@kroah.com>

--=-1r+d8SaZLBATMht7SF2n
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2016-08-18 at 17:16 +0200, Marcus Meissner wrote:
> On Thu, Aug 18, 2016 at 04:57:24PM +0200, Greg KH wrote:
> >=20
> > On Thu, Aug 18, 2016 at 04:39:57PM +0200, Marcus Meissner wrote:
> > >=20
> > > On Thu, Aug 18, 2016 at 04:30:14PM +0200, Greg KH wrote:
> > > >=20
> > > > On Thu, Aug 18, 2016 at 04:22:16PM +0200, Marcus Meissner wrote:
> > > > >=20
> > > > > Hi,
> > > > >=20
> > > > > I think this does not have a CVE yet, please assign.
> > > > >=20
> > > > > https://www.spinics.net/lists/linux-usb/msg144177.html
> > > > >=20
> > > > > Headline:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Li=
nux Kernel Panic Over USB with HID Keyboard wMaxPacketSize
> > > > > Platforms:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Ubuntu
> > > > > Versions:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Li=
nux Kernel 4.4.0-22-generic
> > > >=20
> > > > Huh?=C2=A0=C2=A0It's much more pervasive than just that single plat=
form or single
> > > > version.
> > >=20
> > > That was the quote from the original e-mail. I read further on it aff=
ects
> > > more kernel versions.
> > > =C2=A0
> > > >=20
> > > > >=20
> > > > > CVSS Score:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A04.7
> > > > > CVSS Vector:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0AV:L/AC:M/Au:N/C:=
N/I:N/A:C
> > > > > Filed Defects:=C2=A0=C2=A0=C2=A0=C2=A0
> > > > > Related Defects:=C2=A0=C2=A0
> > > > > CWE Tags:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > > > > Cycle:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
> > > > > Found by:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Ja=
ke Lamberson
> > > > >=20
> > > > >=20
> > > > > Linux Kernel panics when using an OHCI controller if a USB device=
 reports being=C2=A0
> > > > > a generic HID keyboard and reports a wMaxPacketSize of over 4095.=
 The OHCI
> > > > > controller driver fails to reserve bandwidth for the device, caus=
ing the=C2=A0
> > > > > keyboard handler to fail when attaching to the HID. Later, when t=
he device is=C2=A0
> > > > > removed, the system crashes due to a null pointer dereference in =
a linked list=C2=A0
> > > > > of endpoint descriptors. The crash can be re-created using a Face=
dancer and UMAP=C2=A0
> > > > > software. Given an appropriately configured Facedancer and UMAP s=
etup, the crash=C2=A0
> > > > > can be re-created with:=C2=A0
> > > > > sudo board=3Dfacedancer21 python3 umap.py -P /dev/serial_device_h=
ere -f 03:00:00:E:0046 -l LOG
> > > > >=20
> > > > > Note: OHCI is a USB 1.1 controller standard that can be included =
with devices
> > > > > that support either USB 1.1 or 2.0 as their highest USB spec. USB=
 3.0 devices
> > > > > all use xHCI, which implements USB 1.1, 2.0, and 3.0, making them=
 immune to
> > > > > this particular bug.
> > > > >=20
> > > > > -----------------
> > > > >=20
> > > > > The proposed fixing patch is here:
> > > > > https://www.spinics.net/lists/linux-usb/msg144269.html
> > > > >=20
> > > > >=20
> > > > > It has not yet been committed to the USB tree or to Linus Tree as=
 far as I see.
> > > >=20
> > > > Not true, it is commit id aed9d65ac3278d4febd8665bd7db59ef53e825fe =
in
> > > > the usb tree and in linux-next and will be sent to Linus tomorrow.
> > >=20
> > > Ah sorry, only looked briefly.
> >=20
> > This was also asked about 2 hours ago on the linux-usb mailing list, why
> > all of the sudden interest in something that we had been discussing for
> > weeks now in public?
>=20
> No one asked for a CVE before.
>=20
> If that email request was from Oliver Neukum, he pinged me on it, so I
> started acting on it, so that explains this parallelism.
> =C2=A0
> >=20
> > >=20
> > > >=20
> > > > And are we really assigning CVE numbers for when you use an active
> > > > "hardware test probe"?=C2=A0=C2=A0If so, how many are people going =
to be assigning
> > > > for these same problems on other operating systems?=C2=A0=C2=A0:)
> > >=20
> > > I think attaching malicious USB devices and crashing the kernel should
> > > probably get CVE ids, or do you think it should not?
> >=20
> > I don't know, that's why I'm asking, it requires "physical presence"
> > which is much different from most threat models that people work to
> > protect against.
>=20
> There has been quite a number of CVEs assigned to malicious USB devices
> this year already, this does not seem to be different.
>=20
> (e.g. CVE-2016-2384, CVE-2016-2188, CVE-2016-2187 etc.)

An attacker that has physical access to a USB port can short VCC to GND
and likely destroy chips.=C2=A0=C2=A0If that is prevented by current limiti=
ng
they can still destroy the port with glue or corrosive liquid. =C2=A0The
possibility of crashing the OS is (usually) a much less serious DoS and
doesn't seem to me to be worth worrying about.

However, physical access to a USB port doesn't necessarily mean (easy) phys=
ical access to the rest of the machine. =C2=A0So vulnerabilities that allow=
 a USB device to corrupt memory (such as CVE-2016-2384) can lead to a real =
privilege escalation and so are more concerning.

Ben.

--=20
Ben Hutchings
Klipstein's 4th Law of Prototyping and Production:
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0A fail-sa=
fe circuit will destroy
others.=

--=-1r+d8SaZLBATMht7SF2n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXteXGAAoJEOe/yOyVhhEJTwgP/3wfD0NAxnZ1jUIGrb2eR6V2
EptBYjoyJiDZ5efKf8/ea2wGzz81igEGyl8AQ4dIcE58fGUgs5kwFswwhYCS6Qjn
mwvYdH9t2cA1btiyvHeFlZRA5zrZp+MVaSDHhB3icfJFtxDfNjk8cqwYD36BVUEy
EoNTI9RNGIHwE5eof1folPWlzQfQsRh6grSeMGNBkRsL+p2ieveS0KidVfDZ/p2H
JvJ1QN5XrwlckZZFdMQ0UyH0tRV7ScZu9C/RM7jgWnaNu9dBNcIEHlmdn5OPjtrS
m91vw0fG77x/TC06arQYLVEfgr8XkY4bxPTDZU5NdguRMO9FJ3cZJDJjZbP4uqE1
guztltLNgeTcUhkTIlYaBT1CmJfHV/D+eNcJQAhTwOM73/84qTJiCiD2SXZ07GYH
xTpaHkUSC4vLWvH1uhUR+ZsXzk3lEBy2xqbfqhOLGJZv9mmSKBnWbdQSW0fGahu/
EuxL6MhRdr1QvafuyjIW5ImPeh9XNIMeDtufH2Z2YK5YonCmgWofft9c4CAxLrsL
SzfyMwHKQmc7+qsGAtix8ESYhODg0fLsloWrSkQlKS3q7vkmCkz/lg2SoFZdEC3f
Q0BLtyZ6lotCHEVbs3WEPpd7KGWyfY+c1RqN34eYrEBMBbVymyy7M33ra0XA/83B
000RnI2Brsoi4CSkmD+w
=5Bc4
-----END PGP SIGNATURE-----

--=-1r+d8SaZLBATMht7SF2n--
