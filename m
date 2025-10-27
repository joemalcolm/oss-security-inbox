Received: (qmail 9859 invoked by uid 550); 28 Oct 2025 00:13:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11686 invoked from network); 27 Oct 2025 23:15:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=korelogic.com;
	s=mail; t=1761606911;
	bh=mx/TyK7RXkVJtDZtBfYAcIYRNozNxtIJAPVrkyKQQGA=;
	h=Date:From:To:Subject:Reply-To:In-Reply-To;
	b=mXFu8VXRm99IbXcC+k9vKsxs5zviHWZw7F/e3BBQZ6jynqgsRN8UcnSZNbOXzM4wK
	 iYBRQ7PmzudfOf3DBziRnfZR6RrFg6BH5ylcsJUvHbRC4UfV6vX+Lw6NdkPrhtWXxG
	 dOkyodWibvzVeNuX3Gsr5jY1tp4OVBzlI64tmWmI=
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.4.3 at mail.korelogic.com
Date: Mon, 27 Oct 2025 17:15:09 -0600
From: Hank Leininger <hlein@korelogic.com>
To: oss-security@lists.openwall.com
Message-ID: <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lv2UzX32uXgwtVyF"
Content-Disposition: inline
In-Reply-To: <aP_msOoiyHJ_M4Yx@mertle>
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

--lv2UzX32uXgwtVyF
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[ Replying to Michael because this is a perfect jumping-off point, not
  because I'm saying anything he doesn't know. ]

On 2025-10-27, Michael Orlitzky wrote:
> On 2025-10-27 19:21:54, Moritz M=FChlenhoff wrote:
> > > On Mon, Oct 27, 2025 at 09:34:03AM -0700, Alan Coopersmith wrote:
> > >=20
> > > and if you can replace the server's configuration file you don't
> > > need to play games with putting invalid contents in to break the
> > > parser, but can simply change the configuration directly.
>
> > The same nonsense also happened for the Kamailio SIP server
> > (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206 and CVE-2025-12207).
>
> Config parser exploits are not necessarily bogus. The admin might
> allow group/ACL edits to the configuration files knowing that it
> allows group members to torch the service in question, while, at the
> same time, not trusting those group members to execute arbitrary
> commands as root.

For a particular package/system/deployment, sure. For the dnsmasq
package? I don't think the project claims it's safe to make dnsmasq.conf
editable by non-root-equivalent users. Heck just use the dhcp-script=3D...
hook along with user=3Droot to keep privs. Or in the case of kamailio, it
looks like it has exec_*, app_*, etc.

Somebody could, on a per-package basis, investigate config
options/syntax, decide if it's safe / try to create a safe wrapper
around config-editing, which knows how to lint edits and which
parameters are dangerous, or something.

Which works fine until it doesn't. It's like the #2 way to break out of
appliances' locked-down custom CLIs or web UI, after simple command
injection.

However, in that case it'd be CVEs in the appliance/wrapper thing,
"XYZ CLI privilege escalation via malicious dnsmasq.conf edits", great.
A CVE in OpenSSH that requires writing to sshd_config would be bonkers.
A CVE for an appliance whose CLI allows you to set an arbitrary "banner"
string and write it to /etc/ssh/sshd_config.d/pwned? Sure!

Thanks,

--=20

Hank Leininger <hlein@korelogic.com>
8428 ED14 5268 C727 0C48  F454 846F 0637 5FEB 1612

--lv2UzX32uXgwtVyF
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQJPBAEBCAA5FiEEhCjtFFJoxycMSPRUhG8GN1/rFhIFAmj//PgbFIAAAAAABAAO
bWFudTIsMi41KzEuMTEsMiwyAAoJEIRvBjdf6xYS/V8QAMKiBqZFRdornXdIsQQz
zHsfhykcoP9cf7uueXmHDVQ0ly84aGKT4Ya4PDet9UWJAPl5GAySPevtytmLA7rR
oygPCsrRD/oEwObStnk8L5CPH7VPLWAAEv4Q0tIa7wTpYerpm79V6CDNNDk5lfY3
yFSNjvpEZof08NcBeT7POob3Qdc16aCWz0G0up5xRf0Kihyju1aDzoxSMHkpnXgn
nlHURI0q0tO3f8WVnaRGCLEPS9Uh0dKDi1/uGSSlYg7mpn9wFTf+YGfp85oaLBs3
OcSHBiENSDm/2mal/uX+mG/V01nTCJsQemWLUJT1UDhl/1C9Ef8cCbT3hd5NEPuj
jzOzdJkwtB5C8aBl6Bl5bqQ/amWzVEs27/b9qafI9tr3AF01yMj24miWTeJtPWh9
HLCx1d2HlpWjt3M0LCC1M3anwObUoRhI8mIVPmFl15U2mQ3bDCfvF1zSly5+PkWc
6NAsGK0xfWTey8FtHphK9lFDGDoJfbGSk4g7gA9HNCDYFEjkSE9I/QQd/eNZ8PjB
GS2titzkn4PTF/KsCIbcq3r0AcMGEORd8bJBx8/EHyMlZBNhmJzsc02jrJ4lxT+R
AHoVeqRPvHc5VpNr6lzA0dexnQJj/jf+8Uccb2VTy8p6P3oPSrhWw+FlG9YztKLC
aVhfjyYLo2fd1awsc1UlUepD
=GpMh
-----END PGP SIGNATURE-----

--lv2UzX32uXgwtVyF--
