X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1015" "Wednesday" "12" "April" "2017" "15:00:45" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170412150045.2ce45082@pc1>" "26" "Re: [oss-security] CVE-2017-7592: libtiff: left shift" "^Date:" nil nil "4" "2017041213:00:45" "[oss-security] CVE-2017-7592: libtiff: left shift" (number mark "        hanno@hboeck Apr 12   26/1015  " thread-indent "\"Re: [oss-security] CVE-2017-7592: libtiff: left shift\"\n") "<20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>" ("<457875.000636221-sendEmail@localhost>" "<20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21875 invoked by uid 550); 12 Apr 2017 13:00:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21852 invoked from network); 12 Apr 2017 13:00:58 -0000
Message-ID: <20170412150045.2ce45082@pc1>
In-Reply-To: <20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>
References: <457875.000636221-sendEmail@localhost>
	<20170410072931.o5ptcv5uyhw34gxf@perpetual.pseudorandom.co.uk>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Apr 2017 15:00:45 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-7592: libtiff: left shift
To: oss-security@lists.openwall.com

On Mon, 10 Apr 2017 08:29:31 +0100
Simon McVittie <smcv@debian.org> wrote:

> This is a bug, but how is it a security vulnerability? Can an attacker
> exploit it for DoS or code execution or something with a malformed
> TIFF image?

Quesitons like this come up quite often. Maybe we need a final definite
answer to them all :-)

The reasoning is roughly: It's undefined behavior, so the compiler can
do whatever it wants. So all undefined behavior should be considered
security relevant, because the compiler can always do something that
will turn it into a vuln.
Whether you agree to this or not, it's definitely good secure coding
practice to avoid undefined behavior. People have different ideas of
what to call a vuln and what not. CVE-assigners have lately taken a
very wide approach of declaring many things as cve-worthy. Just accept
that not every CVE means "it's definitely exploitable".

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
