X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2086" "Wednesday" "10" "October" "2018" "14:53:30" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181010145330.63e183d8@computer>" "44" "Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" "^Date:" nil nil "10" "2018101012:53:30" "[oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)" (number mark "        hanno@hboeck Oct 10   44/2086  " thread-indent "\"Re: [oss-security] ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)\"\n") "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>" ("<CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>" "<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19951 invoked by uid 550); 10 Oct 2018 12:53:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19933 invoked from network); 10 Oct 2018 12:53:32 -0000
Message-ID: <20181010145330.63e183d8@computer>
In-Reply-To: <e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
References: <CAJ_zFk+nnBgWaDNKgvLnVjp4rz3SttBQvjCCXjiqC71rV6bBrA@mail.gmail.com>
	<e9f76ebb-869e-69c5-7623-bae8553636ab@ehuk.net>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Oct 2018 14:53:30 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript: bypassing executeonly to escape
 -dSAFER sandbox (CVE-2018-17961)
To: oss-security@lists.openwall.com

On Wed, 10 Oct 2018 10:10:58 +0100
Eddie Chapman <eddie@ehuk.net> wrote:

> While the vulnerability in ghostscript itself is clear in this
> thread, does anyone have any more info on the above aspect of this?
> i.e is the above scenario (inadvertently running postscript, perhaps
> contained in an image, through ghostscript by just browsing a
> malicious site) limited to just nautilus in gnome environments? Do
> other browsers/environments handle this better or do they do similar?
> It seems that, strictly speaking, the "critical" nature of this
> vulnerability hinges on the behaviour of the browser/desktop
> environment. Otherwise the scope is limited to an individual manually
> downloading a postscript file and opening it outside of the browser.

evince installs a thumbnail entry to
/usr/share/thumbnailers

This is a generic location where applications can install files (I
believe they follow the .desktop specification, which is an ini-based
format). This is thus not nautilus-specific, but every filemanager that
uses this format will be affected. A quick googling tells me e.g.
pcmanfm is also affected. I'm not sure if dolphin uses them as well.

Nautilus is trying to solve this by sandboxing the thumbnailers.
However this depends on bubblewrap and is currently fail-open, i.e. if
bubblewrap is not available it will not disable the thumbnailing, it
will just not sandbox it. In practice this means it's often not
sandboxed. I doubt this will change any time soon.

Very similar problems show up with desktop search tools.

I think this whole concept is questionable and should be reviewed. I
think it's not desirable to have thumbnailers for all kinds of formats,
instead a more reasonable approach would be to limit thumbnailing to a
few widely used formats that have well-reviewed libraries (e.g. I don't
think that libjpeg or libpng will have any vulnerabilities left that are
even remotely as severe as the things tavis found in ghostscript).

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
