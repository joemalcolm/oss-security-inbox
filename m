X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2032" "Saturday" "23" "September" "2017" "13:44:18" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170923134418.6e460656@pc1>" "61" "[oss-security] Why send bugs embargoed to distros?" "^Date:" nil nil "9" "2017092311:44:18" "[oss-security] Why send bugs embargoed to distros?" (number mark "        hanno@hboeck Sep 23   61/2032  " thread-indent "\"[oss-security] Why send bugs embargoed to distros?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16271 invoked by uid 550); 23 Sep 2017 11:45:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16230 invoked from network); 23 Sep 2017 11:45:03 -0000
Message-ID: <20170923134418.6e460656@pc1>
X-Mailer: Claws Mail 3.15.1-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 23 Sep 2017 13:44:18 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Why send bugs embargoed to distros?
To: oss-security@lists.openwall.com

Hi,

A few days have passed since the optionsbleed disclosure. Some
interesting things have surfaced, e.g. the fact that it was apparently
discovered already in 2014, but nobody noticed it was a security bug.


But I'd like to discuss something else:
I had informed the distros mailing list one week earlier about the
upcoming disclosure with a bug description and links to the already
available patch.
My understanding is that the purpose of the distros list is that
updates can be prepared so after a disclosure the time between "vuln is
known" and "patch is available" is short.
However from all I can see this largely didn't happen.

Debian+Ubuntu took more than a day after disclosure to fix. According
to the Debian bug tracker the bug got only opened after the public
disclosure[2]. I see no sign that any work on a fix began before the
disclosure.

If I can trust Red Hat's CVE tracker [3] there still are no fixed
packages available. Also I haven't found any info about updated
opensuse packages.

The only distro I'm aware of that prepared packages and pushed them
right after disclosure is Gentoo.

All of this makes me wonder if the distros list serves its purpose.

I'd be curious to hear:

a) if any people felt that pre-disclosure of optionsbleed was helpful
to them and in which way (after all - even if it only helps minor
distros and major distros ignore it it may still be a good thing).

b) if people think that they'd usually prepare a fixed package, however
they didn't consider optionsbleed important enough. (Naturally I
probably have a bias seeing my findings as more important as other
people, but I could live with that.)

c) other things?



[1] https://arxiv.org/pdf/1405.2330.pdf
https://blog.fuzzing-project.org/61-How-Optionsbleed-wasnt-found-in-2014.ht=
ml
[2] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D876109
[3] https://access.redhat.com/security/cve/cve-2017-9798

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42




