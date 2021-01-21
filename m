X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1480" "Thursday" "21" "January" "2021" "11:22:38" "+0100" "Matthias Gerstner" "mgerstner@suse.de" "<YAlV7n+yLVBceb3c@f195.suse.de>" "38" "Re: [oss-security] libreoffice-online \"loolforkit\" privileged program local root exploit" nil nil nil "1" "2021012110:22:38" "[oss-security] libreoffice-online \"loolforkit\" privileged program local root exploit" (number mark "U       mgerstner@su Jan 21   38/1480  " thread-indent "\"Re: [oss-security] libreoffice-online \"loolforkit\" privileged program local root exploit\"\n") "<YAWkPB4mFDvqtep9@f195.suse.de>" ("<YAWkPB4mFDvqtep9@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] libreoffice-online \"loolforkit\" privileged program local root exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9678 invoked by uid 550); 21 Jan 2021 10:22:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9657 invoked from network); 21 Jan 2021 10:22:49 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 21 Jan 2021 11:22:38 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <YAlV7n+yLVBceb3c@f195.suse.de>
References: <YAWkPB4mFDvqtep9@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ydslp/axYI7XqV36"
Content-Disposition: inline
In-Reply-To: <YAWkPB4mFDvqtep9@f195.suse.de>
Subject: Re: [oss-security] libreoffice-online "loolforkit" privileged
 program local root exploit

--ydslp/axYI7XqV36
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 18, 2021 at 04:07:40PM +0100, Matthias Gerstner wrote:
> Formally libreoffice-online is covered by the "Document Foundation" CNA,
> therefore I did not request a CVE for this via the Mitre CVE form. I
> will try to contact the CNA directly in this matter.

The Document Foundation assigned CVE-2021-25630 for the missing
enforcement of only allowing the "loolforkit" user to access the
sensitive features of the program.

Cheers

Matthias

--ydslp/axYI7XqV36
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmAJVe0ACgkQFMQFyXGS
NVO/IRAAhP/0RvDDAeFetkCEX7w4GXCohWHneKQGBVDjSt0WhcCTqN2Pgh1eNb0x
BplW+WNfjGjA/cNOodG5DPw5tcyX3Yqk2xLol04D6WBEzmgc5c+iUUejFthth5TF
GwshRC/FZNP5P76NUaUbEvDIJcc+dlo9D1mQrZb7FiuyKvh5jyewjZIpPtwbNZbR
BXAbgS84wDvIb8aOXpG80Q+R4IPcieaU6oe5+/wOstsMtCgMg8gAl5zUWUf9kVwg
lEgpTjiSKjUuyLdvb/pxYJacpm1g1qDG/LPBWATpa2Jyry0LCQcjJZpB+yXfxS/T
/QuAimisl2RESOZ9tKkrxg7lq1nCSDfqfOS8xJYgjgK12tDgDcs+pD3a7navgaRk
iJf4BUokpWGdz1l1fn4tfCC/wqj7WfI1c12G6hn2bPomqgVF8NPUVacLbYIcegaq
UR5NwLV38xtb9l1Euu9nnH4XNybjWXxsZrmUTYLywL18A+Ao2ZJ98B4HB9tJCjWR
FpuAJhr/emMGxkD29JxXlRBh/fcVVVH+tp2fXcXuOiHaQvPfd9s8x62AKCEGxu/F
j22hHAgHYvSuWiXGE78obVLbU5rH39mkeQreG5NIxBQHFBmDtjiASnuJHGeM9RQs
x9edojmRtbo9Yb+ol5C7/FM18iPttl1fgGEYftvDg3gR+r3vtAw=
=t+pm
-----END PGP SIGNATURE-----

--ydslp/axYI7XqV36--
