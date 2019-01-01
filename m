X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1868" "Tuesday" "1" "January" "2019" "12:07:17" "+0100" "Niels =?utf-8?B?TcO2bGxlcg==?=" "nisse@lysator.liu.se" "<nn5zv8prfe.fsf@armitage.lysator.liu.se>" "41" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010111:07:17" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        nisse@lysato Jan  1   41/1868  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22307 invoked by uid 550); 1 Jan 2019 11:32:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1700 invoked from network); 1 Jan 2019 11:07:30 -0000
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
In-Reply-To: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
	(Jeffrey Walton's message of "Mon, 31 Dec 2018 13:03:27 -0500")
Message-ID: <nn5zv8prfe.fsf@armitage.lysator.liu.se>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (berkeley-unix)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: oss-security@lists.openwall.com,  gmp-bugs@gmplib.org
Date: Tue, 01 Jan 2019 12:07:17 +0100
From: nisse@lysator.liu.se (Niels =?utf-8?Q?M=C3=B6ller?=)
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: Jeffrey Walton <noloader@gmail.com>

Jeffrey Walton <noloader@gmail.com> writes:

> The GMP library uses asserts to crash a program at runtime when
> presented with data it did not expect. The library also ignores user
> requests to remove asserts using Posix's -DNDEBUG. Posix asserts are a
> deugging aide intended for developement, and using them in production
> software ranges from questionable to insecure.

Crashing in a controlled fashion may also be *more* secure that
continuing execution with undefined results. Depending on circumstances,
of course.

I read the general statement "asserts considered harmful" as your
personal opionion, likely based on experience with very different
development projects than I'm involved with. And gmp-bugs isn't really
the right place for that debate (and neither is the nettle mailinglist).

> Second, the SIGABRT terminates the process and can write a core file.

A security sensitive application can easily disable generation of core
files, using setrlimit (on the linux kernel, prctl may also be useful).
That's all part of crashing in a *controlled* fashion on assertion
failures. As far as I'm aware, disabling core dumps is a fairly common
practice in security sensitive applications.

(And besides, most systems have zero ulimit -c as the system default
these days. Which makes sense to me (any application might handle data
that is sensitive to the user), even though as a developer, it's
annoying with extra hoops required to get proper core dumps, including
disabling the core dump collection "services" you mention).

And as Vincent says, there are many ways to crash due to bugs, without
triggering any assertion failure. And you should avoid generating core
dumps for those crashes too.

Regards,
/Niels

--=20
Niels M=C3=B6ller. PGP-encrypted email is preferred. Keyid 368C6677.
Internet email is subject to wholesale government surveillance.
