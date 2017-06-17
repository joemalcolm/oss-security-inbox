X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["817" "Saturday" "17" "June" "2017" "13:27:16" "+0100" "Simon McVittie" "smcv@debian.org" "<20170617122716.gsaalyhxkv7ekmdm@perpetual.pseudorandom.co.uk>" "18" "Re: [oss-security] two vulns in uClibc-0.9.33.2" "^Date:" nil nil "6" "2017061712:27:16" "[oss-security] two vulns in uClibc-0.9.33.2" (number mark "        smcv@debian. Jun 17   18/817   " thread-indent "\"Re: [oss-security] two vulns in uClibc-0.9.33.2\"\n") "<CALx_OUCYUQO2Xdzp9XDGjZ=xXLzjxhNt6Z92N1anR67tEr-4EA@mail.gmail.com>" ("<tencent_18C312B86EA079DA42B11D83@qq.com>" "<20170616204437.GC2269@hunt>" "<CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>" "<alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>" "<CALx_OUCYUQO2Xdzp9XDGjZ=xXLzjxhNt6Z92N1anR67tEr-4EA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9472 invoked by uid 550); 17 Jun 2017 12:27:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9451 invoked from network); 17 Jun 2017 12:27:32 -0000
Message-ID: <20170617122716.gsaalyhxkv7ekmdm@perpetual.pseudorandom.co.uk>
References: <tencent_18C312B86EA079DA42B11D83@qq.com>
 <20170616204437.GC2269@hunt>
 <CALx_OUAtt5gbRP+imZfXJwvgfs+Y5hrYqdmLhJHS7SRN5z_VCQ@mail.gmail.com>
 <alpine.GSO.2.20.1706162101560.12810@freddy.simplesystems.org>
 <CALx_OUCYUQO2Xdzp9XDGjZ=xXLzjxhNt6Z92N1anR67tEr-4EA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALx_OUCYUQO2Xdzp9XDGjZ=xXLzjxhNt6Z92N1anR67tEr-4EA@mail.gmail.com>
User-Agent: NeoMutt/20170306 (1.8.0)
Date: Sat, 17 Jun 2017 13:27:16 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] two vulns in uClibc-0.9.33.2
To: oss-security@lists.openwall.com

On Fri, 16 Jun 2017 at 20:54:14 -0700, Michal Zalewski wrote:
> > Uclibc is a C library like GNU libc.  Why would a JS engine not use it?
> 
> Because they usually use stuff like pcre or irregexp.

Not all regular expressions are equal.

JavaScript regular expressions use the regex dialect originating in
Perl, which is also used in Python and libpcre (and, via libpcre,
in PHP). The two standardized POSIX dialects implemented by Unix C
libraries (basic regexes as used in grep and sed, and extended regexes
as used in grep -E and sed -E) aren't fully compatible with the Perl
syntax: for example \s matches the letter s in BREs or EREs, but
matches any whitespace character in the Perl-derived dialects. This makes
the POSIX regex functions not particularly useful for implementors of
a JavaScript runtime.

    S
