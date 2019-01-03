X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1709" "Thursday" "3" "January" "2019" "22:46:18" "+0100" "=?utf-8?B?VG9yYmrDtnJu?= Granlund" "tg@gmplib.org" "<868t01ct3p.fsf@shell.gmplib.org>" "49" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010321:46:18" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        tg@gmplib.or Jan  3   49/1709  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8n8053uxvN94L=ZbeFvNGEmW5BrxwF=XPQVjukA54=kTg@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>" "<CAH8yC8n8053uxvN94L=ZbeFvNGEmW5BrxwF=XPQVjukA54=kTg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15819 invoked by uid 550); 3 Jan 2019 22:12:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30522 invoked from network); 3 Jan 2019 21:53:42 -0000
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
	<a09d0918aa33cc80afea69c8d5bdfda7.squirrel@student-web1.dm.unipi.it>
	<CAH8yC8n8053uxvN94L=ZbeFvNGEmW5BrxwF=XPQVjukA54=kTg@mail.gmail.com>
In-Reply-To: <CAH8yC8n8053uxvN94L=ZbeFvNGEmW5BrxwF=XPQVjukA54=kTg@mail.gmail.com>
	(Jeffrey Walton's message of "Thu, 3 Jan 2019 15:42:09 -0500")
Message-ID: <868t01ct3p.fsf@shell.gmplib.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (berkeley-unix)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com,  gmp-bugs@gmplib.org
Date: Thu, 03 Jan 2019 22:46:18 +0100
From: tg@gmplib.org (=?utf-8?Q?Torbj=C3=B6rn?= Granlund)
Reply-To: oss-security@lists.openwall.com
Sender: tg@gmplib.org
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: Jeffrey Walton <noloader@gmail.com>

Jeffrey Walton <noloader@gmail.com> writes:

  Here's what I witness on a BananaPi and a couple of other boards. Can
  you provide info on the ARM boards you are using? I have about 8 of
  them for testing, and I may be able to duplicate your [successful]
  result.

Marco and others have told you to read the GMP manual.  People have
explained what you do wrong and it is clear that you know very well why
your CFLAGS messing breaks things.  Yet, you insist on spreading the lie
that GMP "does not build".

  Returning a failure from mpn_sec_powm would be a most welcomed
  improvement.

You have repeated this several times already.

The GMP API is what it is.  If you don't like it, well, we're so sorry.

  It would be a welcomed improvement if GMP does it in
  other places, too. Crashing is least welcomed behavior for many uses
  cases, including those where availability and confidentiality is a
  concern.

You have repeated this several times, and people have patiently replied
and explained how to handle this safely.

  Gracefully handling failure serves several purposes. First, returning
  failure is what developers expect to happen.

Really?  Did you talk to them?

  If a program uses a function incorrectly then it is expected to
  fail. Developers are usually good about checking return values at call
  sites.

I have yet to find one program which checks all return values.

  Second, when GMP crashes it is setting a policy for the application.

Any API sets policies.

We've had enough of your nagging and aggressiveness and your threats in
private email.  Your messages to the GMP lists will henceforth be
automatically discarded.

--=20
Torbj=C3=B6rn
Please encrypt, key id 0xC8601622
