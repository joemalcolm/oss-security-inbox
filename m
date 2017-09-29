X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4370" "Friday" "29" "September" "2017" "15:01:27" "+0200" "Sysdream Labs" "labs@sysdream.com" "<89daa805-6ad8-8738-dc2b-0b248716da38@sysdream.com>" "148" "[oss-security] [CVE-2017-11321] UCOPIA Wireless Appliance < 5.1.8 Restricted Shell Escape" nil nil nil "9" "2017092913:01:27" "[oss-security] [CVE-2017-11321] UCOPIA Wireless Appliance < 5.1.8 Restricted Shell Escape" (number mark "U       labs@sysdrea Sep 29  148/4370  " thread-indent "\"[oss-security] [CVE-2017-11321] UCOPIA Wireless Appliance < 5.1.8 Restricted Shell Escape\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13319 invoked by uid 550); 29 Sep 2017 13:01:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12277 invoked from network); 29 Sep 2017 13:01:43 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com 774151A1434
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1506690090;
	bh=S86E2G84bCkzUe6Y7qvbYOcnxm61gKLWEz2w3MM+tpw=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=Ag3H6uGybo5WZmH5ppbLr0bgUlbcHUWjbaihS/ntJ8T9iupZP5R+Qv5LITeQiDmZp
	 Z4SYfHVCuD8l663wZTKcbnqIpr3nJeX/zwMNUUbDPL5BBVaG4Ux7gv2sFK6CBgZ2+J
	 d+jXaYpvQ2EdGnoaYV6EICQNpQuvlgSRxLYFeaBU=
X-Virus-Scanned: amavisd-new at sysdream.com
To: fulldisclosure@seclists.org
Cc: oss-security@lists.openwall.com
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <89daa805-6ad8-8738-dc2b-0b248716da38@sysdream.com>
Date: Fri, 29 Sep 2017 15:01:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="eQeAqpowrgb36cOMGa9hnf5eHoInpqBx1"
Subject: [oss-security] [CVE-2017-11321] UCOPIA Wireless Appliance < 5.1.8 Restricted Shell
 Escape

--eQeAqpowrgb36cOMGa9hnf5eHoInpqBx1
Content-Type: multipart/mixed; boundary="6dsSIWm2RpPRogpi6qxIjwWioSlm5OtNE";
 protected-headers="v1"
From: Sysdream Labs <labs@sysdream.com>
To: fulldisclosure@seclists.org
Cc: oss-security@lists.openwall.com
Message-ID: <89daa805-6ad8-8738-dc2b-0b248716da38@sysdream.com>
Subject: [CVE-2017-11321] UCOPIA Wireless Appliance < 5.1.8 Restricted Shell
 Escape

--6dsSIWm2RpPRogpi6qxIjwWioSlm5OtNE
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

# [CVE-2017-11321] UCOPIA Wireless Appliance < 5.1.8 Restricted Shell Escape

## Asset Description

UCOPIA solutions bring together a combination of software, appliance and cl=
oud services serving small to large customers.

More than 12,000 UCOPIA solutions are deployed and maintained by UCOPIA exp=
ert partners all over the world.

The affected asset in this report is a WiFi management appliance.


## Vulnerability

Shell Escape via `less` command.

**Threat**

Improper sanitization of system commands in the restricted shell interface =
in UCOPIA Wireless Appliance, prior to 5.1.8, allows remote attackers to ga=
in access to a system shell as the "admin" user.

**CVE ID**: CVE-2017-11321

**Access Vector**: network

**Security Risk**: critical

**Vulnerability**: CWE-78

**CVSS Base Score**: 9.1 (Critical)

**CVSS Vector**: CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H

### Proof of Concept: Restricted Shell Escape

By default, the UCOPIA wireless appliances exposes two shell access on port=
 22 (SSH) and 222 (ShellInTheBox).

A documented **admin** user exists on the system with the password **bhu85t=
gb**.

Quoted from the documentation :

> You can also retrieve the IP address of the outgoing interface. For this,=
 you need to log in to the terminal of the virtual machine with
the following username and password: admin/bhu85tgb, and then execute the i=
nterface command.

By logging in within these interfaces, we can access to a restricted shell =
(*clish*) that allows only a few commands.

However, the `less` command is allowed, and because `less` allows to execut=
e shell commands when viewing a file, we can use it to escape the restricte=
d shell.

Steps :

**1/** Login to the appliance using SSH or ShellInTheBox.

**2/** Run the `less /etc/passwd` command.

**3/** When viewing the file, type `!sh`

**4/** You now have unrestricted `admin` user access to the appliance.

```
> less /etc/passwd
!sh
$ ls /
bin dev etc home lib proc tmp user
$ whoami
admin
```

## Solution

Update to UCOPIA 5.1.8

## Timeline (dd/mm/yyyy)

* 08/03/2017 : Vulnerability discovery.
* 03/05/2017 : Initial contact.
* 10/05/2017 : GPG Key exchange.
* 10/05/2017 : Advisory sent to vendor.
* 17/05/2017 : Request for feedback.
* 22/05/2017 : Vendor acknowledge the vulnerabilities.
* 21/06/2017 : Sysdream Labs request for an ETA, warning for public disclos=
ure.
* 21/06/2017 : Vendor say that the UCOPIA 5.1.8 fixes the issue.
* 29/09/2017 : Public disclosure.

## Credits

* Nicolas CHATELAIN, Sysdream (n.chatelain -at- sysdream -dot- com)

--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--6dsSIWm2RpPRogpi6qxIjwWioSlm5OtNE--

--eQeAqpowrgb36cOMGa9hnf5eHoInpqBx1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEER9HhJMQ++ZIqLhVRjrSM2dWyWaEFAlnORCkACgkQjrSM2dWy
WaGziA/+NUkfdv+zKWb6TNM3srKV5EwCcFFtQjce/7af7bd4YnMPTPwwHxQ1ygrc
R6kx9a7xxlkYuMdoyhAkXFvLm2d6ZfUBXdS54+QeRgEzsuFajO5lM4JzLfrM+L9v
FaBBQ5csrD7l0VeMWyBA2v8JTju7Jjc2Lyw1oCzjVx0vmDfDpwNYIiMzlbKVLGxG
JP43BjNDskvgmKrJDOlEhCFQEQhodeayCX6bfGM/jemBI3BA9zpownSUyFd1HR/p
EUWBcCbdgei0ShPIT15Slg0LqD/Cu8L01Sj140BXD9vQFBVM4aWrGJ3Uqs+W4xIy
rQdR+5ERfOXI7FnAEQAWKp9HfSSkprXgd7Z90pCzzpZYp2s3XDMA/VGEigr9Kpvq
3IjcSvQHB/raIprfQ1ry7+C8ym8mEI9mkMxTnaotrO5O0f0olhVzFtqqPW0GXJD5
e94B7mdz11fZEbNE632ZEuBQ5XYnRzUe4QKUyZma4b3wXPOczjbbDL11Dx6DYvpf
esCEoXKFJumkBoJUqXKnlVqPXVuySp4elmMjIY2NYfmcdS5wVoQifsVBZj0Ag7Kt
9s7lcLJ7rrHEajJXk0MG+qaqZQSOMkZFu+IO5EEySLxZ57gEMjb3Wny/lVOjbBOp
m1zLBEtGcf73dw8CVVNwL7O0z6rzRUp5A/pMBo9EJASAr0gRdus=
=lkRH
-----END PGP SIGNATURE-----

--eQeAqpowrgb36cOMGa9hnf5eHoInpqBx1--
