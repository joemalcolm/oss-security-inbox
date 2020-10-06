X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1407" "Tuesday" "6" "October" "2020" "22:22:59" "+1100" "Michael Ellerman" "mpe@ellerman.id.au" "<87o8lf38fg.fsf@mpe.ellerman.id.au>" "38" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100611:22:59" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       mpe@ellerman Oct  6   38/1407  " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201005204820.GA8410@openwall.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005204820.GA8410@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3266 invoked by uid 550); 6 Oct 2020 11:24:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1979 invoked from network); 6 Oct 2020 11:23:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
	s=201909; t=1601983385;
	bh=V/52xWy3P0j+/NevZuVXmr4mE2YwalblT4FB3xBxsCo=;
	h=From:To:Subject:In-Reply-To:References:Date:From;
	b=ad90QbByoBM5DaF019wYpTVWhdDf0mgFk+rCB3F6s3J0vqjAK+JUK/xYJa05JbQx2
	 z4Y7nta3kCReOlFsdYQZ602UxEq1HHoJYlvFpfT/ab5wRmauHeQ5tXM6zOH77cG2Kl
	 J1Y1DglrhhgB0oH2FFbf+Kz53lEOD34UrlyHZvYSH0EXhvHVLLFS5h8u5fhKqlcNRb
	 R5OsTI/cQdTFBO0CQVkO1LoUHaEhqZDmvXoLnAKo9tiwG/zobCC1UsZzXr/jTi4/aB
	 3OLSOiKphvJDhI7xlODeZT8jSUWpOw/828CDG1DPv1iNU+D25FcBhUuGfx8FBNSXpf
	 iHRzFedaWRgdg==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
In-Reply-To: <20201005204820.GA8410@openwall.com>
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com> <20201005204820.GA8410@openwall.com>
Date: Tue, 06 Oct 2020 22:22:59 +1100
Message-ID: <87o8lf38fg.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?

Solar Designer <solar@openwall.com> writes:
> Hi all,
>
> As a moderator I approved all messages in this thread so far, but I am
> unhappy about the quality of both Georgi's message and the replies.
>
> This is a valid topic, but there's no room in it for trolling (that's
> how Georgi's message came across, even if maybe unintentionally) nor for
> responding only about the presumed trolling.  Just assume good faith and
> post a response that's actually useful to others in here.  I'll try:
>
> On Mon, Oct 05, 2020 at 03:02:33PM +0300, Georgi Guninski wrote:
>> Are there major security changes needed if
>> gnu/linux dominates the desktop and/or mobile phone
>> markets?
>
> I'd say yes, major security changes are needed.

Agree.

> On the desktop, major Linux distributions (and by the way *BSDs and
> Solaris are not very different in this respect, I think) when used as
> single-user desktop systems lack security isolation between applications
> of the user.

You can get some isolation fairly easily using firejail.

It's not as secure as eg. Qubes, but it's available in most distros and
can be as simple as sticking "firejail" in front of a command.

You can use it to isolate your browser/irc/mail client, or possibly more
importantly your build environment, from your wider home directory.

As usual the arch wiki has good doco:

  https://wiki.archlinux.org/index.php/firejail#Usage

cheers
