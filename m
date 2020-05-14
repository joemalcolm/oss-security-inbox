X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["920" "Thursday" "14" "May" "2020" "09:11:49" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20200514091149.4e807efa@computer>" "26" "[oss-security] Hypermail XSS via attachment" nil nil nil "5" "2020051407:11:49" "[oss-security] Hypermail XSS via attachment" (number mark "U       hanno@hboeck May 14   26/920   " thread-indent "\"[oss-security] Hypermail XSS via attachment\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Hypermail XSS via attachment" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1968 invoked by uid 550); 14 May 2020 07:12:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1934 invoked from network); 14 May 2020 07:12:01 -0000
Date: Thu, 14 May 2020 09:11:49 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20200514091149.4e807efa@computer>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Hypermail XSS via attachment

"Hypermail is a free (GPL) program to convert email from Unix mbox
format to html" [1]
It is commonly used to create mailing list archives.

Hypermail contains no validation or sanitation of mail attachments and
provides them as simple files. This means it's trivially vulnerable to
Cross Site Scripting (XSS).

One can simply attach a file to a mail with either no or an .html
extension and it can contain javascript/XSS payloads (e.g.
"<html><script>alert(document.domain)</script>").

The developer of Hypermail informed me that he is no longer interested
in Hypermail, thus there will probably be no fix.

This means using hypermail for public mailing list archives is
inherently risky if one runs anything else on the same host that may be
prone to XSS attacks (which is usually everything that includes any
form of authentication).


[1] http://www.hypermail-project.org/

--=20
Hanno B=C3=B6ck
https://hboeck.de/
