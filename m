X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["703" "Friday" "5" "April" "2019" "11:45:01" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "23" nil "^Date:" nil nil "4" nil nil (number mark "        hanno@hboeck Apr  5   23/703   " thread-indent "\"[oss-security] XSS in roundup bug tracker 404 page\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] XSS in roundup bug tracker 404 page" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29932 invoked by uid 550); 5 Apr 2019 09:45:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29892 invoked from network); 5 Apr 2019 09:45:14 -0000
Message-ID: <20190405114501.1bb98c2a@computer>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 5 Apr 2019 11:45:01 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] XSS in roundup bug tracker 404 page
To: oss-security@lists.openwall.com

Hi,

I recently discovered that the python bug tracker had a trivial
reflected Cross Site Scripting vulnerability on the 404 error page.

It essentially just reflected the URL path, so anything like
http://hostname/<img src=3Dx onerror=3Dalert(1)>
(properly URL-encoded, but browsers do this automatically)
would result in XSS.

The software python is using here is the Roundup issue tracker, it's
been reported there as well [2] and fixed in their repo (but no release
yet).

[1] https://github.com/python/bugs.python.org/issues/34
[2] https://issues.roundup-tracker.org/issue2551035

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
