X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5771" "Wednesday" "24" "January" "2018" "18:53:52" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<37380262-28c4-2852-175c-98b7937014c4@igalia.com>" "137" "[oss-security] WebKitGTK+ Security Advisory WSA-2018-0002" nil nil nil "1" "2018012417:53:52" "[oss-security] WebKitGTK+ Security Advisory WSA-2018-0002" (number mark "U       clopez@igali Jan 24  137/5771  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2018-0002\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11832 invoked by uid 550); 24 Jan 2018 17:54:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11788 invoked from network); 24 Jan 2018 17:54:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To; bh=McIADT00/pzz3QDKSNFVi6b1yz4D9nKuUDp+MDCImZs=;
	b=fXHq3Hphu2kEGIQSlCGkrdAQt3453/QnZx+NEQ5B/kwhd8XBBg+nSaGT1Q/KviQiKogNseLZpF75Br3/0qSdeMo2dSwvQre9As2Mq+iV82D4ev9uDTkkdOHfZqTf8pxyAv45qNTEiucc7kUqik8f/bLwSYSBn6jyXmZV1nocQkNHTR6YpYKWrzxoiSSwb110ZpoZWTkwBVz/ta3w2vSVWpV7nD0HM1eARG04zVc7zv83LzTam4f5fYg5nrn/WwZ88U3uHyM7mgPF7X8tAGkQaBQI5f7x+gyUPcvL6JLO7f7ch7mzRzyaNQpXP4k4nALYMzWi5EfmeLIg2Easb0x+wQ==;
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
Message-ID: <37380262-28c4-2852-175c-98b7937014c4@igalia.com>
Date: Wed, 24 Jan 2018 18:53:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ImtunkKb3UxIhI0vyqcEPrnsE8MS7m6bN"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2018-0002

--ImtunkKb3UxIhI0vyqcEPrnsE8MS7m6bN
Content-Type: multipart/mixed; boundary="Gd8uPftV1REBvd61j1grrUqek1n4OyOjd";
 protected-headers="v1"
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-ID: <37380262-28c4-2852-175c-98b7937014c4@igalia.com>
Subject: WebKitGTK+ Security Advisory WSA-2018-0002

--Gd8uPftV1REBvd61j1grrUqek1n4OyOjd
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2018-0002
------------------------------------------------------------------------

Date reported      : January 24, 2018
Advisory ID        : WSA-2018-0002
Advisory URL       : https://webkitgtk.org/security/WSA-2018-0002.html
CVE identifiers    : CVE-2018-4088, CVE-2018-4089, CVE-2018-4096,
                     CVE-2017-7153, CVE-2017-7160, CVE-2017-7161,
                     CVE-2017-7165, CVE-2017-13884, CVE-2017-13885.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2018-4088
    Versions affected: WebKitGTK+ before 2.18.6.
    Credit to Jeonghoon Shin of Theori.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4089
    Versions affected: WebKitGTK+ before 2.18.4.
    Credit to Ivan Fratric of Google Project Zero.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4096
    Versions affected: WebKitGTK+ before 2.18.6.
    Credit to OSS-Fuzz.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7153
    Versions affected: WebKitGTK+ before 2.18.6.
    Credit to Jerry Decime.
    Impact: Visiting a malicious website may lead to user interface
    spoofing. Description: Redirect responses to 401 Unauthorized may
    allow a malicious website to incorrectly display the lock icon on
    mixed content. This issue was addressed through improved URL display
    logic.

CVE-2017-7160
    Versions affected: WebKitGTK+ before 2.18.6.
    Credit to Richard Zhu (fluorescence) working with Trend Micro's Zero
    Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-7161
    Versions affected: WebKitGTK+ before 2.18.6.
    Credit to Mitin Svyat.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: A command injection issue
    existed in Web Inspector. This issue was addressed through improved
    escaping of special characters.

CVE-2017-7165
    Versions affected: WebKitGTK+ before 2.18.6.
    Credit to 360 Security working with Trend Micro's Zero Day
    Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13884
    Versions affected: WebKitGTK+ before 2.18.6.
    Credit to 360 Security working with Trend Micro's Zero Day
    Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2017-13885
    Versions affected: WebKitGTK+ before 2.18.6.
    Credit to 360 Security working with Trend Micro's Zero Day
    Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
January 24, 2018


--Gd8uPftV1REBvd61j1grrUqek1n4OyOjd--

--ImtunkKb3UxIhI0vyqcEPrnsE8MS7m6bN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIzBAEBCgAdFiEEtdK1C8SOx/HukNmrllCJzmuV+IIFAlpoyDAACgkQllCJzmuV
+IKBnA/8CotT7KoFJOe+dRyvpN9m7rRK2JvC7uDlLPFwepyy2gz1fCHYcavrH5ER
nwzR1JYpYXgLgPs9SrAxf3gqQ9Ynl8cJpDBEI8Y/dKv366Hqm8fc3gZNXI9M2IXD
bpRLpIfKGr6UnBksv7BlQ7Zu0/bbWOqx1TVpYTo8SaPT7saO8YA+bExaM0Skt12s
baSKIBCltSFPwBZ9vMu/fQ8ZwFHXkS9r8ZR/5vCH1uWOi8+kihLRF2H4q0VR9u2/
u/bq2WgAdItnsuJ8oW4Avf1Qk9xD1Qrcld3wOXYj4wdXWOmqe4z7TZZ4Cb8RxkgF
WUzAZHq2lwb1QTcSssqj7mVYPDEzPMQd4a3uqNC/3I0zWmakDbOuxxxybLUBBkcT
9XXx5hIG53hoWuV+xA2ybisrPXFoAzqzE8WgQvF67qTnZ/LeG73tvme2Ka41EtZ4
2sKPf0rItMqBpcVLAZY5f/qesb3H9iU1JUALBKUlp4YHfr0XUsr4qEH/CzxIMudF
O95JJVI+9vnd11rj852CHr79wER6TFTEqiW41DXFTkDBfCYQWlLyap5inUllPTwn
OxGivo7N9UyGpQtz/svCUCjoqS5zddDv2zBxtTv0A5s4KiQ4sUZlAKLTSLEHI8U9
7n+0MNdhhkXcKpYWhukASbWXMeLI1bFSgCPfLtuuGBJMzysNTPk=
=ZDIC
-----END PGP SIGNATURE-----

--ImtunkKb3UxIhI0vyqcEPrnsE8MS7m6bN--
