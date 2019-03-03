X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["856" "Sunday" "3" "March" "2019" "17:31:17" "+0100" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20190303173117.58da9e69@computer>" "29" "[oss-security] Open Redirect in Tiny Tiny RSS (tt-rss)" "^Date:" nil nil "3" "2019030316:31:17" "[oss-security] Open Redirect in Tiny Tiny RSS (tt-rss)" (number mark "        hanno@hboeck Mar  3   29/856   " thread-indent "\"[oss-security] Open Redirect in Tiny Tiny RSS (tt-rss)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28099 invoked by uid 550); 3 Mar 2019 16:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28068 invoked from network); 3 Mar 2019 16:31:30 -0000
Message-ID: <20190303173117.58da9e69@computer>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Mar 2019 17:31:17 +0100
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Open Redirect in Tiny Tiny RSS (tt-rss)
To: oss-security@lists.openwall.com

Hi,

Via my personal Bug Bounty program on hackerone I got a report about an
open redirect in a publicly accessible instance of Tiny Tiny RSS I have
running on a subdomain.

I'm aware that whether open redirects are vulnerabilities is debatable
(which is also reflected in the discussion with tt-rss, but they fixed
it nevertheless).

PoC:
https://[hostname]/public.php?return=3Dhttp%3a%2f%2fevil.com%2f&op=3Dlogin&=
login=3Dpassword=3D&profile=3D0

Report to tt-rss developers:
https://discourse.tt-rss.org/t/open-redirect-via-public-php/2077
Fix:
https://git.tt-rss.org/fox/tt-rss/commit/c68ac04020d85a296c784de18f8def3f36=
5f9f6a

This was reported by Mariia Aleksandrova (zophi), I just forwarded the
report to the tt-rss developers.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
