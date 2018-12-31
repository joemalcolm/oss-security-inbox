X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2547" "Monday" "31" "December" "2018" "20:16:42" "+0100" "Vincent Lefevre" "vincent@vinc17.net" "<20181231191642.GB7238@zira.vinc17.org>" "52" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "12" "2018123119:16:42" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "U       vincent@vinc Dec 31   52/2547  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3753 invoked by uid 550); 31 Dec 2018 19:58:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28242 invoked from network); 31 Dec 2018 19:16:59 -0000
Message-ID: <20181231191642.GB7238@zira.vinc17.org>
Mail-Followup-To: Jeffrey Walton <noloader@gmail.com>,
	oss-security@lists.openwall.com, gmp-bugs@gmplib.org
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/1.11.1+82 (86db373c) vl-114418 (2018-12-29)
Cc: oss-security@lists.openwall.com, gmp-bugs@gmplib.org
Date: Mon, 31 Dec 2018 20:16:42 +0100
From: Vincent Lefevre <vincent@vinc17.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive
 information)
To: Jeffrey Walton <noloader@gmail.com>

On 2018-12-31 13:03:27 -0500, Jeffrey Walton wrote:
> The GMP library uses asserts to crash a program at runtime when
> presented with data it did not expect. The library also ignores user
> requests to remove asserts using Posix's -DNDEBUG. Posix asserts are a
> deugging aide intended for developement, and using them in production
> software ranges from questionable to insecure.

That's much better than letting the program run erratically, with
possible memory corruption and/or sensitive information leakage
to unauthorized users. You'd better fix bugs in your program.

> Many programs can safely use assert to crash a program at runtime.
> However, the prequisite is, the program cannot handle sensitive
> information like user passwords, user keys or sensitive documents.
> 
> High integrity software, like GMP and Nettle, cannot safely use an
> assert to crash a program. To understand why the data flow must be
> examined. First, when an assert fires, a SIGABRT is eventually sent to
> the program on Unix and Linux
> (http://pubs.opengroup.org/onlinepubs/009695399/functions/assert.html).
> 
> Second, the SIGABRT terminates the process and can write a core file.

That's the default behavior, but you can trap SIGABRT if you want.
Of course, there is no guarantee because the memory may already be
in an inconsistent state.

> This is the first point of unwanted data egress. Sensitive information
> like user passwords and keys can be written to the filesystem
> unprotected.

This can occur with any program, even not using asserts, e.g. due to
a segmentation fault (which may happen as a consequence of not using
asserts, with possibly worse consequences).

If you don't want a core file, then you can instruct the kernel not
to write a core file. See getrlimit.

> Third, the dump is sometimes sent to an error reporting service like
> Apple Crash Report, Android Crash Report, Ubuntu Apport, and Windows
> Error Reporting. This is the second point of unwanted data egress.
> Sensitive information can be sent to the error reporting service. The
> platform provider like Apple, Google, Microsoft and Ubuntu gain access
> to the sensitive information, in addition to the developer.

If you don't like them, do not use these services. Not using asserts
can also yield a crash, which will have the same consequences.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)
