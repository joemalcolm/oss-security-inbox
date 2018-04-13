X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["605" "Thursday" "12" "April" "2018" "20:07:56" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1f6mFw-0007bA-AS@rmmprod06.runbox>" "13" "Re: [oss-security] Re: Terminal Control Chars" nil nil nil "4" "2018041300:07:56" "[oss-security] Re: Terminal Control Chars" (number mark "U       dwheeler@dwh Apr 12   13/605   " thread-indent "\"Re: [oss-security] Re: Terminal Control Chars\"\n") "<20180412225441.GC15390@espresso.pseudorandom.co.uk>" ("<20180412225441.GC15390@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6089 invoked by uid 550); 13 Apr 2018 00:08:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6064 invoked from network); 13 Apr 2018 00:08:07 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
From: "David A. Wheeler" <dwheeler@dwheeler.com>
To: "oss-security" <oss-security@lists.openwall.com>
CC: "oss-security" <oss-security@lists.openwall.com>
Date: Thu, 12 Apr 2018 20:07:56 -0400 (EDT)
X-Mailer: RMM6
In-Reply-To: <20180412225441.GC15390@espresso.pseudorandom.co.uk>
Message-Id: <E1f6mFw-0007bA-AS@rmmprod06.runbox>
Subject: Re: [oss-security] Re: Terminal Control Chars

On Thu, 12 Apr 2018 23:54:41 +0100, Simon McVittie <smcv@debian.org> wrote:
> I hope you're not proposing that, to protect users of terminal emulators,
> general-purpose web browsers should not allow copying more than a
> paragraph at a time?

Not at all!  My point is that we should be careful about terminology.
"Control characters" already has a well-known standard definition,
using the same term for a different set is confusing & could lead to misimp=
lementation.
Just call them something else that doesn't already have a standard
definition ("dangerous bytes" or whatever).

--- David A. Wheeler=
