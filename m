X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1686" "Tuesday" "1" "January" "2019" "12:44:32" "+0100" "Niels =?utf-8?B?TcO2bGxlcg==?=" "nisse@lysator.liu.se" "<nnwonoob4v.fsf@armitage.lysator.liu.se>" "43" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010111:44:32" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        nisse@lysato Jan  1   43/1686  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<20190101112042.GE7238@zira.vinc17.org>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<20190101112042.GE7238@zira.vinc17.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13546 invoked by uid 550); 1 Jan 2019 11:46:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11765 invoked from network); 1 Jan 2019 11:44:44 -0000
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
	<20181231191642.GB7238@zira.vinc17.org>
	<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
	<20190101112042.GE7238@zira.vinc17.org>
In-Reply-To: <20190101112042.GE7238@zira.vinc17.org> (Vincent Lefevre's
	message of "Tue, 1 Jan 2019 12:20:42 +0100")
Message-ID: <nnwonoob4v.fsf@armitage.lysator.liu.se>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (berkeley-unix)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: oss-security@lists.openwall.com,  gmp-bugs@gmplib.org
Date: Tue, 01 Jan 2019 12:44:32 +0100
From: nisse@lysator.liu.se (Niels =?utf-8?Q?M=C3=B6ller?=)
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: Jeffrey Walton <noloader@gmail.com>

Vincent Lefevre <vincent@vinc17.net> writes:

> If you
> don't like that, you can write a wrapper library that will sanitize
> all the inputs and implement error processing (e.g. where the return
> value contains an error code and the result, if any), and call this
> library instead of GMP.

Regarding invalid inputs, in the GMP sources, validity checks on
function inputs generally use the ASSERT macro, which is disabled by
default. Non-assert validity checks with a return value are used only
when the check is non-trivial, e.g., for the mpz_invert function which
requires arguments to be co-prime. All easy validity checks (null
pointers, divide by zero, and the like) are left as the responsibility
of the application.

In a few places, GMP sources use ASSERT_ALWAYS. This is for internal
consistency checks, or when deveolopers believe a condition is
arithmetically impossible, but really would like to get a bug report if
that belief turns out to be wrong.

The assert that Jeffrey has hit is in sec_powm.c,=20

  ASSERT_ALWAYS (enb >=3D windowsize);

As far as I can see, "enb" is the input argument to the win_size function,
and "windowsize" is the return value. I'm waiting for more information,
since it works fine in my build. Possible explanations I see are

1. Invalid configuration of POWM_SEC_TABLE (used by the win_size function).

2. Some general memory-overwrite problem, due to too small scratch
   space or something like that.

I interpret this ASSERT_ALWAYS as a way to check that POWM_SEC_TABLE is
sane.

Regards,
/Niels

--=20
Niels M=C3=B6ller. PGP-encrypted email is preferred. Keyid 368C6677.
Internet email is subject to wholesale government surveillance.
