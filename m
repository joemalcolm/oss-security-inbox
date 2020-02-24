X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2008" "Monday" "24" "February" "2020" "15:34:51" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "48" nil "^Date:" nil nil "2" nil nil (number mark "        hanno@hboeck Feb 24   48/2008  " thread-indent "\"[oss-security] mailman 2.x: XSS via file attachments in list archives\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] mailman 2.x: XSS via file attachments in list archives" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11795 invoked by uid 550); 24 Feb 2020 14:35:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11758 invoked from network); 24 Feb 2020 14:35:03 -0000
Message-ID: <20200224153451.4d773294@computer>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Feb 2020 15:34:51 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] mailman 2.x: XSS via file attachments in list archives
To: oss-security@lists.openwall.com

I have reported this quite a while ago and forgotten to properly
announce it.

In the mailman 2 mailing list manager there's a stored cross site
scripting vulnerability due to the way file attachments are handled.

Up to mailman 2.1.29 when sending a file without a file extension (or
an unknown file extension) then the file is stored in the list archive
with the file extension .obj.
Most web servers (e.g. apache httpd) will try to assign a mime type
based on the file extension and entries in /etc/mime.types.

In many Linux distributions (Debian, Fedora, Ubuntu) .obj is not
specified in /etc/mime.types. This means the web server will usually
send it out without a mime type.
The browser will then try to guess the MIME type based on the file's
content (MIME-sniffing). If the content is HTML then it will execute any
javascript contained.

I have reported this a while ago to mailman and they changed the
default from .obj to .bin. All distributions I tested assign
application/octet-stream to .bin files, which makes sure the browser
does not try to sniff the file type.
This change is in mailman 2.1.30rc1, but not in any stable release of
mailman.

I gave a talk discussing this type of vulnerability at last year's
SecurityFest conference:
https://www.youtube.com/watch?v=3D8t8JYpt0egE


Mitigating factors:
* Some web servers send a default mime type (e.g. nginx). This is
  generally a good way to prevent such vulnerabilities, although some
  people disagree [1]
* In Gentoo and Suse it is assigned to application/x-tgif, which is
  probably not what's intended here, but enough to prevent the
  vulnerability.
* Setting "X-Content-Type-Options: nosniff" will not prevent this
  vulnerability type in all browsers. The reason is that originally
  this header only applied to javascript and css content, not to HTML.
  Chrome still disables content sniffing for HTML, Firefox hopefully
  will soon.

[1] https://www.w3.org/2001/tag/doc/mime-respect.html
--=20
Hanno B=C3=B6ck
https://hboeck.de/
