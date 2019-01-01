X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2123" "Tuesday" "1" "January" "2019" "12:20:42" "+0100" "Vincent Lefevre" "vincent@vinc17.net" "<20190101112042.GE7238@zira.vinc17.org>" "41" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010111:20:42" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        vincent@vinc Jan  1   41/2123  " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23849 invoked by uid 550); 1 Jan 2019 11:32:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10154 invoked from network); 1 Jan 2019 11:20:56 -0000
Message-ID: <20190101112042.GE7238@zira.vinc17.org>
Mail-Followup-To: Jeffrey Walton <noloader@gmail.com>,
	oss-security@lists.openwall.com, gmp-bugs@gmplib.org
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <20181231191642.GB7238@zira.vinc17.org>
 <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/1.11.1+82 (86db373c) vl-114418 (2018-12-29)
Cc: oss-security@lists.openwall.com, gmp-bugs@gmplib.org
Date: Tue, 1 Jan 2019 12:20:42 +0100
From: Vincent Lefevre <vincent@vinc17.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive
 information)
To: Jeffrey Walton <noloader@gmail.com>

On 2018-12-31 14:38:17 -0500, Jeffrey Walton wrote:
> On Mon, Dec 31, 2018 at 2:16 PM Vincent Lefevre <vincent@vinc17.net> wrote:
> >
> > On 2018-12-31 13:03:27 -0500, Jeffrey Walton wrote:
> > > The GMP library uses asserts to crash a program at runtime when
> > > presented with data it did not expect. The library also ignores user
> > > requests to remove asserts using Posix's -DNDEBUG. Posix asserts are a
> > > deugging aide intended for developement, and using them in production
> > > software ranges from questionable to insecure.
> >
> > That's much better than letting the program run erratically, with
> > possible memory corruption and/or sensitive information leakage
> > to unauthorized users. You'd better fix bugs in your program.
> 
> To play devil's advocate for this particular example, GMP could have
> validated the parameters and refused to process the data. That is, the
> function could have returned failure and avoided the potential
> information leak.

Unfortunately, this is not always possible, while keeping the original
interface. Moreover, changing the interface can make the library
slower, which could be an issue for GMP (the goal is to be as fast
as possible, just like the C language was designed, where contrary
to other languages, there's the notion of undefined behavior). If you
don't like that, you can write a wrapper library that will sanitize
all the inputs and implement error processing (e.g. where the return
value contains an error code and the result, if any), and call this
library instead of GMP.

Said that, developers who forget to check whether they correctly
follow the API conditions also forget to check failures. Thus this
ends up with a similar issue (a crash).

Moreover, some asserts may come from the detection of an inconsistent
state. In this case, it is better to abort. Otherwise letting the
program continue may have worse consequences.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)
