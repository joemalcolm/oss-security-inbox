X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3334" "Sunday" "20" "September" "2015" "06:26:31" "+0300" "Solar Designer" "solar@openwall.com" "<20150920032631.GA2301@openwall.com>" "94" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015092003:26:31" "[oss-security] s/party/hack like it's 1999" (number mark "        solar@openwa Sep 20   94/3334  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<20150920022811.GJ17773@brightrain.aerifal.cx>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>" "<20150919233415.GA31305@openwall.com>" "<20150920022811.GJ17773@brightrain.aerifal.cx>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17438 invoked by uid 550); 20 Sep 2015 03:26:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17412 invoked from network); 20 Sep 2015 03:26:47 -0000
Message-ID: <20150920032631.GA2301@openwall.com>
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt> <CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com> <20150919233415.GA31305@openwall.com> <20150920022811.GJ17773@brightrain.aerifal.cx>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150920022811.GJ17773@brightrain.aerifal.cx>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 20 Sep 2015 06:26:31 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

Thank you for posting this, Rich!

On Sat, Sep 19, 2015 at 10:28:11PM -0400, Rich Felker wrote:
> Writer 1: C2 A9
> Writer 2: C3 9B 31 6D
> 
> One possible interleaving (writes to terminals have _no_ atomicity at
> all) is:
> 
> C3 C2 9B 31 6D A9
> 
> This of course contails illegal sequences. The standard practice for
> processing the above sequence of bytes is to drop or replace truncated
> or illegal sequences. The exact manner in which this is done varies,
> but since most software tries to minimize data loss in the case of
> dropped or corrupt bytes, the usual interpretation is:
> 
> [illegal C3] [valid C2 9B] [valid 31] [valid 6D] [illegal A9]

And in case a terminal assumes the next byte after C3 is corrupt rather
than lost, so would treat [illegal C3 C2] for the example above, this
can still be bypassed with a third writer happening to insert any byte
after the C3, so we'd have e.g.:

Writer 1: C2 A9
Writer 2: C3 9B 31 6D
Writer 3: 41

and the attacker's desired interleaving would be:

C3 41 C2 9B 31 6D A9

So:

[illegal C3 41] [valid C2 9B] [valid 31] [valid 6D] [illegal A9]

> Regardless of how the illegal sequences are dropped/replaced, then,
> the characters in the middle are:
> 
> U+009B U+0031 U+006D
> 
> or:
> 
> CSI '1' 'm'
> 
> If C1 characters are processed, that put your terminal in bold mode.
> 
> Note that all that was needed for this to happen was for a stray C2
> byte from one writer to get injected just before the character-final
> 9B byte of a multibyte character from another writer. I specifically
> chose my example so that both writers output data which is well-formed
> and printable UTF-8, but that was not necessary.
> 
> Since I see no reasonable application-side mitigation for this, I

Yeah.  A user's mitigation may be to avoid running multiple programs at
a time on a UTF-8 terminal.  E.g. running "ps &" appears unsafe
(although is indeed unlikely to actually be used in a successful
attack), even if "ps" replaces control characters with question marks.

> think the right recommendation should be disabling C1 control codes in
> terminal emulators, at least in UTF-8 mode, but preferably just across
> the board. AFAIK nothing is using them. They don't even work reliably
> across all terminal emulators; many users have C1 disabled from the
> old days where that was the right way to use certain legacy 8-bit
> encodings, and some UTF-8 terminal emulators probably don't even
> support them at all.

I still have:

XTerm*allowC1Printable: true
XTerm*allowFontOps: false
XTerm*allowTcapOps: false
XTerm*allowTitleOps: false
XTerm*allowSendEvents: false
XTerm*allowWindowOps: false

Non-security, but also useful (if anyone is still using classic xterm):

XTerm*saveLines: 10000

> Note that when considering disabling C1 controls in screen or tmux,
> it's important that the attaching terminal also has them disabled.
> Otherwise screen/tmux will treat them as printable and pass them
> through to be interpreted by the attaching terminal, which is
> potentially even more dangerous. It would be nice to see an option in
> screen/tmux not to treat C1 as printable but rather filter out these
> characters, so that users running everything in screen/tmux don't have
> to worry about potentially dangerous settings on the terminal they
> attach from.

I agree.

Alexander
