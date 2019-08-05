X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1268" "Monday" "5" "August" "2019" "19:27:37" "-0400" "Rich Felker" "dalias@libc.org" "<20190805232737.GA11260@brightrain.aerifal.cx>" "25" "[oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" nil nil nil "8" "2019080523:27:37" "[oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" (number mark "U       dalias@libc. Aug  5   25/1268  " thread-indent "\"[oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25730 invoked by uid 550); 5 Aug 2019 23:27:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25699 invoked from network); 5 Aug 2019 23:27:50 -0000
Date: Mon, 5 Aug 2019 19:27:37 -0400
From: Rich Felker <dalias@libc.org>
To: oss-security@lists.openwall.com
Cc: musl@lists.openwall.com
Message-ID: <20190805232737.GA11260@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@aerifal.cx>
Subject: [oss-security] CVE request: musl libc 1.1.23 and earlier x87 float stack imbalance

I've discovered a flaw in musl libc's arch-specific math assembly code
for i386, whereby at least the log1p function and possibly others
return with more than one item on the x87 stack. This can lead to x87
stack overflow in the execution of subsequent math code, causing it to
incorrectly produce a NAN in place of the actual result. If floating
point results are used in flow control, this can lead to runaway wrong
code execution. For example, in Python (version 3.6.8 tested), at
least one code path of the dtoa function becomes an infinite loop
performing what's effectively an unbounded-length memset when entered
under such a condition.

This bug is potentially exploitable in software which calls affected
math functions with inputs under user control. Impact depends on how
the application handles the ABI-violating x87 state; in Python it
seems to be limited to producing a crash.

The bug is present in all versions after 0.9.12, up through the
current (1.1.23) release. Only 32-bit x86 systems (aka IA32, musl's
"i386" arch) are affected. Users of other archs, including x86_64, can
safely ignore this issue.

Affected users are advised to apply the following patch:

https://git.musl-libc.org/cgit/musl/patch/?id=f3ed8bfe8a82af1870ddc8696ed4cc1d5aa6b441

