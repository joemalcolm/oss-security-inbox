X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Tuesday" "9" "June" "2015" "18:41:01" "+0200" "Marek Sebera" "marek.sebera@gmail.com" "<D5870053-3255-4E13-AC17-0F5C7D07DB3B@gmail.com>" "42" "[oss-security] Possible XSS vulnerability on NIST NVD" nil nil nil "6" "2015060916:41:01" "[oss-security] Possible XSS vulnerability on NIST NVD" (number mark "        marek.sebera Jun  9   42/1474  " thread-indent "\"[oss-security] Possible XSS vulnerability on NIST NVD\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1457 invoked by uid 550); 9 Jun 2015 16:42:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30266 invoked from network); 9 Jun 2015 16:41:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:content-type:subject:date:message-id:to:mime-version;
        bh=xH19I+oTjanX8z5x5cfpv1u4XD/ij1gPwWokTMaVZ0Q=;
        b=PPMcX93LE4/4l9jx/xl5f1VrSEFimB84XNWioVPrBwFhjCqF1A2V2RXUSFK1Ezggxi
         BNTeR9UlCcQQY3RNh8RWpuyYbmU4ZggYDPnEGBeY4CaGYZm6WoNAh7AUyvYlec8lUdQ3
         uFLuiVTmJ+Uk2+OjlwqzJvhSVm7RIcvF/4uI3mL3kSY19mZM2MF1coP8d1zmDpwnM8Ul
         37qf+6wtzrNCtvYy3oplTEVudnK75LCZulWZ8cFuI4+ZG5X5iVgk+zqrDl8Ue2QkJQM4
         WqCZATiQwZH+NUg8to3Ebm46Tf1ay3RhYsqTX1MCT9zj5mNAoyaX/VkLOsIIldJfc/Eo
         2utw==
X-Received: by 10.194.184.14 with SMTP id eq14mr43929425wjc.58.1433868067044;
        Tue, 09 Jun 2015 09:41:07 -0700 (PDT)
X-Pgp-Agent: GPGMail 2.5
Content-Type: multipart/signed; boundary="Apple-Mail=_6BD0AE37-5032-4A30-88FB-44E089B55540"; protocol="application/pgp-signature"; micalg=pgp-sha256
Message-Id: <D5870053-3255-4E13-AC17-0F5C7D07DB3B@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Mailer: Apple Mail (2.2098)
Date: Tue, 9 Jun 2015 18:41:01 +0200
From: Marek Sebera <marek.sebera@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Possible XSS vulnerability on NIST NVD
To: oss-security@lists.openwall.com

--Apple-Mail=_6BD0AE37-5032-4A30-88FB-44E089B55540
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

wait for it =E2=80=A6 https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCV=
E-2010-1729

Do you think it=E2=80=99s worth a XSS CVE against NIST NVD web?

Regards,
Marek Sebera

--Apple-Mail=_6BD0AE37-5032-4A30-88FB-44E089B55540
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2.0.27

iQIcBAEBCAAGBQJVdxcfAAoJEAFLmqPrnYVL6aQP+wdMwiFXju7Oda7DFkGh064f
Glx3Ejj133gHxPQW8QS+swrGb+I9ozPvyL0XYOY6IvAo+/JZRjpFT58i29/Jo5vY
Ec6hLXm5WFNvABDzqdZLotq0dEUYLgjuIpbLmkVNo1kGBGaEZ1DAoiBq9JcxFJcG
3TRcCHoG1aa3KJJA40PVN7fo3ubpHET03eOLQ5mOHr/jkAyLnHiPuP5yPdScRI36
175AWbBK/fOmCfvRuNWgehL3gkpP/c4ovGpL4HAWNBVfqzpbTbKGSHkpplRYu3GX
ZHmpl2hBnoPBS8euykIuQH9dyyHMaf8vmmpX1Ti3seukl990V0b7tWcOa/pKNB9S
IPKkFOOKtWBSQ8eF8vR42jJjQ2vQLrAAI2UWwYlJ9ht9bwD0ZVuq4pA856jdNnGU
ZvmlJVAvx8wZcVlpkTdtzwIRljakZ+bX4/ZBBUSBWlGuzbS1XCEDooS52L6pW1kA
VC/W/O/ax6Gv8lI2GWBud4eY0tUp5EPgP63YkvVULzjYDhpdgE76b07QZsEEPo1R
471mpxPucJMr1a3EDm+QHquygxMo7oe/A3ryn+wZoLrNDeZJrzdzigSD3Xu2dpiu
Nl7IL+RNuojRdmnEg4HDCifRxzG4oAUNtnENhw4NS8wCMP2krzvwWQ9PTbXGvTdt
HY4vxGGwUJzvAzVUuaT4
=FNOV
-----END PGP SIGNATURE-----

--Apple-Mail=_6BD0AE37-5032-4A30-88FB-44E089B55540--
