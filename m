X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["851" "Monday" "25" "November" "2019" "17:58:39" "+0000" "Simon McVittie" "smcv@debian.org" nil "24" nil "^Date:" nil nil "11" nil nil (number mark "        smcv@debian. Nov 25   24/851   " thread-indent "\"Re: [oss-security] Lots of bugs in 32-bit x86 Linux entry code\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Lots of bugs in 32-bit x86 Linux entry code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21791 invoked by uid 550); 25 Nov 2019 17:58:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21773 invoked from network); 25 Nov 2019 17:58:54 -0000
Message-ID: <20191125175839.GB197885@espresso.pseudorandom.co.uk>
References: <CALCETrW1z0gCLFJz-1Jwj_wcT3+axXkP_wOCxY8JkbSLzV80GA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrW1z0gCLFJz-1Jwj_wcT3+axXkP_wOCxY8JkbSLzV80GA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
Date: Mon, 25 Nov 2019 17:58:39 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Lots of bugs in 32-bit x86 Linux entry code
To: oss-security@lists.openwall.com

On Mon, 25 Nov 2019 at 08:05:12 -0800, Andy Lutomirski wrote:
> It turns out that there are essentially no upstream development
> resources dedicated to x86_32 Linux. Perhaps unsurprisingly, it was
> badly broken.

To clarify, which of these do you mean?

A. IA-32 (uname -m: i?86) Linux kernels are buggy/vulnerable when running
   IA-32 (i?86-linux-*) user-space processes (which are the only user-space
   that these kernels support)

B. x86_64 (aka AMD64, uname -m: x86_64) Linux kernels are buggy/vulnerable
   when running IA-32 (i?86-linux-*) user-space processes, but not when
   running x86_64 (x86_64-linux-*) user-space processes

C. x86_64 (AMD64) Linux kernels are buggy/vulnerable when running x32
   (x86_64-linux-gnux32) processes

D. something else?

If I'm understanding correctly, you are reporting A, and only A?

Thanks,
    smcv
