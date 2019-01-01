X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["571" "Tuesday" "1" "January" "2019" "17:18:59" "+0100" "=?utf-8?B?VG9yYmrDtnJu?= Granlund" "tg@gmplib.org" "<86o990wdu4.fsf@shell.gmplib.org>" "17" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010116:18:59" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        tg@gmplib.or Jan  1   17/571   " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<nnwonoob4v.fsf@armitage.lysator.liu.se>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<20190101112042.GE7238@zira.vinc17.org>" "<nnwonoob4v.fsf@armitage.lysator.liu.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7928 invoked by uid 550); 1 Jan 2019 16:41:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24298 invoked from network); 1 Jan 2019 16:26:50 -0000
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
	<20181231191642.GB7238@zira.vinc17.org>
	<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
	<20190101112042.GE7238@zira.vinc17.org>
	<nnwonoob4v.fsf@armitage.lysator.liu.se>
In-Reply-To: <nnwonoob4v.fsf@armitage.lysator.liu.se> ("Niels =?utf-8?Q?M?=
 =?utf-8?Q?=C3=B6ller=22's?=
	message of "Tue, 01 Jan 2019 12:44:32 +0100")
Message-ID: <86o990wdu4.fsf@shell.gmplib.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (berkeley-unix)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: Jeffrey Walton <noloader@gmail.com>,  oss-security@lists.openwall.com,  gmp-bugs@gmplib.org
Date: Tue, 01 Jan 2019 17:18:59 +0100
From: tg@gmplib.org (=?utf-8?Q?Torbj=C3=B6rn?= Granlund)
Reply-To: oss-security@lists.openwall.com
Sender: tg@gmplib.org
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: nisse@lysator.liu.se (Niels =?utf-8?Q?M=C3=B6ller?=)

  The assert that Jeffrey has hit is in sec_powm.c,=20

    ASSERT_ALWAYS (enb >=3D windowsize);

  As far as I can see, "enb" is the input argument to the win_size function,
  and "windowsize" is the return value. I'm waiting for more information,
  since it works fine in my build. Possible explanations I see are

A reasonable assumption is that this user has modified the sources to
cause this bug.  The motive would be to support his auxesis about how
insecure GMP is.

Let's move on.  No bug to be found here.

--=20
Torbj=C3=B6rn
Please encrypt, key id 0xC8601622
