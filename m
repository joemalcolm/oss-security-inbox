X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1539" "Tuesday" "19" "December" "2017" "17:11:19" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20171219171119.3f4c7ae5@pc1>" "48" "[oss-security] GIMP parser bugs (FLIMP and more)" "^Date:" nil nil "12" "2017121916:11:19" "[oss-security] GIMP parser bugs (FLIMP and more)" (number mark "        hanno@hboeck Dec 19   48/1539  " thread-indent "\"[oss-security] GIMP parser bugs (FLIMP and more)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5148 invoked by uid 550); 19 Dec 2017 16:11:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4090 invoked from network); 19 Dec 2017 16:11:32 -0000
Message-ID: <20171219171119.3f4c7ae5@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 Dec 2017 17:11:19 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] GIMP parser bugs (FLIMP and more)
To: oss-security@lists.openwall.com

Hi,

See also
https://flimp.fuzzing-project.org/

Background: In 2014, back when I started the fuzzing project, I
reported two bugs in GIMP in their more obscure parsers. Recently I was
contacted by Tobias St=C3=B6ckmann who wrote a working exploit (on freebsd =
<-
no aslr, thus easier) for one of those bugs in the FLIC parser. He also
submitted a patch.

The bugs were ignored all the time, patches as well.

I reported a couple of more bugs and also contacted the GNOME security
team. Some have patches, others not, ony one got handled. It seems
overall the file format importers are unmaintained.
I also tried to submit a fuzzing guide to the gimp wiki, which failed,
because the people who are supposed to hand out user accounts don't
answer. (gimp is not fuzzing friendly.)

The bugs:

Heap overflow in FLI import (the one where we have an exploit):
https://bugzilla.gnome.org/show_bug.cgi?id=3D739133

OOB read in TGA (with patch)
https://bugzilla.gnome.org/show_bug.cgi?id=3D739134

OOB read in XCF (patch, the only one that got merged and fixed)
https://bugzilla.gnome.org/show_bug.cgi?id=3D790783

OOB read in GBR (no patch, looks like string/utf8 issue)
https://bugzilla.gnome.org/show_bug.cgi?id=3D790784

Heap overflow in PSP (no patch, doesn't look straightforward to fix)
https://bugzilla.gnome.org/show_bug.cgi?id=3D790849

OOB read in PSP (no patch)
https://bugzilla.gnome.org/show_bug.cgi?id=3D790853


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
