X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2154" "Tuesday" "2" "February" "2016" "12:27:46" "-0800" "Seth Arnold" "seth.arnold@canonical.com" "<20160202202746.GA27418@hunt>" "49" "Re: [oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus" "^Cc:" nil nil "2" "2016020220:27:46" "[oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus" (number mark "        seth.arnold@ Feb  2   49/2154  " thread-indent "\"Re: [oss-security] Re: Socat security advisory 7 - Created new 2048bit DH modulus\"\n") "<20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>" ("<56AF7AA7.7080609@dest-unreach.org>" "<20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27833 invoked by uid 550); 2 Feb 2016 20:28:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27812 invoked from network); 2 Feb 2016 20:28:01 -0000
Message-ID: <20160202202746.GA27418@hunt>
Mail-Followup-To: cve-assign@mitre.org, oss-security@lists.openwall.com
References: <56AF7AA7.7080609@dest-unreach.org>
 <20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline
In-Reply-To: <20160202193606.7345E8BC044@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com
Date: Tue, 2 Feb 2016 12:27:46 -0800
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Socat security advisory 7 - Created new
 2048bit DH modulus
To: cve-assign@mitre.org

--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 02, 2016 at 02:36:06PM -0500, cve-assign@mitre.org wrote:
> useful. Our question is about whether anyone needs two CVE IDs.
>=20
> A CVE ID must be for a specific vulnerability (although we realize
> that the CVE ID may often be used to track the update). Here, there
> can be a CVE ID for the "was not prime" finding in the sense that p is
> supposed to be prime, and a non-prime value is an implementation error
> regardless of any other details of the situation. With the currently
> published information, we do not see a way to generate a second CVE ID
> for something related to "no indication of how these parameters were
> chosen" or "cannot be ruled out."

Ubuntu won't issue an Ubuntu Security Notice for the socat issue (because
socat is in our "universe" archive); however, we wouldn't find it useful
to have a second CVE assigned for "no indication of how these parameters
were chosen" or "cannot be ruled out".

This is one area where distro needs don't 100% align with MITRE's: one CVE
per line of code is sufficient for us but not for MITRE. When in doubt I'd
suggest to limit the number of CVEs issued just on the principle of less
work for everyone. When it's clear, of course, do what you must; we're
lucky we get to use CVEs to identify issues, and some slight duplication
(from our perspective) is a price well worth paying to use CVE's many
positive benefits.

Thanks

--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWsRFCAAoJEPMhclmdjS6XYZAH/3KTXkyt9Xctf6FZBCV+jC/u
zU/vZ/EWs6Hq1lSANMjEaN6RfxAhGWIWSY7fuqaAirG7J9nzI4Nyyu9uyteRsjPe
ZqJhdh72Lnq7kRXRguVrHs3lrgE4gwBS1O5IJZ7R4yOnQp2akVADGtYxLqsW1ZmA
YtcmgHkFq33sxLejPGZ+3OQ6Bkc3eAeN+kP2nDauBoO2EwT3iBfCtZVeFxVu5jbJ
DI1v1SfHbHmtg7oYsH00kWo+EXK32IxXCFeaVBZUFNaQ2qzZQm/VraSoaXpXTpzF
3raSTSRlcLQbOgkF4zxI0gsbiQfjlP12xBB1zvrBVpBrjpAZqk1NfyAEvRa9tA0=
=6sRv
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--
