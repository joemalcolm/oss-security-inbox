X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4008" "Monday" "18" "March" "2019" "22:45:09" "+0100" "Erik Winkels" "erik.winkels@open-xchange.com" "<543049085.1124.1552945509406@appsuite-guard.open-xchange.com>" "71" "[oss-security] PowerDNS Security Advisory 2019-03" nil nil nil "3" "2019031821:45:09" "[oss-security] PowerDNS Security Advisory 2019-03" (number mark "U       erik.winkels Mar 18   71/4008  " thread-indent "\"[oss-security] PowerDNS Security Advisory 2019-03\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] PowerDNS Security Advisory 2019-03" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5257 invoked by uid 550); 18 Mar 2019 22:10:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14020 invoked from network); 18 Mar 2019 21:45:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1552945509;
	bh=FXoXQ3n/xoU49RjGlbhpHoMQBSgHon55IF2zRztsd7w=;
	h=Date:From:Reply-To:To:Subject:From;
	b=q2onR6hRQt4xAkPlVHrCBXG7w+DZ3IIpRi/m04zTmL2zJ01njSGok4tKEo4cIeXYG
	 gEtL9CC+yTb+kOoj10WphJuTK2hTiQdgE1LipfzqmodAeMVXzTCmfPT6m8EFNOr7Xz
	 3HwAR72BNRh+VlwvLSXIuMsVeQ9hzhqKAty9yP43H7aenoVkRbduYqc3OsQrl8ZMRB
	 9ZCGFddrY4ytEswx5K14HO2nvUv+7A//z+/4XQ5Vc0oNbFs773sjpkrR7b51GzZUgK
	 43wzQia/0u46QJx8YkMLh1y3JcjahjkKjTylFsiZ41ORIVbFi/GTf3+DqR8f60Sw6F
	 cZzgScuK4h04g==
Date: Mon, 18 Mar 2019 22:45:09 +0100 (CET)
From: Erik Winkels <erik.winkels@open-xchange.com>
To: oss-security@lists.openwall.com
Message-ID: <543049085.1124.1552945509406@appsuite-guard.open-xchange.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; 
	boundary="----=_Part_1123_1904121797.1552945509404"
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.10.1-Rev9
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] PowerDNS Security Advisory 2019-03

------=_Part_1123_1904121797.1552945509404
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi all,

Today we released PowerDNS Authoritative Server 4.1.7 and 4.0.7, fixing an important security issue in the HTTP remote backend that has recently been reported to us [1].

The issue is that PowerDNS Authoritative Server, when the HTTP remote backend is used in RESTful mode (without post=1 set), can be tricked by a remote user into connecting to an attacker-specified HTTP server instead of the configured one, via a crafted DNS query.

This can be used to cause a denial of service by preventing the remote backend from getting a response, content spoofing if the attacker can time its own query so that subsequent queries will use an attacker-controlled HTTP server instead of the configured one, and possibly information disclosure if the Authoritative Server has access to internal servers.

This issue has been assigned CVE-2019-3871.

PowerDNS Authoritative up to and including 4.1.6 is affected.
Please note that at the time of writing, PowerDNS Authoritative 3.4 and below are no longer supported, as described in [2].

The full security advisory is provided below, and can also be found at [3].

We would like to thank Adam Dobrawy, Frederico Silva and GregoryBrzeski from HyperOne.com for finding and subsequently reporting this issue!

Minimal patches are available at [4].

[1]: https://github.com/PowerDNS/pdns/issues/7573
[2]: https://doc.powerdns.com/authoritative/appendices/EOL.html
[3]: https://docs.powerdns.com/authoritative/security-advisories/powerdns-advisory-2019-03.html
[4]: https://downloads.powerdns.com/patches/2019-03/

Best regards,
Erik Winkels

PowerDNS Security Advisory 2019-03: Insufficient validation in the HTTP remote backend
======================================================================================
-  CVE: CVE-2019-3871
-  Date: March 18th 2019
-  Affects: PowerDNS Authoritative up to and including 4.1.6
-  Not affected: 4.1.7, 4.0.7
-  Severity: High
-  Impact: Denial of Service, Information Disclosure, Content spoofing
-  Exploit: This problem can be triggered via crafted queries
-  Risk of system compromise: No
-  Solution: Upgrade to a non-affected version

An issue has been found in PowerDNS Authoritative Server when the HTTP remote backend is used in RESTful mode (without post=1 set), allowing a remote user to cause the HTTP backend to connect to an attacker-specified host instead of the configured one, via a crafted DNS query.
This can be used to cause a denial of service by preventing the remote backend from getting a response, content spoofing if the attacker can time its own query so that subsequent queries will use an attacker-controlled HTTP server instead of the configured one, and possibly information disclosure if the Authoritative Server has access to internal servers.

This issue has been assigned CVE-2019-3871.

PowerDNS Authoritative up to and including 4.1.6 is affected.
Please note that at the time of writing, PowerDNS Authoritative 3.4 and below are no longer supported, as described in https://doc.powerdns.com/authoritative/appendices/EOL.html .

We would like to thank Adam Dobrawy, Frederico Silva and Gregory Brzeski from HyperOne.com for finding and subsequently reporting this issue!

------=_Part_1123_1904121797.1552945509404
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: BCPG v1.60

iQEcBAABCgAGBQJckBFlAAoJEG/8M0ObDQTf38IH/3WClLYSYS8LYkiSCFzIMBwd
eu3+9ovbAK2pVS1YjY2Ru+6oJCGMxRlQIiKwpUW364h+PMReydIOqpg9mbTY3Uam
7cg3AtLtHQlmRDkNMhdASf7ai9/SJJVskzyLn0jYKW0nnqeJcarh/hKKc5tHOYAe
2AUFYSwbA1TKfl9r3Wxjhd2KoGSYX8yR4+mmdI8Fr3RnRfAwA1Pv3dHnBNTQmk0g
DElzSDKPSYfJiXYCnopKAhDFRiIEWk9UL5ZLgH3LDtjVt1PAxZ6WU1dJ7qccNWZW
K8KQeIAhcuW76vXVN4v+k/iFkSWSdxKhOTKUPphJHbBPMdN2+0ZjsJ8hV0uw14Q=
=oQYu
-----END PGP SIGNATURE-----

------=_Part_1123_1904121797.1552945509404--
