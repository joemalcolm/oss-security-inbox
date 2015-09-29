X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1963" "Tuesday" "29" "September" "2015" "13:12:37" "+0200" "Andreas Stieger" "astieger@suse.com" "<560A7225.6020201@suse.com>" "55" "Re: [oss-security] Re: CVE request for wget" nil nil nil "9" "2015092911:12:37" "[oss-security] Re: CVE request for wget" (number mark "        astieger@sus Sep 29   55/1963  " thread-indent "\"Re: [oss-security] Re: CVE request for wget\"\n") "<20150925200413.DC3B16C406D@smtpvmsrv1.mitre.org>" ("<20150925200413.DC3B16C406D@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27671 invoked by uid 550); 29 Sep 2015 11:13:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26615 invoked from network); 29 Sep 2015 11:13:16 -0000
References: <20150925200413.DC3B16C406D@smtpvmsrv1.mitre.org>
X-Enigmail-Draft-Status: N1110
Organization: SUSE Linux GmbH
Message-ID: <560A7225.6020201@suse.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20150925200413.DC3B16C406D@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="lis0N21mbNMoNhufBUIGo4pVNSmU6Dnaw"
Cc: oss-security@lists.openwall.com
Date: Tue, 29 Sep 2015 13:12:37 +0200
From: Andreas Stieger <astieger@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request for wget
To: cve-assign@mitre.org

--lis0N21mbNMoNhufBUIGo4pVNSmU6Dnaw
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

On 09/25/2015 10:04 PM, cve-assign@mitre.org wrote:
> > https://mailman.boum.org/pipermail/tails-dev/2015-August/009370.html
> > https://lists.gnu.org/archive/html/bug-wget/2015-08/msg00020.html
> >
> http://git.savannah.gnu.org/cgit/wget.git/commit/?id=3D075d7556964f5a871a=
73c22ac4b69f5361295099
>
> We really don't understand what set of expectations led to this
> becoming a CVE request for a vulnerability in wget.

Possibly assignments for CWE-200 including CVE-2000-0649, CVE-2002-0422
relating to exposure if an internal IP address of a communication partner.

The remaining points are noted.

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton, HRB=
 21284 (AG N=FCrnberg)




--lis0N21mbNMoNhufBUIGo4pVNSmU6Dnaw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWCnIuAAoJECzWqVXhWUVGyCAQAKk/pbCol1zT63N1R/XHpJ00
uuH3E+ruZWodE6dOESl6ZR5MV3yTaMzP+1dNQdj4J4ZmQBUhjePNTbaGR3GUDGqC
IHOib6tpOnuRK4AQ1UdhcLZSVtiS61yuE7HsvRjdEGj42+YLMJwVy3r4Rl0zFsvO
rqDBatdfhV29B/mVB2qTot3QKI8eKTUu2r494UU0XFZLWVZN8kGXGvCpLnf+r+xb
zb7w6vhDyCZHaTbjxrM4FGx/2JhjuPXNIjOukzJOKEws2qqfXjVixcLxIf42L9X8
VAzjo9PGeqd/mSmZJkq/xKxtWt2ozvfdA62sGAxBvw5eTFNJiz9yUNlH96T5eoKZ
Lj6Aq+WxvQNCYnM8ng2B5aBpBPn1yfhQCWt/uF4z6vU3iCFqRIfPL+2bOYXWhOLt
ZQPNqOMXN+NLhY71LtQGA5D8kJr6gSfi5mm/CBnQ2H+oVl5yOVopNJrsfPNffO0C
DenHwvbh0qRC0riBe6cJkf1inRsHvnZQzrCqa/cQYKLt2/gg7DnDIwAUqkyI9VRJ
WUdpNpsiHjIzQuOT/qUnThsqZb+g4Hlz4DFbIH9ijWDMEEyRh9me92pHiuVVGO7U
JaPw5rcCt4xuFfL09Lb/FP3ibV3wP9t7HTh08Glq6n1cMmaCoA6OBYcrZOCtA3FF
g74NQjz20VA7Dn0CtJts
=c35w
-----END PGP SIGNATURE-----

--lis0N21mbNMoNhufBUIGo4pVNSmU6Dnaw--
