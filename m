X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["790" "Thursday" "6" "July" "2017" "09:03:11" "+0200" "Martin Steigerwald" "martin@lichtvoll.de" "<1526811.hv86JBTSL3@merkaba>" "20" "Re: [oss-security] systemd fails to parse user that should run service" nil nil nil "7" "2017070607:03:11" "[oss-security] systemd fails to parse user that should run service" (number mark "U       martin@licht Jul  6   20/790   " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<CAH8yC8nDE3RG1yeWg3WbH1eZSJqTi9kdHfFL6Hfq_7cGZPEnDg@mail.gmail.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<CAH8yC8nDE3RG1yeWg3WbH1eZSJqTi9kdHfFL6Hfq_7cGZPEnDg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30625 invoked by uid 550); 6 Jul 2017 10:22:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24219 invoked from network); 6 Jul 2017 07:03:24 -0000
From: Martin Steigerwald <martin@lichtvoll.de>
To: oss-security@lists.openwall.com
Date: Thu, 06 Jul 2017 09:03:11 +0200
Message-ID: <1526811.hv86JBTSL3@merkaba>
User-Agent: KMail/5.2.3 (Linux/4.10.17-tp520-btrfstrim+; KDE/5.28.0; x86_64; ; )
In-Reply-To: <CAH8yC8nDE3RG1yeWg3WbH1eZSJqTi9kdHfFL6Hfq_7cGZPEnDg@mail.gmail.com>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com> <CAH8yC8nDE3RG1yeWg3WbH1eZSJqTi9kdHfFL6Hfq_7cGZPEnDg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] systemd fails to parse user that should run service

Jeffrey Walton - 05.07.17, 22:12:
> > systemd is not the one coming up with the restrictions on user names,
> > and while some distributions are less restrictive, many do enforce the
> > same restrictions as we do. In order to make systemd unit files
> > portable between systems we'll hence enforce something that
> > resembles more the universally accepted set, rather than accept the
> > most liberal set possible.
>=20
> systemd is effectively setting policy where it has no business doing so.

I have seen this=E2=80=A6 and the "not-a-bug" approach with Systemd upstrea=
m=20
developers quite often meanwhile. I think this arrogant "we know better tha=
n=20
you" attitude is poisonous to security=E2=80=A6 and to collaboration in the=
 free=20
software world in general.

--=20
Martin
