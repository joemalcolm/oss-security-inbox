X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["699" "Thursday" "14" "May" "2020" "10:21:17" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20200514102117.78d600ac@computer>" "22" "[oss-security] XSS in BigBlueButton < 2.2.6" nil nil nil "5" "2020051408:21:17" "[oss-security] XSS in BigBlueButton < 2.2.6" (number mark "U       hanno@hboeck May 14   22/699   " thread-indent "\"[oss-security] XSS in BigBlueButton < 2.2.6\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] XSS in BigBlueButton < 2.2.6" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3987 invoked by uid 550); 14 May 2020 08:21:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3956 invoked from network); 14 May 2020 08:21:29 -0000
Date: Thu, 14 May 2020 10:21:17 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20200514102117.78d600ac@computer>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] XSS in BigBlueButton < 2.2.6

BigBlueButton was vulnerable to Cross Site Scripting in the
Presentation upload.

When one uploads a presentation that is an HTML payload, but named as
an image (e.g. "foo.png") and allows download the download would be
served with an HTML mime type and executed in the browser.

Proof of concept:
* create file named foo.png with content:
<html><script>alert(document.domain)</script>
* Upload as presentation, allow download.
* Click on download.

I reported this to the BigBlueButton developers, but was informed that
at this point it was already fixed. It was previously reported here [1].


[1] https://github.com/bigbluebutton/bigbluebutton/pull/9102

--=20
Hanno B=C3=B6ck
https://hboeck.de/
