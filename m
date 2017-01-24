X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2002" "Tuesday" "24" "January" "2017" "13:46:04" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170124134604.0b4e5ba1@pc1>" "49" "[oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)" "^Date:" nil nil "1" "2017012412:46:04" "[oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)" (number mark "        hanno@hboeck Jan 24   49/2002  " thread-indent "\"[oss-security] Windows ports of Linux software bundling outdated libraries (Gajim / PyCurl)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15844 invoked by uid 550); 24 Jan 2017 12:46:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15794 invoked from network); 24 Jan 2017 12:46:18 -0000
Message-ID: <20170124134604.0b4e5ba1@pc1>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 24 Jan 2017 13:46:04 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Windows ports of Linux software bundling outdated libraries (Gajim
 / PyCurl)
To: oss security list <oss-security@lists.openwall.com>

Hi,

I feel I've opened a can of worms here.

In a comment on the news site heise a reader pointed out that Gajim for
windows ships very old versions of OpenSSL and Python [1].

I decided to have a look and gajim indeed bundled files SSLEAY32.dll
and LIBEAY32.dll that came from OpenSSL 0.9.8l. However it seems that
was the least of the problems, as these are probably just some leftover
and not used by anything.

However, as it turns out gajim ships several copies of old versions of
OpenSSL (bug report here [2]).

The source of those is actually that gajim itself uses other projects,
mentioned in the bug report are gtk+, pycurl and cryptodome.

I verified that for pycurl, which provides a windows installer that
bundles the curl and openssl version at the time of the last release,
which was in June 2015.
Note that it seems pycurl matches the version numbers of curl, however
the latest release is 7.43.0. On linux systems it'll use whatever curl
is on the system, which can be newer, so everything's fine, but the
windows installer bundles the matching 7.43.0 curl version, which is
quite old. Notably it was long before the recent audit of curl, which
uncovered a large number of security vulnerabilities.
I reported this to pycurl as well [3].

The moral of the story is probably that if you recommend windows ports
of your favorite linux desktop application to your windows using
friends you may want to check if they bundle some really outdated
stuff. I encourage everyone to watch out for similar issues and report
them to the affected projects.


[1]
https://www.heise.de/forum/heise-Security/News-Kommentare/XMPP-Jabber-Krypt=
o-Messenger-ChatSecure-verschluesselt-mit-OMEMO-Protokoll/Gajim-Release-ent=
haelt-uralte-Versionen-von-Python-OpenSSL/posting-29818036/show/
[2] https://dev.gajim.org/gajim/gajim/issues/8513
[3] https://github.com/pycurl/pycurl/issues/437

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
