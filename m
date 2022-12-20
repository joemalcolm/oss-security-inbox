Received: (qmail 24313 invoked by uid 550); 20 Dec 2022 21:49:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22225 invoked from network); 20 Dec 2022 21:46:44 -0000
Date: Tue, 20 Dec 2022 15:46:28 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Cc: ovs-discuss <ovs-discuss@openvswitch.org>, i.maximets@ovn.org,
	Aaron Conole <aconole@redhat.com>,
	Qian Chen <cq674350529@gmail.com>
Message-ID: <Y6ItNDy/+sfibmNL@gentoo.org>
References: <0894155b-6a17-c117-d826-04e4a6b8ecfa@ovn.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oCSUAhiTEZXAEG66"
Content-Disposition: inline
In-Reply-To: <0894155b-6a17-c117-d826-04e4a6b8ecfa@ovn.org>
Subject: Re: [oss-security] [ADVISORY] LLDP underflow while parsing malformed
 Auto Attach TLV (Open vSwitch)

--oCSUAhiTEZXAEG66
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 20, 2022 at 10:39:23PM +0100, Ilya Maximets wrote:
> Description
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Multiple versions of Open vSwitch are vulnerable to crafted LLDP
> packets causing denial of service, and data underflow attacks.
> Triggering the vulnerabilities requires LLDP processing to be enabled
> for a specific port.  Open vSwitch versions prior to 2.4.0 are not
> vulnerable.
>=20
> The Common Vulnerabilities and Exposures project (cve.mitre.org)
> did not assign the identifier to this issue yet.  The identifier will
> be communicated separately.

Has a CVE been requested?

> This issue does not affect the `lldpd' project, although they share
> a code base.  The issue is related to parsing the Auto Attach TLVs,
> which is specific to the Open vSwitch implementation.
>=20
>=20
> Mitigation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> For any version of Open vSwitch, preventing LLDP packets from reaching
> Open vSwitch mitigates the vulnerability.  We do not recommend
> attempting to mitigate the vulnerability this way because of the
> following difficulties:
>=20
>     - Open vSwitch obtains packets before the iptables host firewall,
>       so ebtables on the Open vSwitch host cannot ordinarily block the
>       vulnerability.
>=20
>     - If Open vSwitch is configured to receive and transmit LLDP
>       messages, the required functionality will need to be disabled
>       potentially disrupting the network.
>=20
> We have found that Open vSwitch is subject to a denial of service, and
> possibly a remote code execution exploit when LLDP processing is enabled
> on an interface.  By default, interfaces are not configured to process
> LLDP messages.
>=20
>=20
> Fix
> =3D=3D=3D
>=20
> Patches to fix these vulnerabilities in Open vSwitch 2.13.x and newer are
> applied to the appropriate branches, and the original patch is located
> at:
>=20
>    https://mail.openvswitch.org/pipermail/ovs-dev/2022-December/400596.ht=
ml
>=20
> Recommendation
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> We recommend that users of Open vSwitch apply the respective patch, or
> upgrade to a known patched version of Open vSwitch.  These include:
>=20
> * 3.0.3
> * 2.17.5
> * 2.16.6
> * 2.15.7
> * 2.14.8
> * 2.13.10
>=20
>=20
> Acknowledgments
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> The Open vSwitch team wishes to thank the reporter:
>=20
>   Qian Chen <cq674350529@gmail.com>
>=20






--oCSUAhiTEZXAEG66
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY6ItNAAKCRCgXq2+aa/J
tbiMAP4h/re5PROhzGWkQstyYZn8ExingE+ufLYHnJ7ug6pURAD/Qy/Rxh5WiL1Q
gdFgJfy1ZhH4yT5TESfOVBL7WAa6BwI=
=TW+u
-----END PGP SIGNATURE-----

--oCSUAhiTEZXAEG66--
