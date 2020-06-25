X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1530" "Thursday" "25" "June" "2020" "12:05:03" "+0200" "=?iso-8859-1?Q?Jan_Kundr=E1t?=" "jkt@kde.org" "<96bf2c19-1a4d-494a-a643-a7501a22fc67@kde.org>" "48" "[oss-security] Requesting a CVE id for =?iso-8859-1?Q?Trojit=E1,_an_e-mail_client:_Improper_Certificate_Validati?==?iso-8859-1?Q?on?=" "^Cc:" nil nil "6" "2020062510:05:03" "[oss-security] Requesting a CVE id for =?iso-8859-1?Q?Trojit=E1,?= =?iso-8859-1?Q?an?= =?iso-8859-1?Q?e-mail?= =?iso-8859-1?Q?client:?= =?iso-8859-1?Q?Improper?= =?iso-8859-1?Q?Certificate?= =?iso-8859-1?Q?Validati?==?iso-8859-1?Q?on?=" (number mark "        jkt@kde.org  Jun 25   48/1530  " thread-indent "\"[oss-security] Requesting a CVE id for =?iso-8859-1?Q?Trojit=E1,?= =?iso-8859-1?Q?an?= =?iso-8859-1?Q?e-mail?= =?iso-8859-1?Q?client:?= =?iso-8859-1?Q?Improper?= =?iso-8859-1?Q?Certificate?= =?iso-8859-1?Q?Validati?==?iso-8859-1?Q?on?=\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Requesting a CVE id for =?iso-8859-1?Q?Trojit=E1,?= =?iso-8859-1?Q?an?= =?iso-8859-1?Q?e-mail?= =?iso-8859-1?Q?client:?= =?iso-8859-1?Q?Improper?= =?iso-8859-1?Q?Certificate?= =?iso-8859-1?Q?Validati?==?iso-8859-1?Q?on?=" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1154 invoked by uid 550); 25 Jun 2020 11:05:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7684 invoked from network); 25 Jun 2020 10:05:16 -0000
MIME-Version: 1.0
Message-ID: <96bf2c19-1a4d-494a-a643-a7501a22fc67@kde.org>
Organization: KDE
User-Agent: Trojita/v0.7-412-g2869c385e; Qt/5.13.0; xcb; Linux; Gentoo Base System release 2.4.1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Cc: <security@kde.org>
Date: Thu, 25 Jun 2020 12:05:03 +0200
From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jkt@kde.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Requesting a CVE id for =?iso-8859-1?Q?Trojit=E1,_an_e-mail_client:_Improper_Certificate_Validati?=
 =?iso-8859-1?Q?on?=
To: <oss-security@lists.openwall.com>

Hi folks, I would appreciate a Cc on responses as I'm not subscribed to=20
this list. I would like to request a CVE for the following vulnerability:

Summary
-------

Damian Poddebniak discovered a TLS verification failure (CWE-295) in=20
Trojit=C3=A1 [1], a fast Qt IMAP e-mail client. When sending e-mails over S=
MTP,=20
all TLS errors were ignored.

Background
----------

Trojita first gained support for SMTP submission in patch 0083eea5ed [2].=20
Since that commit (May 2009), there's been a FIXME comment in the code that=
=20
SSL errors should be handled properly. Unfortunately, this issue kept=20
falling through the cracks and we never re-enabled TLS validation as the=20
SMTP backend matured. As a result, outgoing SMTP connections were=20
suspectible to a MITM attack, with authentication details including=20
passwords and the message content potentially available to attackers.

IMAP connections are not suspectible to this bug.

Affected versions
-----------------

All versions of Trojita up to and including v0.7 are affected. The fix [3]=
=20
will be included in version v0.8 which will be released once the CVE gets=20
assigned.

Acknowledgement
---------------

Thanks to Damian Poddebniak for reporting [4] this bug.

[1] http://trojita.flaska.net/
[2] https://invent.kde.org/pim/trojita/-/commit/0083eea5ed
[3] https://gerrit.vesnicky.cesnet.cz/r/1035
[4] https://bugs.kde.org/show_bug.cgi?id=3D423453

With kind regards,
Jan

--=20
Trojit=C3=A1, a fast Qt IMAP e-mail client -- http://trojita.flaska.net/
