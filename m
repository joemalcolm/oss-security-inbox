X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1294" "Monday" "19" "April" "2021" "11:01:54" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" nil "30" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       dwheeler@dwh Apr 19   30/1294  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25824 invoked by uid 550); 19 Apr 2021 15:02:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25804 invoked from network); 19 Apr 2021 15:02:28 -0000
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
From: "David A. Wheeler" <dwheeler@dwheeler.com>
In-Reply-To: <YHwlS06UV25JUeqh@momentum.pseudorandom.co.uk>
Date: Mon, 19 Apr 2021 11:01:54 -0400
Cc: security@debian.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <CEA32CF0-DCF5-4746-9BDB-5AF9CEA1118A@dwheeler.com>
References: <YHwlS06UV25JUeqh@momentum.pseudorandom.co.uk>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.120.23.2.4)
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

> On Sat, 17 Apr 2021 at 07:41:15 -0700, Tavis Ormandy wrote:
>> Oh, I also pitched using popen("/bin/ping" ..), but I think nobody is
>> really convinced that will work, but I kinda like it :)

On Apr 18, 2021, at 8:25 AM, Simon McVittie <smcv@debian.org> wrote:

> That's consistent with the principle of least-privilege, and the widely
> cited Unix philosophy of having programs that do one thing well.
>=20
> If you need to gain privileges, then I think that's a much, much better
> approach - ideally a new ping-like program that prints a machine-readable
> syntax rather than having to screen-scrape human-readable output, but
> if that's not available then ping itself is the next best thing.


I agree, running =E2=80=9Cping=E2=80=9D in a separate process
is FAR better than giving the =E2=80=9Cmain=E2=80=9D process
extra permissions it doesn=E2=80=99t actually need.
You=E2=80=99d have to be careful about the parameters sent, but that=E2=80=
=99s necessary anyway.
I don=E2=80=99t see the problem of calling /bin/ping, that sounds like the =
right answer.

Scraping is undesirable, but sometimes needed. If this is a common need, a
long-term solution might be to create an option on ping to generate a stand=
ard
format that=E2=80=99s easier to machine-parse.

--- David A. Wheeler

