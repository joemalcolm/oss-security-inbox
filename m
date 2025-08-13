Received: (qmail 32302 invoked by uid 550); 13 Aug 2025 19:14:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11664 invoked from network); 13 Aug 2025 19:10:01 -0000
X-Virus-Scanned: amavis at zproxy101.his.com
Date: Wed, 13 Aug 2025 15:09:46 -0400
From: Thomas Dickey <dickey@his.com>
To: oss-security@lists.openwall.com
Message-ID: <aJzi-uY6brZyW2Mz@prl-debianold-64.jexium-island.net>
References: <20250813170058.GE6936@qaa.vinc17.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O4Hx4a4hRf15uo7G"
Content-Disposition: inline
In-Reply-To: <20250813170058.GE6936@qaa.vinc17.org>
X-SPAM-LEVEL: Spam detection results:  0
	AWL                    -0.580 Adjusted score from AWL reputation of From: address
	BAYES_00                 -1.9 Bayes spam probability is 0 to 1%
	DMARC_NONE                0.1 DMARC none policy
	HEADER_FROM_DIFFERENT_DOMAINS   0.07 From and EnvelopeFrom 2nd level mail domains are different
	KAM_DMARC_NONE           0.25 DKIM has Failed or SPF has failed on the message and the domain has no DMARC policy
	KAM_DMARC_STATUS         0.01 Test Rule for DKIM or SPF Failure with Strict Alignment
	SPF_HELO_NONE           0.001 SPF: HELO does not publish an SPF Record
	SPF_PASS               -0.001 SPF: sender matches SPF record
Subject: Re: [oss-security] xterm terminal crash due to malicious character
 sequences in file name

--O4Hx4a4hRf15uo7G
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 13, 2025 at 07:00:58PM +0200, Vincent Lefevre wrote:
> The following makes the xterm terminal crash
>=20
>   touch "$(printf "file\e[H\e[c\n\b")"
>   gunzip file*
>=20
> due to malicious character sequences in the file name and a bug in
> xterm. Same issue with bunzip2 instead of gunzip.
>=20
> Note that in practice, such a file name is not necessarily created by
> the end user who runs gunzip. It may come from a downloaded archive
> or from another user on a shared machine.
>=20
> Is this regarded as a vulnerability, in particular due to the loss of
> the shell session and associated data (which cannot be recovered)?

Vincent omitted his custom configuration (reverseWrap), which affects the
number of users affected.
=20
> Which is or are the culprit(s)?
>   * xterm itself (note that it is also possible to make some recent
>     xterm versions crash without these usual escape sequences);
>   * gzip and bzip2, which should sanitize the output to the terminal
>     (like many other utilities already do nowadays);
>   * the file system, which should not allow the creation of such
>     file names (I don't know what POSIX says exactly)?
>=20
> FYI, I've just reported bugs:
>=20
>   https://debbugs.gnu.org/cgi/bugreport.cgi?bug=3D79231 for gzip
>   https://sourceware.org/bugzilla/show_bug.cgi?id=3D33276 for bzip2
>=20
> (I had also reported 2 bugs against xterm related to its crash
> in the Debian BTS.)

Dereferencing a null pointer:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1110769

(no buffer overflows, etc).

--=20
Thomas E. Dickey <dickey@invisible-island.net>
https://invisible-island.net

--O4Hx4a4hRf15uo7G
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGYgtkt2kxADCLA1WzCr0RyFnvgMFAmic4vcACgkQzCr0RyFn
vgMGpwwAoz9bsicFRuT+5R/1RPey6mAwPmKh9ZQCjFMcKkyezqa/XeyEg/wD6VfG
vsi/68rUc90o2iYkaNkuubqA04GwiCtk843OvjQnU4VSJMa25DpBRy23j5cg/Tbb
B7djbjQPlamFxJLORBQ3A828CGMEQ/K/GyDxz0qKsw9GxN7x5zHPbePOnO68rBAh
9YdWbssE1eUUTuAacJpm/KDfO/FSsgysfCsbdqyAryOUOrUGSPWDTOCX12qokLl9
p46+B6t66lMZktML72Pl+rcHzrB+iGzAlECJpKFPyvfSlklz2Q89D6AsRRkd7ug8
NstqqwjiEx9cvsdHkUKti7D7DFupmX/y+sJviJh5xuhdFZX1VNVu73UHKUwJC6Ml
nXOE27u3mP7PtVXNKK5Imi7zUXKoyNI8ImYcYTz3jbBLW/5wpG4wZc88/JLwVa1O
zI1W1j7jYGRCan0l5HS+PsWaJH1JXvRpLY1DOnVBppMSe+XoQQXDPooZhDaGMPEt
bcqxZ3vE
=hL6J
-----END PGP SIGNATURE-----

--O4Hx4a4hRf15uo7G--

