X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1200" "Monday" "23" "March" "2020" "10:06:05" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20200323100605.27fd2c46@computer>" "32" "[oss-security] Serendipity XSS via update notification (minor, exploitable by s9y developers)" nil nil nil "3" "2020032309:06:05" "[oss-security] Serendipity XSS via update notification (minor, exploitable by s9y developers)" (number mark "U       hanno@hboeck Mar 23   32/1200  " thread-indent "\"[oss-security] Serendipity XSS via update notification (minor, exploitable by s9y developers)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Serendipity XSS via update notification (minor, exploitable by s9y developers)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13384 invoked by uid 550); 23 Mar 2020 09:06:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13354 invoked from network); 23 Mar 2020 09:06:17 -0000
Date: Mon, 23 Mar 2020 10:06:05 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: 
  "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <20200323100605.27fd2c46@computer>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Serendipity XSS via update notification (minor, exploitable by s9y
 developers)

I reported an XSS in Serendipity that is now fixed in version 2.3.3. It
is only exploitable by either the developers of serendipity or someone
compromising Github, so I consider this very minor.

My bug report to s9y [1]:

The version number shown in the update notification window is not
escaped. This means it can contain javascript payload and thus allow
XSS.

The version information is fetched from a Github URL, which means this
is an XSS vulnerability that can only be exploited by the serendipity
developers or github itself. So this makes it rather low severity.

Still I'd consider safety against the developers or potentially
compromised developer accounts desirable where possible, and this seems
easy to fix.

PoC: Change the $updateURL variable in
include/functions_installer.inc.php in the function
serendipity_getCurrentVersion to one you control and add something like:

stable:9.<img src=3Dx onerror=3Dalert(1)><x
beta:9.<img src=3Dx onerror=3Dalert(2)><x

(s9y adds a </span> somewhere at the end for reasons I don't
understand, by adding the bogus <x I avoid that disturbing my payload.)

[1] https://github.com/s9y/Serendipity/issues/674
--=20
Hanno B=C3=B6ck
https://hboeck.de/
