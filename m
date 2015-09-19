X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3610" "Sunday" "20" "September" "2015" "02:34:15" "+0300" "Solar Designer" "solar@openwall.com" "<20150919233415.GA31305@openwall.com>" "81" "Re: [oss-security] s/party/hack like it's 1999" nil nil nil "9" "2015091923:34:15" "[oss-security] s/party/hack like it's 1999" (number mark "        solar@openwa Sep 20   81/3610  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" "<CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1746 invoked by uid 550); 19 Sep 2015 23:34:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1728 invoked from network); 19 Sep 2015 23:34:20 -0000
Message-ID: <20150919233415.GA31305@openwall.com>
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt> <CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJWnFaP4QGvJxsJes7fmud787xG=vuh+AFiYPh79kiSLOe-rOA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 20 Sep 2015 02:34:15 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

On Thu, Sep 17, 2015 at 11:33 AM,  <up201407890@alunos.dcc.fc.up.pt> wrote:
> Federico Bento <up201407890@alunos.dcc.fc.up.pt>
[...]
> escape sequences have been introduced circa 70's

Yes, it appears to be 1970s for multi-character escape sequences (DEC
VT05 with cursor positioning is 1970), but single characters controlling
a machine were introduced a century earlier:

https://en.wikipedia.org/wiki/Control_character#History

"A form of control characters were introduced in the 1870 Baudot code:
NUL and DEL.  The 1901 Murray code added the carriage return (CR) and
line feed (LF), and other versions of the Baudot code included other
control characters.

The bell character (BEL), which rang a bell to alert operators, was also
an early teletype control character."

DEL would have been usable for deception if computers and CRT terminals
existed at the time.

ENQ is also very old:

https://en.wikipedia.org/wiki/Enquiry_character

On Thu, Sep 17, 2015 at 12:33:28PM -0430, Manuel Gomez wrote:
> There is absolutely nothing wrong with `head`, `tail`, `more`, `curl`,
> `wget` or `diff`.

I agree that Federico's examples show nothing wrong with these tools.

However, out of these tools, I think we should test curl and wget for
their handling of metadata such as filenames and HTTP responses when
printing them (likely) to the terminal.  Federico's examples do not test
this (they explicitly request the remote file's content to be printed,
so having it printed verbatim and interpreted by the terminal, if any,
is expected behavior).

In processing of metadata, I think such tools that are commonly run on a
terminal should prevent character codes in the typical controls ranges
(ranges C0 and C1, and DEL character) from being sent to the terminal.

https://en.wikipedia.org/wiki/C0_and_C1_control_codes

What exactly such programs should do is debatable, though.  For example,
the ps command from Linux procps prints question marks.  Its detection
of control characters is locale and multibyte character aware, which
doesn't make me confident: it relies on libc and on locale data, neither
of which is directly related to a terminal one is using.  It's also more
complex (especially including libc and locale data), and hence poses a
higher risk of implementation bugs, than a direct check for C0 and C1
ranges and DEL would have been.  Maybe this complexity is a price to pay
for supporting arbitrary printable UTF-8, which includes codes in the C1
range in continuation bytes.

Perhaps we can pay a lower code complexity price by checking for a UTF-8
locale and then validating the UTF-8 characters explicitly (assuming
that if a UTF-8 locale is chosen, the terminal is also set to UTF-8).
Maybe we need a generic code snippet or library of this sort?

Then, besides terminal escapes there are UTF-8 control characters: BOM,
LRM, RLM (any others?)

https://en.wikipedia.org/wiki/Byte_order_mark
https://en.wikipedia.org/wiki/Left-to-right_mark
https://en.wikipedia.org/wiki/Right-to-left_mark

Should our code be checking for these too?  Or is it a reason to bite
the bullet and rely on the locale data?

Besides possible locale data bugs (which I've seen back on glibc 2.1.x),
there are also 8-bit locales where some legitimate printable characters
fall into C1.  Should we assume that anyone with such a locale
configured is running on a terminal that won't process the corresponding
codes in C1 as control (or it's their own problem otherwise)?  Luckily,
this is one issue that UTF-8 made mostly irrelevant.

With UTF-8, it might be different how to s/party/hack/ now than in 1999.

Alexander
