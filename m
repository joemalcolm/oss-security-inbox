X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["516" "Sunday" "23" "December" "2018" "09:31:30" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20181223093130.77312548@computer>" "21" "[oss-security] Use after free in monit / _handleEvent" nil nil nil "12" "2018122308:31:30" "[oss-security] Use after free in monit / _handleEvent" (number mark "U       hanno@hboeck Dec 23   21/516   " thread-indent "\"[oss-security] Use after free in monit / _handleEvent\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11539 invoked by uid 550); 23 Dec 2018 08:31:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11502 invoked from network); 23 Dec 2018 08:31:42 -0000
Date: Sun, 23 Dec 2018 09:31:30 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20181223093130.77312548@computer>
X-Mailer: Claws Mail 3.17.2 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Use after free in monit / _handleEvent

Hi,

There's a use after free in monit that shows up if you run it for a
while on an active system with address sanitizer enabled.

I reported this in august:
https://bitbucket.org/tildeslash/monit/issues/764/use-after-free-in-functio=
n-_handleevent

Fix is here:
https://bitbucket.org/tildeslash/monit/commits/5827927c4623

The fix is unreleased, the current version (5.25.2) is still affected.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
