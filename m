X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1353" "Thursday" "12" "April" "2018" "23:54:41" "+0100" "Simon McVittie" "smcv@debian.org" "<20180412225441.GC15390@espresso.pseudorandom.co.uk>" "27" "Re: [oss-security] Re: Terminal Control Chars" nil nil nil "4" "2018041222:54:41" "[oss-security] Re: Terminal Control Chars" (number mark "U       smcv@debian. Apr 12   27/1353  " thread-indent "\"Re: [oss-security] Re: Terminal Control Chars\"\n") "<E1f6jcD-0002pc-T3@rmmprod07.runbox>" ("<20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>" "<E1f6jcD-0002pc-T3@rmmprod07.runbox>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14074 invoked by uid 550); 12 Apr 2018 22:54:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14056 invoked from network); 12 Apr 2018 22:54:57 -0000
Date: Thu, 12 Apr 2018 23:54:41 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20180412225441.GC15390@espresso.pseudorandom.co.uk>
References: <20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>
 <E1f6jcD-0002pc-T3@rmmprod07.runbox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1f6jcD-0002pc-T3@rmmprod07.runbox>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [oss-security] Re: Terminal Control Chars

On Thu, 12 Apr 2018 at 17:18:45 -0400, David A. Wheeler wrote:
> Russ Allbery:
> > I think a useful definition of "control character" in this context (and I
> > realize this doesn't exactly match the ASCII definition) is a character
> > that results in an action other than insertion being taken...
> > CR and LF would not be control characters in that definition
> 
> As you noted, that definition doesn't match the ASCII definition, but
> I also think it's misleading.  If someone pastes a CR/LF into a shell prompt,
> it certainly *DOES* cause an action, namely, execution of that line.

I hope you're not proposing that, to protect users of terminal emulators,
general-purpose web browsers should not allow copying more than a
paragraph at a time? That seems like a change that is unlikely to be
accepted.

Similarly, if filtering of pastes is done at the destination side (the
terminal emulator), it would seem bad to be unable to paste more than
a line at a time into a text editor that happens to be running in a
terminal emulator (for instance the one in which I'm writing this email).

Russ's more loose definition of "control character" (in particular,
preventing copying and/or pasting ESC and the 0x80-0x9F range) would be
enough to protect users of a terminal/shell combination that supports
bracketed paste, as far as I'm aware?

    smcv
