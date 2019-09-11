X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1375" "Wednesday" "11" "September" "2019" "12:43:19" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20190911124319.23022e80@computer>" "34" "[oss-security] OpenDMARC signature bypass with multiple From addresses" nil nil nil "9" "2019091110:43:19" "[oss-security] OpenDMARC signature bypass with multiple From addresses" (number mark "U       hanno@hboeck Sep 11   34/1375  " thread-indent "\"[oss-security] OpenDMARC signature bypass with multiple From addresses\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] OpenDMARC signature bypass with multiple From addresses" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17766 invoked by uid 550); 11 Sep 2019 10:43:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17734 invoked from network); 11 Sep 2019 10:43:32 -0000
Date: Wed, 11 Sep 2019 12:43:19 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20190911124319.23022e80@computer>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] OpenDMARC signature bypass with multiple From addresses

Hi,

Protonmail reported about a phishing incident in July:
https://protonmail.com/blog/bellingcat-cyberattack-phishing/

This had this somewhat mysterious chapter:
"Furthermore, the attackers attempted to exploit an unpatched
vulnerability in an open source software that is widely used by email
providers in an effort to bypass spam and abuse filters. We were
previously aware of this vulnerability and have already been watching
it for some time, but we will not disclose it here because the software
in question is not developed by ProtonMail, and it has not yet been
patched by the software maintainers. This vulnerability, however, is
not widely known and indicates a higher level of sophistication on the
part of the attackers."

After asking protonmail multiple times for a statement they answered
and I learned that it's about this issue in OpenDMARC:
https://github.com/trusteddomainproject/OpenDMARC/pull/48

It's an issue where by specifying multiple From addresses only one of
them gets DMARC-checked.

There's no reaction from the OpenDMARC developers and it's unclear
whether it's still actively developed. Given this is already actively
exploited I think people should be aware of it and distros should
probably apply the patch from the PR.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
