X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1011" "Friday" "22" "May" "2020" "19:01:10" "+0200" "Arrigo Triulzi" "arrigo@alchemistowl.org" "<6EA79945-4BDE-4B71-B3A5-07E1B50A056E@alchemistowl.org>" "26" "Re: [oss-security] Short notes on qmail security guarantee" "^Date:" nil nil "5" "2020052217:01:10" "[oss-security] Short notes on qmail security guarantee" (number mark "        arrigo@alche May 22   26/1011  " thread-indent "\"Re: [oss-security] Short notes on qmail security guarantee\"\n") "<CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>" ("<CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>" "<20200522121750.GA24868@openwall.com>" "<CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Short notes on qmail security guarantee" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19713 invoked by uid 550); 22 May 2020 17:08:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15633 invoked from network); 22 May 2020 17:01:31 -0000
X-Virus-Scanned: amavisd-new at bagheera.alchemistowl.org
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
References: <CAGUWgD8s3DtM6sG9Pj478H06G_evwPsF49pK5Cig0VUHY_mrQg@mail.gmail.com>
 <20200522121750.GA24868@openwall.com>
 <CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>
In-Reply-To: <CAGUWgD-+TDkZqLsFsS_kjxn7iMK6ELERGQfKPNF1qMMArhmzcg@mail.gmail.com>
Message-Id: <6EA79945-4BDE-4B71-B3A5-07E1B50A056E@alchemistowl.org>
X-Mailer: Apple Mail (2.3445.104.14)
Date: Fri, 22 May 2020 19:01:10 +0200
From: Arrigo Triulzi <arrigo@alchemistowl.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Short notes on qmail security guarantee
To: oss-security@lists.openwall.com

On 22 May 2020, at 17:45, Georgi Guninski <gguninski@gmail.com> wrote:
> I am not professional admin, but does postfix require limits?
> Do many widely used daemons need limits?

Well, normally these limits are enforced at the OS level. Depending on your=
 OS of choice there are different ways in which this is done. On BSD-derive=
d systems it is most often in /etc/login.conf via login classes, e.g.:

daemon:\
        :ignorenologin:\
        :datasize=3Dinfinity:\
        :maxproc=3Dinfinity:\
        :openfiles-max=3D2048:\
        :openfiles-cur=3D1024:\
        :stacksize-cur=3D8M:\
        :localcipher=3Dblowfish,a:\
        :tc=3Ddefault:

whereby the user under which Postfix runs would be assigned to the daemon c=
lass (or, of course, a class which you define with suitable restrictions) a=
nd have the limits above (=E2=80=9Ctc=3Ddefault=E2=80=9D means =E2=80=9Cinh=
erit what is not explicitly defined above from the =E2=80=9Cdefault=E2=80=
=9D class, rest is self-evident, I hope).

Arrigo

