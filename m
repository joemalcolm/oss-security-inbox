X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["10082" "Wednesday" "18" "October" "2017" "15:12:07" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<f4773901-967b-a496-de1d-2e866686dfb2@igalia.com>" "234" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0008" nil nil nil "10" "2017101813:12:07" "[oss-security] WebKitGTK+ Security Advisory WSA-2017-0008" (number mark "U       clopez@igali Oct 18  234/10082 " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2017-0008\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28217 invoked by uid 550); 18 Oct 2017 13:12:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28180 invoked from network); 18 Oct 2017 13:12:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=L9tsEOPODdvyol0Hl/xLmSO4U7sZm5yy8QybkUaTxO0=;
	b=Nypz+KS1OmL3Qv1ALaCs4NsFeUA8O7rbg/kyN7ZNYyHRITeH1hPOYEZuq5lXIvpRh7cg5OlS9lRqP1arVOA9q4VRO/eALXFhBwveevSLF0bTcqSkfheKeYNo03CsWbyYdiyBW5D8/VVRLMFERnlzJPz8hFtFnDh6JThWODRAP8bCDB7p7OS/T49BtpF2P8C/z12Iyz3N8OTOM9uWB18zVLQzk9p219GzKR0Q1RkiSeLhV3ZU8iDslb1DZ/DhcxUi1t7H8Uy7WfVtkN0WFl/8V9rkgp4GvgT3HYz+7CGGFimnmURer6YwhH6Syu1cIcPTxbmbCCB1zC0XrL/x/iYgRA==;
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
Message-ID: <f4773901-967b-a496-de1d-2e866686dfb2@igalia.com>
Date: Wed, 18 Oct 2017 15:12:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="wBpPRO4GcwpVFxBdLsaRwN1R2vcjlJbv2"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2017-0008

--wBpPRO4GcwpVFxBdLsaRwN1R2vcjlJbv2
Content-Type: multipart/mixed; boundary="JDSGQTGpvlO8EqwtvsBTxpicBs1lsSp6t";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <f4773901-967b-a496-de1d-2e866686dfb2@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2017-0008

--JDSGQTGpvlO8EqwtvsBTxpicBs1lsSp6t
Content-Type: text/plain; charset=utf-8
Content-Language: es
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2017-0008
------------------------------------------------------------------------

Date reported      : October 18, 2017
Advisory ID        : WSA-2017-0008
Advisory URL       : https://webkitgtk.org/security/WSA-2017-0008.html
CVE identifiers    : CVE-2017-7081, CVE-2017-7087, CVE-2017-7089,
                     CVE-2017-7090, CVE-2017-7091, CVE-2017-7092,
                     CVE-2017-7093, CVE-2017-7094, CVE-2017-7095,
                     CVE-2017-7096, CVE-2017-7098, CVE-2017-7099,
                     CVE-2017-7100, CVE-2017-7102, CVE-2017-7104,
                     CVE-2017-7107, CVE-2017-7109, CVE-2017-7111,
                     CVE-2017-7117, CVE-2017-7120, CVE-2017-7142.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2017-7081
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to Apple.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A memory corruption issue was
    addressed through improved input validation.

CVE-2017-7087
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Apple.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7089
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Anton Lopanitsyn of ONSEC, Frans Ros=C3=A9n of Detectify.
    Impact: Processing maliciously crafted web content may lead to
    universal cross site scripting. Description: A logic issue existed
    in the handling of the parent-tab. This issue was addressed with
    improved state management.

CVE-2017-7090
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Apple.
    Impact: Cookies belonging to one origin may be sent to another
    origin. Description: A permissions issue existed in the handling of
    web browser cookies. This issue was addressed by no longer returning
    cookies for custom URL schemes.

CVE-2017-7091
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Wei Yuan of Baidu Security Lab working with Trend Micro=E2=80=
=99s
    Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7092
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Qixun Zhao (@S0rryMybad) of Qihoo 360 Vulcan Team, Samuel
    Gro and Niklas Baumstark working with Trend Micro's Zero Day
    Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7093
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Samuel Gro and Niklas Baumstark working with Trend Micro=E2=
=80=99s
    Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7094
    Versions affected: WebKitGTK+ before 2.16.3.
    Credit to Tim Michaud (@TimGMichaud) of Leviathan Security Group.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7095
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Wang Junjie, Wei Lei, and Liu Yang of Nanyang
    Technological University working with Trend Micro=E2=80=99s Zero Day
    Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7096
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Wei Yuan of Baidu Security Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7098
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Felipe Freitas of Instituto Tecnol=C3=B3gico de Aeron=C3=A1ut=
ica.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7099
    Versions affected: WebKitGTK+ before 2.16.4.
    Credit to Apple.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7100
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Masato Kinugawa and Mario Heiderich of Cure53.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7102
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Wang Junjie, Wei Lei, and Liu Yang of Nanyang
    Technological University.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7104
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to likemeng of Baidu Secutity Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7107
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to Wang Junjie, Wei Lei, and Liu Yang of Nanyang
    Technological University.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7109
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to avlidienbrunn.
    Impact: Processing maliciously crafted web content may lead to a
    cross site scripting attack. Description: Application Cache policy
    may be unexpectedly applied.

CVE-2017-7111
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to likemeng of Baidu Security Lab (xlab.baidu.com) working
    with Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7117
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to lokihardt of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7120
    Versions affected: WebKitGTK+ before 2.18.0.
    Credit to chenqin (=E9=99=88=E9=92=A6) of Ant-financial Light-Year Secu=
rity Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7142
    Versions affected: WebKitGTK+ before 2.16.1.
    Credit to an anonymous researcher.
    Impact: Website data may persist after a Safari Private browsing
    session. Description: An information leakage issue existed in the
    handling of website data in Safari Private windows. This issue was
    addressed with improved data handling.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
October 18, 2017


--JDSGQTGpvlO8EqwtvsBTxpicBs1lsSp6t--

--wBpPRO4GcwpVFxBdLsaRwN1R2vcjlJbv2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAlnnUycACgkQllCJzmuV
+IImORAAl2aKcx3NpstN8CT2GrWz26WXEpecLXi0oyDZZ2nXXavgKDlr/BHfNEW7
7fTtmTJn/3H/ivs/eWbLdRDrY3Qcrx6oYPwDe6Pv2jtnkpNHZfnXnGdGVuifywCE
VgnE2TVK8s3omBxNu1TXGZgbnuO+Pp/2txr+tsAdEUHSK3yd+3g/jdXI6w05wHKA
c36b+cMgF74ySGQIXbFZbK47TICVt1cBTqjjGpVfbon0am4oqdcHCVsbS036m5ps
JcJeziDRt4yz2fvzOUOvXHitdhSMetXojwhs8cTKBM6uJ7jxMAmTA9C1nvopD8Cw
wn0reGbfl/0Pb/rpEKV/KvT4UAjNLOsrAd7JaZKBGTf8mcFDK520icdnx57PIRpv
TLPSLvBYnQIhAs3L2AnMVmoUnpQw/nuaOMNqudj9huuX7/FfYLpgAkKlb1a9vWr2
BR8uguPf6eSDX7rZJNK53r215iq54AtHm28n2ncbRc/Nwdmghn5EBM41pypJnxsT
U27ixxZBsqb8dicYxQaXCig1rSoXZ3j3fLCC3oTio9iXHCEYtunrrWMaWiXj5nDp
yYVlunkZk3pibj2ZLTMcaunY4R5Pp8+oUFNuf3M8Heo350A4VvqnE0eD6MJN3ST7
0s7EJkJ8e8wrWUsCh9JrLeVogfvcqByhbDDQjiywfqMNVHEbNyI=
=0V6W
-----END PGP SIGNATURE-----

--wBpPRO4GcwpVFxBdLsaRwN1R2vcjlJbv2--
