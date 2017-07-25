X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11106" "Tuesday" "25" "July" "2017" "14:42:55" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<31b16718-a4f7-8b38-20fe-d7636b36d049@igalia.com>" "250" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0006" nil nil nil "7" "2017072512:42:55" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0006" (number mark "U       clopez@igali Jul 25  250/11106 " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2017-0006\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1971 invoked by uid 550); 25 Jul 2017 12:43:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1924 invoked from network); 25 Jul 2017 12:43:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=X8VInK29dSpao7elEIhPtn7GXLtf42HwD7uc0qUX7b0=;
	b=JBSXqFLN+YilXC3qpjrWEYVdEBARgh5Yc8DVISD4O49fZG4mpcDgoralDs7FKqqg99smFPMNpgU97cuwHqwQ3W33Pzy4nVoZ68U6UuI46TssL8/Ny44j9syn+mQVsk7fLug08TPFDc5gOLOtImLqSu9/bp84WoDUnQO7wsHJAGzlMchVUWqLZvqvw4dZ8feEd/VngBIYJb4CjN9EON5oJms+ut8uD76eTGw8ru6EEGWYtSdMApzIFHiUy3XBD4heVzjzHyFKZacrGjlORPQ5wrprhSuycsgk74gRvxgziPl4qgzfT6GmR4mAKGDwTxirYMRy5Xv8cCJu/dSJ+g8xDw==;
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
Organization: Igalia S.L.
Mail-Followup-To: "webkit-gtk@lists.webkit.org"
 <webkit-gtk@lists.webkit.org>, security@webkit.org,
 distributor-list@gnome.org, oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
Message-ID: <31b16718-a4f7-8b38-20fe-d7636b36d049@igalia.com>
Date: Tue, 25 Jul 2017 14:42:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="6mHq5dXjiVHEx3CLeLEgxex7vcxSsHiTh"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2017-0006

--6mHq5dXjiVHEx3CLeLEgxex7vcxSsHiTh
Content-Type: multipart/mixed; boundary="NTQovIXxeeTEN0MPxGcAn1NApK0H7Vsao";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <31b16718-a4f7-8b38-20fe-d7636b36d049@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2017-0006

--NTQovIXxeeTEN0MPxGcAn1NApK0H7Vsao
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2017-0006
------------------------------------------------------------------------

Date reported      : July 25, 2017
Advisory ID        : WSA-2017-0006
Advisory URL       : https://webkitgtk.org/security/WSA-2017-0006.html
CVE identifiers    : CVE-2017-7006, CVE-2017-7011, CVE-2017-7012,
                     CVE-2017-7018, CVE-2017-7019, CVE-2017-7020,
                     CVE-2017-7030, CVE-2017-7034, CVE-2017-7037,
                     CVE-2017-7038, CVE-2017-7039, CVE-2017-7040,
                     CVE-2017-7041, CVE-2017-7042, CVE-2017-7043,
                     CVE-2017-7046, CVE-2017-7048, CVE-2017-7049,
                     CVE-2017-7052, CVE-2017-7055, CVE-2017-7056,
                     CVE-2017-7059, CVE-2017-7061, CVE-2017-7064.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2017-7006
    Versions affected: WebKitGTK+ before 2.16.2.
    Credit to David Kohlbrenner of UC San Diego, an anonymous
    researcher.
    Impact: A malicious website may exfiltrate data cross-origin.
    Description: Processing maliciously crafted web content may allow
    cross-origin data to be exfiltrated by using SVG filters to conduct
    a timing side-channel attack. This issue was addressed by not
    painting the cross-origin buffer into the frame that gets filtered.

CVE-2017-7011
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to xisigr of Tencent's Xuanwu Lab (tencent.com).
    Impact: Visiting a malicious website may lead to address bar
    spoofing. Description: A state management issue was addressed with
    improved frame handling.

CVE-2017-7012
    Versions affected: WebKitGTK+ before 2.16.2.
    Credit to Apple.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7018
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7019
    Versions affected: WebKitGTK+ before 2.16.2.
    Credit to Zhiyang Zeng of Tencent Security Platform Department.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7020
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to likemeng of Baidu Security Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7030
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to chenqin of Ant-financial Light-Year Security Lab
    (=E8=9A=82=E8=9A=81=E9=87=91=E6=9C=8D=E5=B7=B4=E6=96=AF=E5=85=89=E5=B9=
=B4=E5=AE=89=E5=85=A8=E5=AE=9E=E9=AA=8C=E5=AE=A4).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7034
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to chenqin of Ant-financial Light-Year Security Lab
    (=E8=9A=82=E8=9A=81=E9=87=91=E6=9C=8D=E5=B7=B4=E6=96=AF=E5=85=89=E5=B9=
=B4=E5=AE=89=E5=85=A8=E5=AE=9E=E9=AA=8C=E5=AE=A4).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7037
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7038
    Versions affected: WebKitGTK+ before 2.16.2.
    Credit to Neil Jenkins of FastMail Pty Ltd, Egor Karbutov
    (@ShikariSenpai) of Digital Security and Egor Saltykov
    (@ansjdnakjdnajkd) of Digital Security.
    Impact: Processing maliciously crafted web content with DOMParser
    may lead to cross site scripting. Description: A logic issue existed
    in the handling of DOMParser. This issue was addressed with improved
    state management.

CVE-2017-7039
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7040
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7041
    Versions affected: WebKitGTK+ before 2.16.2.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7042
    Versions affected: WebKitGTK+ before 2.16.2.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7043
    Versions affected: WebKitGTK+ before 2.16.2.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7046
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7048
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7049
    Versions affected: WebKitGTK+ before 2.16.2.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed through improved memory handling.

CVE-2017-7052
    Versions affected: WebKitGTK+ before 2.16.4.
    Credit to cc working with Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7055
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to The UK's National Cyber Security Centre (NCSC).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7056
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7059
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to an anonymous researcher.
    Impact: Processing maliciously crafted web content with DOMParser
    may lead to cross site scripting. Description: A logic issue existed
    in the handling of DOMParser. This issue was addressed with improved
    state management.

CVE-2017-7061
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7064
    Versions affected: WebKitGTK+ before 2.16.6.
    Credit to lokihardt of Google Project Zero.
    Impact: An application may be able to read restricted memory.
    Description: A memory initialization issue was addressed through
    improved memory handling.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
July 25, 2017


--NTQovIXxeeTEN0MPxGcAn1NApK0H7Vsao--

--6mHq5dXjiVHEx3CLeLEgxex7vcxSsHiTh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAll3PM8ACgkQllCJzmuV
+ILRjg/+OH4gH3DNyrOEVtgE+5JgLrhQI1eC6F35esU1IqGLDt+xV4nGhYX+RRiZ
HbVaRVcCZFZ37ssx8khnPVZHlDCwoXKxy1XfoL5iSSpehkLAG87huism588YO2Vl
YKYrV84MWcBXr1WlJ78jH6zIqCq2DawOmLLM4/NVSiizRQue3tWf+WMNAVULBBbB
lCWotYmrF9gGxcg0XaMEAuXbqTv9ypVk0cf9LUC/ls1Et4EpPsmhrnSzTubZbW4L
mezDNWRllV7T6RpgXGbEWIAB07XfeZMOFxMPC/qNbAI0aNwqyrVXlX3VPwQlsiaI
rJ2iMLD6J9r2/MWzfI9ZoX1VrovZYLlh8uMU+9HoFUOOB/LkpmVygn4EfaFMWdnJ
/6hSEofv/4Z6wW7rP8Gj9uV7Gw2zZJWo96hJ9KN9tkNZaZ56KNFRIZvMivhhtKIu
83hjN+GPqXXDpVBsrg/Nb4DOngTXNrUg8gvU1BhaiPcwejnHxe17qYaL/OEU16Nd
WmhM2CJo9E44C9YNrQzDkd9gLjoTz/hjfhVGOvkS0beLfHPbueisPOAANZzZvsRK
JvioyhADuUUx2RiKgHT5cdZ2aHI0uYUdEKySyEi4Rn8fYHDPrGkZJbtMedHCCFvP
aEsVp3fwVAPvhcA2J8X91EJ/qKmloUk/+gAiWY/CwGaW6/zzkzA=
=8LgB
-----END PGP SIGNATURE-----

--6mHq5dXjiVHEx3CLeLEgxex7vcxSsHiTh--
