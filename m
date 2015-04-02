X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2017" "Thursday" "2" "April" "2015" "16:43:57" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20150402234357.GB9941@hunt>" "53" "Re: [oss-security] membership request  to the closed linux-distros security mailing list" nil nil nil "4" "2015040223:43:57" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        seth.arnold@ Apr  2   53/2017  " thread-indent "\"Re: [oss-security] membership request  to the closed linux-distros security mailing list\"\n") "<550C19ED.9030901@enea.com>" ("<550C19ED.9030901@enea.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13608 invoked by uid 550); 2 Apr 2015 23:44:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13575 invoked from network); 2 Apr 2015 23:44:12 -0000
Message-ID: <20150402234357.GB9941@hunt>
Mail-Followup-To: Sona Sarmadi <sona.sarmadi@enea.com>,
	oss-security@lists.openwall.com,
	Solar Designer <solar@openwall.com>
References: <550C19ED.9030901@enea.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mxv5cy4qt+RJ9ypb"
Content-Disposition: inline
In-Reply-To: <550C19ED.9030901@enea.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Date: Thu, 2 Apr 2015 16:43:57 -0700
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] membership request  to the closed linux-distros
 security mailing list
To: Sona Sarmadi <sona.sarmadi@enea.com>

--mxv5cy4qt+RJ9ypb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 20, 2015 at 02:00:29PM +0100, Sona Sarmadi wrote:
> On behalf of Enea  Software AB, I would like to request membership to
> the closed linux-distros security mailing list.

Speaking strictly for myself, I'm still somewhat skeptical; the security
announce archives http://mail.lists.enea.com/pipermail/security-announce/
do show some security updates, but (guessing) 15% of the actual patch
links I tried to follow no longer exist.

Furthermore, the advisories all suggest downloading patches via http and
offer no mechanism to validate the patches before applying them. Consider
this recent advisory:
http://mail.lists.enea.com/pipermail/security-announce/20150326/000064.html

- there's no gpg signature on this advisory
- there's no cryptographic checksums in the advisory to authenticate
  the patch even if the advisory were signed
- there's no ascii-armored signatures in the patches
- there's no detached signatures at
  http://linux.enea.com/5.0-beta-m400/patches/
  or at
  http://linux.enea.com/4.0/patches/

If downloading patches and applying them by hand is really the
distribution model Enea has chosen, then it feels like the provenance
of updates is seriously lacking.

In my opinion, until some more of the security basics are covered,
joining linux-distros@ is premature.

Thanks

--mxv5cy4qt+RJ9ypb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVHdQ9AAoJEPMhclmdjS6XWFgH/A4wfMrpI1sHnwjblHrHEMY5
aF8fI/1P1pME/BaMIlzaruk8PVc2/ve6zH/tqBH6cSMBgCRCliuRllCu5sV0hbwH
wglDGDXS/NcvkRByHArZ9ngDQRU/YcBxuaMCbHd1AodTAZb714bVZ4+u5w7Vk1zh
829D5z0orOjtBDKArSj/MOedUtChuQ134t+iWebw52B/y4yz0AhsGEXJkedFU+nK
7g6yDwXufkyBMbPjQevT7jCGtUtON7zXRYY0UE+FusoaMVkcByFhBF924Zrgl9bP
yiG7YFkOAJw6h75Qjnq/IXiUmtqSH3obDW/Ak0M1P1jKQWlwvCoKBI7OPNzNDfk=
=RKze
-----END PGP SIGNATURE-----

--mxv5cy4qt+RJ9ypb--
