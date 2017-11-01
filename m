X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2793" "Wednesday" "1" "November" "2017" "17:11:36" "+0100" "Solar Designer" "solar@openwall.com" "<20171101161136.GA20860@openwall.com>" "54" "Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks" nil nil nil "11" "2017110116:11:36" "[oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks" (number mark "U       solar@openwa Nov  1   54/2793  " thread-indent "\"Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks\"\n") "<94352367.aY5R7YHe3W@wanheda>" ("<tencent_C577451864B1690107062CD83581D6BE5708@qq.com>" "<94352367.aY5R7YHe3W@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8159 invoked by uid 550); 1 Nov 2017 16:12:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7719 invoked from network); 1 Nov 2017 16:11:49 -0000
Date: Wed, 1 Nov 2017 17:11:36 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: 16362505@qq.com
Message-ID: <20171101161136.GA20860@openwall.com>
References: <tencent_C577451864B1690107062CD83581D6BE5708@qq.com> <94352367.aY5R7YHe3W@wanheda>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <94352367.aY5R7YHe3W@wanheda>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2017-16231: PCRE 8.41 match() stack overflow; CVE-2017-16232: LibTIFF 4.0.8 memory leaks

On Wed, Nov 01, 2017 at 04:29:32PM +0100, Agostino Sarubbo wrote:
> On mercoled?? 1 novembre 2017 03:26:56 CET ?????? wrote:
> > > [Suggested description]
> > > In PCRE 8.41,
> > > after compiling, a pcretest load test PoC produces a crash overflow
> > > in the function match() in pcre_exec.c because of a self-recursive call.
[...]
> > Use CVE-2017-16231.
> 
> I guess that this bug is similar or the same described here:
> https://bugs.exim.org/show_bug.cgi?id=2047
> 
> Based on the upstream comment I'd suggest to reject the CVE.

Let's quote that comment in here for discussion and archival:

"Philip Hazel 2017-02-24 15:53:50 GMT

It is very easy to write patterns that have extremely large search
trees, and these can consume a lot of time and/or stack in the current
implementation of pcre2_match(). There are options (*LIMIT_MATCH) and
(*LIMIT_RECURSION) that can be used to limit the amount of stack that is
used. The limits can also be set from pcretest and from programs that
call the library directly. This is all well documented. Fuzzers should
always set these limits much lower than the defaults. See, for example,
the file src/pcre2_fuzzsupport.c in PCRE2.

Also, as I have said several times recently on the list, there will soon
be a new implementation of pcre2_match() that uses heap storage rather
than the stack. The same limits are available to control the amount of
resource used. This should avoid stack overflows, but there will always
be patterns that will take a lot of resources if you don't limit them."

I'm not sure I agree with Philip on this.  Based on the comment above,
this is documented behavior and there are limits in place that a program
could use.  However, the suggestion that "Fuzzers should always set
these limits much lower than the defaults." might mean that the defaults
are inadequate for safe production use as well, if a pattern might be
untrusted.  If fuzzers could hit stack overflow with default limits,
then so could untrusted patterns in production, no?  If so, that would
keep this a security issue, and probably a CVE-worthy one, unless the
documentation also states that only trusted patterns are supported.

Alexander

P.S. The original message arrived to oss-security with a Subject of
"Re: [scr412063] PCRE; LibTIFF" preceded by some probably Chinese
characters.  As a moderator, I edited the Subject to what it currently
is before approving the message.  I regret that the message combines
issues in two unrelated packages, but I never edit message bodies as me
doing so would certainly be too much and potentially inappropriate
(misrepresentation of what someone else posted; even fixing the Subjects
is borderline in that respect).  I can only hope that future postings by
16362505 will be better, given this little note. ;-)
