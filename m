X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["493" "Sunday" "6" "January" "2019" "11:31:27" "+0100" "Niels =?utf-8?B?TcO2bGxlcg==?=" "nisse@lysator.liu.se" "<nn4lamm60w.fsf@armitage.lysator.liu.se>" "18" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010610:31:27" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        nisse@lysato Jan  6   18/493   " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<86o990wdu4.fsf@shell.gmplib.org>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<20190101112042.GE7238@zira.vinc17.org>" "<nnwonoob4v.fsf@armitage.lysator.liu.se>" "<86o990wdu4.fsf@shell.gmplib.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9923 invoked by uid 550); 6 Jan 2019 10:56:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27800 invoked from network); 6 Jan 2019 10:31:39 -0000
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
	<20181231191642.GB7238@zira.vinc17.org>
	<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
	<20190101112042.GE7238@zira.vinc17.org>
	<nnwonoob4v.fsf@armitage.lysator.liu.se>
	<86o990wdu4.fsf@shell.gmplib.org>
In-Reply-To: <86o990wdu4.fsf@shell.gmplib.org> (=?utf-8?Q?=22Torbj=C3=B6rn?=
 Granlund"'s message
	of "Tue, 01 Jan 2019 17:18:59 +0100")
Message-ID: <nn4lamm60w.fsf@armitage.lysator.liu.se>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (berkeley-unix)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Jeffrey Walton <noloader@gmail.com>,  oss-security@lists.openwall.com,  gmp-bugs@gmplib.org
Date: Sun, 06 Jan 2019 11:31:27 +0100
From: nisse@lysator.liu.se (Niels =?utf-8?Q?M=C3=B6ller?=)
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: tg@gmplib.org (=?utf-8?Q?Torbj=C3=B6rn?= Granlund)

tg@gmplib.org (Torbj=C3=B6rn Granlund) writes:

> Let's move on.  No bug to be found here.

Just FYI: There was a bug in Nettle's test code, a line

  assert (mpz_invert(key->d, pub->e, phi));

Obviously not working with -DNDEBUG. Fix in commit
https://git.lysator.liu.se/nettle/nettle/commit/73d3c6d5586cc0fd81eab081078=
144d621de07b4

Regards,
/Niels

--=20
Niels M=C3=B6ller. PGP-encrypted email is preferred. Keyid 368C6677.
Internet email is subject to wholesale government surveillance.
