Received: (qmail 15436 invoked by uid 550); 31 Dec 2022 17:28:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14259 invoked from network); 31 Dec 2022 17:28:03 -0000
Date: Sat, 31 Dec 2022 18:27:58 +0100
From: Solar Designer <solar@openwall.com>
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Shawn Webb' <shawn.webb@hardenedbsd.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	Alejandro Colomar <alx.manpages@gmail.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Message-ID: <20221231172758.GA10297@openwall.com>
References: <Y6SJDbKBk471KE4k@p183> <Y6TUJcr/IHrsTE0W@codewreck.org> <1a1963aa1036ba07@orthanc.ca> <20221228152458.6xyksrxunukjrtzx@mutt-hbsd> <fe260c38cf7e416288449691bb9cb5dd@AcuMS.aculab.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe260c38cf7e416288449691bb9cb5dd@AcuMS.aculab.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat correctly

Hi all,

Let's wind this oss-security thread down as it relates to brainstorming
and commenting on totally new designs - no more of that, please.

Many things were said, but realistically the interface isn't _that_
broken (this can be parsed correctly, and procps-ng manages to) and is
(hopefully) not going to change much (in my opinion, and I know I'm not
alone in this, most of the proposals would make things worse overall).

Somewhat realistically, one possible change is replacing the most risky
characters, such as braces and anything <= ASCII 32, perhaps with '?'
to match what procps-ng is doing.  Perhaps do this either on all updates
of "comm" or in all places where "comm" is reported to userspace
(including procfs and kernel messages, by calling a common function).
"comm" isn't the full process name anyway - it's often truncated - so it
can reasonably be made safer in other ways as well.  As an option, the
replacing of whitespace (ASCII 32) and braces could be limited to the
"stat" file, but the control characters are (even more) problematic with
other interfaces where "comm" is exposed, so replacing them should
probably be global.

Happy New Year!

Alexander
