X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3600" "Tuesday" "10" "May" "2016" "14:09:11" "+0200" "Andreas Stieger" "astieger@suse.com" "<ab2d729f-e62c-3d92-09d2-4845bbae7a97@suse.com>" "96" "Re: [oss-security] Re: CVE request: three issues in libksba" "^Cc:" nil nil "5" "2016051012:09:11" "[oss-security] Re: CVE request: three issues in libksba" (number mark "U       astieger@sus May 10   96/3600  " thread-indent "\"Re: [oss-security] Re: CVE request: three issues in libksba\"\n") "<20160429161308.1775333600A@smtpvbsrv1.mitre.org>" ("<20160429161308.1775333600A@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19637 invoked by uid 550); 10 May 2016 12:09:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19618 invoked from network); 10 May 2016 12:09:37 -0000
References: <20160429161308.1775333600A@smtpvbsrv1.mitre.org>
Organization: SUSE Linux GmbH
Message-ID: <ab2d729f-e62c-3d92-09d2-4845bbae7a97@suse.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160429161308.1775333600A@smtpvbsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="9Wlxwx0atHiGQhUxADRDdcvXKBpgum56p"
Cc: cve-assign@mitre.org
Date: Tue, 10 May 2016 14:09:11 +0200
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request: three issues in libksba
To: oss-security@lists.openwall.com, mprpic@redhat.com

--9Wlxwx0atHiGQhUxADRDdcvXKBpgum56p
Content-Type: multipart/mixed; boundary="RxWrfdQhli1XTBbNafODxu9lg4jweQTRs"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com, mprpic@redhat.com
Cc: cve-assign@mitre.org
Message-ID: <ab2d729f-e62c-3d92-09d2-4845bbae7a97@suse.com>
Subject: Re: [oss-security] Re: CVE request: three issues in libksba
References: <20160429161308.1775333600A@smtpvbsrv1.mitre.org>
In-Reply-To: <20160429161308.1775333600A@smtpvbsrv1.mitre.org>

--RxWrfdQhli1XTBbNafODxu9lg4jweQTRs
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

On 04/29/2016 06:13 PM, cve-assign@mitre.org wrote:
> > Integer overflow in the DN decoder src/dn.c
> >
> http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dcommit;h=3D24=
3d12fdec66a4360fbb3e307a046b39b5b4ffc3
>
> This might be an error in the original
> https://security.gentoo.org/glsa/201604-04 advisory. We did not notice
> any obvious relationship between
> 243d12fdec66a4360fbb3e307a046b39b5b4ffc3 and an integer overflow fix.
> The 243d12fdec66a4360fbb3e307a046b39b5b4ffc3 commit message seems to
> focus on "read access out of bounds." Also, there is no other recent
> commit at
> http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dhistory;f=3Ds=
rc/dn.c
> that refers to an integer overflow. Possibly there was an inapplicable
> copy-and-paste of "Integer overflow in the" from the previous report
> about the BER decoder.
>
> Use CVE-2016-4356 for the 243d12fdec66a4360fbb3e307a046b39b5b4ffc3
> issue that is described as "Fix encoding of invalid utf-8 strings in
> dn.c" and "read access out of bounds."


There is a follow-up fix in libksba 1.3.4 for this issue:
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dcommit;h=3D6be6=
1daac047d8e6aa941eb103f8e71a1d4e3c75

> Fix an OOB read access in _ksba_dn_to_str.
>
> * src/dn.c (append_utf8_value): Use a straightforward check to fix an
> off-by-one.
> --
>
> The old fix for the problem from April 2015 had an off-by-one in the
> bad encoding handing.
>
> Fixes-commit: 243d12fdec66a4360fbb3e307a046b39b5b4ffc3
> <http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dlibksba.git;a=3Dobject;h=3D2=
43d12fdec66a4360fbb3e307a046b39b5b4ffc3>
> GnuPG-bug-id: 2344
> Reported-by: Pascal Cuoq
> Signed-off-by: Werner Koch <wk@gnupg.org>

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=FCrnberg)




--RxWrfdQhli1XTBbNafODxu9lg4jweQTRs--

--9Wlxwx0atHiGQhUxADRDdcvXKBpgum56p
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJXMc9tAAoJECzWqVXhWUVG6DEP/RxSLiPV4xwvVBUAYmNVONU8
7h09MwdoFjCwq/4h8v/L++csp+6hzm8PwW2uvvg3IFY+rxQNP9BexHmJKtlacZv0
XNL+wLRmt3F7OOEnucw12uHcJ4jWfEXDhG5JQk46xxA1624bUotvNmzv+YqDZl32
SN9x3HhtVM4J1FAT+zedtP9EsFs1muGJ73vYyzNbX4EMg9z1a0VzRiPlYfPj3HOD
jz0jTZ//2OmlxnzQKkEGlsfnrqWKzmgS7mkBhhKGT93hRtu1SVAMM8eMfiaP37uE
PJN/LMnYgFJPPX8yjCunpqj2A+CPtIsYq/SWDbl3DhhqvKOYVS8Ec40v59KaxYQI
3dbaOvickcQeUkwlEeorqYTghG5aLDk3rJVXJf8HuQss04gcgbQVatcp19c76+h5
WHjjZU956rMkHuP/BKellscZ42c/jmK0bvuxkdNNXxo/xhKuQE8c/Y6PMTpRM4dj
bQUZrJnhKkq/WrpmDH1fmnnr2dPKwhF2pczpsjqt8qOegfCRKEqcY5lXmrrbIznY
MyyOBkm4YmQPFiOAa+b8NNDHVAdImVnWOThRE3TfZ/E3q19N48PDxBVIh/dHwg9D
jFUqBBGF2DHsuVJFxhn4wyUQT6gpbbyUsYX1Gw0rXwFUxxeQFnwh/0uTW+PoXC9v
/RKkpeWsT16KQCSFTzPM
=jk0M
-----END PGP SIGNATURE-----

--9Wlxwx0atHiGQhUxADRDdcvXKBpgum56p--
