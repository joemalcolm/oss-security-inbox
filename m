X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1912" "Saturday" "6" "March" "2021" "10:08:56" "+0100" "Fabian Keil" "freebsd-listen@fabiankeil.de" nil "60" "[oss-security] Re: Multiple DoS issues fixed in Privoxy 3.0.32 stable" nil nil nil "3" nil nil (number mark "U       freebsd-list Mar  6   60/1912  " thread-indent "\"[oss-security] Re: Multiple DoS issues fixed in Privoxy 3.0.32 stable\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Multiple DoS issues fixed in Privoxy 3.0.32 stable" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3213 invoked by uid 550); 6 Mar 2021 09:17:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3180 invoked from network); 6 Mar 2021 09:17:25 -0000
Date: Sat, 6 Mar 2021 10:08:56 +0100
From: Fabian Keil <freebsd-listen@fabiankeil.de>
To: oss-security@lists.openwall.com
Message-ID: <20210306100856.1cdc126e@fabiankeil.de>
In-Reply-To: <20210228102346.65e49420@fabiankeil.de>
References: <20210228102346.65e49420@fabiankeil.de>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/e_cSaCmI/yBP_CV2R=bgKf_";
 protocol="application/pgp-signature"; micalg=pgp-sha1
X-Df-Sender: Nzc1MDY3
Subject: [oss-security] Re: Multiple DoS issues fixed in Privoxy 3.0.32 stable

--Sig_/e_cSaCmI/yBP_CV2R=bgKf_
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Fabian Keil <freebsd-listen@fabiankeil.de> wrote on 2021-02-28:

> Privoxy 3.0.32 fixes multiple DoS issues and a couple of other bugs.
> The issues also affect earlier Privoxy releases.
[...]
>   - ssplit(): Remove an assertion that could be triggered with a
>     crafted CGI request.
>     Commit 2256d7b4d67. OVE-20210203-0001.
>     Reported by: Joshua Rogers (Opera)

CVE-2021-20272.

>   - cgi_send_banner(): Overrule invalid image types. Prevents a
>     crash with a crafted CGI request if Privoxy is toggled off.
>     Commit e711c505c48. OVE-20210206-0001.
>     Reported by: Joshua Rogers (Opera)

CVE-2021-20273.

>   - socks5_connect(): Don't try to send credentials when none are
>     configured. Fixes a crash due to a NULL-pointer dereference
>     when the socks server misbehaves.
>     Commit 85817cc55b9. OVE-20210207-0001.
>     Reported by: Joshua Rogers (Opera)

CVE-2021-20274.

>   - chunked_body_is_complete(): Prevent an invalid read of size two.
>     Commit a912ba7bc9c. OVE-20210205-0001.
>     Reported by: Joshua Rogers (Opera)

CVE-2021-20275.

>   - Obsolete pcre: Prevent invalid memory accesses with an invalid
>     pattern passed to pcre_compile(). Note that the obsolete pcre code
>     is scheduled to be removed before the 3.0.33 release. There has been
>     a warning since 2008 already.
>     Commit 28512e5b624. OVE-20210222-0001.
>     Reported by: Joshua Rogers (Opera)

CVE-2021-20276.

Fabian

--Sig_/e_cSaCmI/yBP_CV2R=bgKf_
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTKUNd6H/m3+ByGULIFiohV/3dUnQUCYENGqQAKCRAFiohV/3dU
nYCMAJsF1ifOeDSI3uDsY2bgnZMe86xSIACfaA4IBO+wpXknXlO50LoFBruxDts=
=uY3i
-----END PGP SIGNATURE-----

--Sig_/e_cSaCmI/yBP_CV2R=bgKf_--
