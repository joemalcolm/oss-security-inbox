X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1696" "Thursday" "12" "April" "2018" "17:18:45" "-0400" "David A. Wheeler" "dwheeler@dwheeler.com" "<E1f6jcD-0002pc-T3@rmmprod07.runbox>" "41" "Re: [oss-security] Re: Terminal Control Chars" nil nil nil "4" "2018041221:18:45" "[oss-security] Re: Terminal Control Chars" (number mark "U       dwheeler@dwh Apr 12   41/1696  " thread-indent "\"Re: [oss-security] Re: Terminal Control Chars\"\n") "<20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>" ("<20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15679 invoked by uid 550); 12 Apr 2018 21:45:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32509 invoked from network); 12 Apr 2018 21:18:57 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
From: "David A. Wheeler" <dwheeler@dwheeler.com>
To: "oss-security" <oss-security@lists.openwall.com>
CC: "oss-security" <oss-security@lists.openwall.com>
Date: Thu, 12 Apr 2018 17:18:45 -0400 (EDT)
X-Mailer: RMM6
In-Reply-To: <20180412180720.qmtilbpi27kxa3dm@matica.foolinux.mooo.com>
Message-Id: <E1f6jcD-0002pc-T3@rmmprod07.runbox>
Subject: Re: [oss-security] Re: Terminal Control Chars

On Thu, 12 Apr 2018 11:07:20 -0700, Ian Zimmerman <itz@very.loosely.org> wr=
ote:
> The term "invisible character" has some obvious (if perhaps informal)
> meaning.  But I don't really know what "control character" means.  Is a
> page separator (^L) a control character, for example?  Is DEL one (ASCII
> 127)?

The term "control character" has a standard definition for every encoding
I'm familiar with.  ASCII defined a set of control characters, and
Unicode built on them.

The Unicode list of control characters is here:
https://www.fileformat.info/info/unicode/category/Cc/list.htm
You'll see it includes:
U+0007 	BELL
U+0008 	BACKSPACE
U+0009 	CHARACTER TABULATION
U+000A 	LINE FEED (LF)
U+000C 	FORM FEED (FF) (aka ^L)
U+000D 	CARRIAGE RETURN (CR)
U+007F 	DELETE

According to Wikipedia <https://en.wikipedia.org/wiki/ASCII>,
the set of control characters in US-ASCII is 00..1F and 7F (hex).

Russ Allbery:
> I think a useful definition of "control character" in this context (and I
> realize this doesn't exactly match the ASCII definition) is a character
> that results in an action other than insertion being taken...
> CR and LF would not be control characters in that definition, since they
> insert a newline and don't cause an action. Similarly, TAB wouldn't be a
> control character in that definition.

As you noted, that definition doesn't match the ASCII definition, but
I also think it's misleading.  If someone pastes a CR/LF into a shell promp=
t,
it certainly *DOES* cause an action, namely, execution of that line.
That's probably not what you meant by "action", but from a security
point-of-view, causing a script to execute is rather important :-).

--- David A. Wheeler
