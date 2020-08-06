X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3537" "Thursday" "6" "August" "2020" "10:40:49" "-0700" "James Bottomley" "jejb@linux.ibm.com" "<1596735649.25458.15.camel@linux.ibm.com>" "74" "Re: [oss-security] Multiple Security Issues in the TrouSerS tpm1.2 tscd Daemon" nil nil nil "8" "2020080617:40:49" "[oss-security] Multiple Security Issues in the TrouSerS tpm1.2 tscd Daemon" (number mark "U       jejb@linux.i Aug  6   74/3537  " thread-indent "\"Re: [oss-security] Multiple Security Issues in the TrouSerS tpm1.2 tscd Daemon\"\n") "<20200806110623.yubvwntnnuhff46p@archlinux.org>" ("<20200520125438.GB12616@f195.suse.de>" "<hmnd04492x6.fsf@jsnitsel.users.ipa.redhat.com>" "<20200806110623.yubvwntnnuhff46p@archlinux.org>") nil nil nil nil nil nil nil "Re: [oss-security] Multiple Security Issues in the TrouSerS tpm1.2 tscd Daemon" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10041 invoked by uid 550); 6 Aug 2020 22:00:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15945 invoked from network); 6 Aug 2020 17:41:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=message-id : subject :
 from : reply-to : to : cc : date : in-reply-to : references : content-type
 : mime-version; s=pp1; bh=Ggdixp25COrAnJXMiiC7x7g8FhnFwCDtJQoF4j14188=;
 b=I8tet/R7kjWwKUHIjt/P3MS9eNHKXPFQIqwYk4DsA3cgNvi3FXbVg+A6tkm/gq9Ih3nG
 aji+oqOoggtG6AQMwPe2lhWYttMDdedic6FndjFtX54i35bswsQ3Gx3hIR/F5oUxi+ey
 n96Qx8pY01WMi2paBb3ZKLomA9iTY7G8RZslJua2+Urnc1yqaezgUxHN2Zc2d8ruI91P
 Szu1ozhsbzQwm1vjhfh/KnQjFEdJSVfFgzsTYYPoH7yu/rqSDgtoCa56RQsGhJW8T1b7
 hVRVR1wmw2zL/lgSFV9oZpqchb6jqIjnyGt3c490GIkXGHAsQDMgu8DD3WNpg+8K649d 8Q== 
Message-ID: <1596735649.25458.15.camel@linux.ibm.com>
From: James Bottomley <jejb@linux.ibm.com>
To: Jonas Witschel <diabonas@archlinux.org>, oss-security@lists.openwall.com
Cc: trousers-tech@lists.sourceforge.net, security@suse.de
Date: Thu, 06 Aug 2020 10:40:49 -0700
In-Reply-To: <20200806110623.yubvwntnnuhff46p@archlinux.org>
References: <20200520125438.GB12616@f195.suse.de>
	 <hmnd04492x6.fsf@jsnitsel.users.ipa.redhat.com>
	 <20200806110623.yubvwntnnuhff46p@archlinux.org>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-rSaRzopW7gQzI/88oCVR"
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-06_13:2020-08-06,2020-08-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 lowpriorityscore=0 spamscore=0 impostorscore=0 mlxscore=0 phishscore=0
 clxscore=1034 malwarescore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008060115
Subject: Re: [oss-security] Multiple Security
 Issues in the TrouSerS tpm1.2 tscd Daemon

--=-rSaRzopW7gQzI/88oCVR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2020-08-06 at 13:06 +0200, Jonas Witschel wrote:
> On 2020-08-05 14:51, Jerry Snitselaar wrote:
> > > Mitigation and Bugfixes
> > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > >=20
> > > It seems best to me to run the tcsd as the tss:tss user and group
> > > right away and to not rely on the privilege drop logic
> > > implemented in the daemon itself. All of a), b) and c) should no
> > > longer be problematic in this case. I found that on Debian and
> > > Gentoo Linux this is already the case. To make this work a
> > > udev rule needs to be packaged that passes ownership of /dev/tpm0
> > > device to the tss user. To prevent regressions when switching
> > > from the privilege drop approach to this new approach, a possibly
> > > already existing /var/lib/tpm/system.auth file needs to be safely
> > > chown()'ed to the tss user during package updates.
> > >=20
> >=20
> > On Fedora and RHEL there currently is a udev rule (from upstream)
> > that ships with the tpm2-tss package that is setting ownership of
> > /dev/tpm0 to tss:root. I don't recall what the reasoning was for
> > the group being root. For /dev/tpmrm0 it sets it to tss:tss, so not
> > sure what the reason was for /dev/tpm0. I believe that package is
> > part of a default install, so that will need to be worked out. I
> > don't know if you run into that with SUSE as well.
>=20
> The idea behind not giving the tss group access to /dev/tpm0 as well
> is to prevent users from gaining direct access to the TPM and being
> able to DoS it. Users privileged to access the TPM should be added to
> the tss group so that they can access the TPM trough an access
> broker/resource manager (like tpm2-abrmd, the in-kernel resource
> manager /dev/tpmrm0, or tcsd in case of TPM 1.2), but not have "bare
> metal" access, which is limited to the tss user and root. See [1] for
> reference.

That may be a bit of a misconception about how tpmrm operates.  It's
simply the in-kernel resource manager which virtualizes the transient
objects and the session handles (as far as the latter can be
virtualized), so users making contact with the TPM over the tpmrm
device can't interfere with each other (very necessary with TPM 2.0
because it only has room for 3 transient keys).  However, a user with
tpmrm access can still DoS the TPM by making it derive RSA keys, for
instance.  Plus they can still access the full range of TPM privileged
commands if they have the authorizations.  There was talk of adding a
command restriction filter to tpmrm, but it's very hard to do reliably,
which is why it's not been done.

Basically TPM should be treated as a single owner resource, but that
single owner still needs help: I use my TPM for keys for ssh, gpg,
openvpn, secure boot and my general CA infrastructure.  Since those
applications operate independently, they could stack enough transient
objects into the TPM to give me an out of memory error unless I go via
the tpmrm device.

James

--=-rSaRzopW7gQzI/88oCVR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABMIAB0WIQTnYEDbdso9F2cI+arnQslM7pishQUCXyxAogAKCRDnQslM7pis
hX1bAQCn28W27fDJlsK+M9+oxX8SNel9/KqL7CiWGCRmtKrj1gD/eh0V2TTrbKfu
l8fxLZBwYwrvTUl2WHmPE8g1MYUxULI=
=BL+Q
-----END PGP SIGNATURE-----

--=-rSaRzopW7gQzI/88oCVR--

