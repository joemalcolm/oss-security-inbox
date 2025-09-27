Received: (qmail 1613 invoked by uid 550); 27 Sep 2025 21:41:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26257 invoked from network); 27 Sep 2025 21:40:23 -0000
Date: Sat, 27 Sep 2025 23:40:13 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250927214013.GA9163@openwall.com>
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] How to do secure coding and create secure software

Hi Amit,

On Sat, Sep 27, 2025 at 02:00:07PM +0530, Amit wrote:
> I can do secure coding and no one can hack my code unless the language/OS have
> some issues. You can challenge me on this.
> 
> Ultimately, all software boil down to functions/methods. If functions/methods
> are secure then the whole software is secure.
> 
> If all functions in all software in this world are secure then there won't be
> any hacking.

The devil is in the details, or maybe the definitions.  Here's a
relevant paper:

"Top Score on the Wrong Exam: On Benchmarking in Machine
Learning for Vulnerability Detection"

https://x.com/mboehme_/status/1915401710652068098
https://mpi-softsec.github.io/papers/ISSTA25-topscore.pdf
https://github.com/niklasrisse/TopScoreWrongExam

"We call a function vulnerable if it was involved in a patch of an
actual security flaw and confirmed to cause the programs vulnerability.
It is non-vulnerable otherwise.  We find that in almost all cases this
decision cannot be made without further context.  Vulnerable functions
are often vulnerable only because a corresponding vulnerability-inducing
calling context exists while non-vulnerable functions would often be
vulnerable if a corresponding context existed."

While the paper focuses on a topic different from what you brought up
(vulnerability detection vs. avoidance), I think it is relevant, and I
think you'd also achieve a "Top Score on the Wrong Exam".

A program's business logic is important.  Does the program's behavior
match a formal specification (if one exists)?  Does the formal
specification correctly and comprehensively define actually desired
business logic?

For example, if a certain action should reasonably be only reachable
after successful authentication and/or authorization, is this
requirement actually present in the specification and code?  Would its
omission be promptly detected?

> Now, in the following text, the word function will mean both function and
> method.

I assume you mean "method" as in object-oriented programming.

You claim that "If functions/methods are secure then the whole software
is secure."  If we talk C where main() is also a function, and limit the
definition of "whole software" to one program, then I'd agree - your
claim can as well directly say "if [all functions including] main() are
secure then the whole software [meaning this one program only] is
secure."  While true, under those definitions this isn't a useful claim.

However, if in "functions/methods are secure" you refer only to smaller
building blocks, then no, the program built from them may still be
insecure.  Also "the whole software" isn't necessarily just one program.

> I am listing the main points of secure coding below. These points are applicable
> to almost all languages.

There are some more established secure coding guides, such as:

https://wiki.sei.cmu.edu/confluence/display/seccode/SEI+CERT+Coding+Standards

Others in here will maybe post some more.

There are also guidelines on safer usage of specific programming
languages, such as MISRA C.

In a sense, some of these bring some bits of what would be in a formal
specification into the program source.  Like this:

> 1. The first point is that all the arguments to your function should be checked
> always whether they are in the allowed range or not, even if your function is
> called from other trusted functions and even if your function is
> private/protected or static.

A question is what you do on violations.  We can see this difference
e.g. between ISC BIND 8 vs. 9.  In 8, we had code execution
vulnerabilities.  In 9, we have assertion failure vulnerabilities, which
are lower impact but may be more numerous (only some of those failed
assertions would lead to other vulnerabilities if omitted).

Assertions are good for conditions that you're "sure" are always true,
and even then it's hard to get all of them right (BIND 9 is example of
this).  If you use them for arbitrary limits, like you seem to suggest,
you either knowingly introduce DoS vulnerabilities or you need some
other non-trivial handling of those cases (such as a chain of error
returns, but even then it may ultimately be DoS).

This isn't a simple problem/solution at all.

> Now, a counterpoint can be that checking all the function arguments will take
> more time but actually because of very fast processors available these days,
> it will not take noticeable time. On a 1 GHz processor, you can execute
> 1 Gig (2^30 or 10^9 for simplicity) instructions per second. So, if you are
> checking a pointer for NULL then it will be around 5 instructions. So, this
> will take only 5 nanoseconds (5 * 10^-9 seconds). So, time consumed in checking
> arguments is not a big issue. Checking the length of a string may take some more
> time but it will also be not noticeable. Assuming 5 instructions for checking
> for NULL character ('\0') and 1 instruction for incrementing the len variable
> and another 5 instructions for comparing the len variable to the MAX string len,
> then we have 11 instructions per character. If the length we want to check is
> 1000 then it will be 11,000 instructions and it will take only 11 microseconds
> (11 * 10^-6 seconds). So, this time is also not noticeable.

This is flawed logic as it does not consider that the function may be
called multiple times, possibly a very large number of times even.

Performance impact is there, and it may be practically relevant or not.
It depends.  Yet we may choose to accept it.

> but instead you should use bounded C functions like - strncpy(), strnlen(),
> strncat(), fgets(), etc.

Oh, just not strncpy() please, except where NUL padding and not NUL
termination is actually needed.

> 4. Don't use an unsigned data type unless you are dealing with binary data
> (like - raw bits, raw bytes, network data, data from hardware devices, etc.).

It's not so trivial.  An argument can be made both ways.  In C, behavior
on overflow is defined for unsigned, but undefined for signed.  And then
there are sizes and things like:

ssize_t read(int fd, void *buf, size_t count);

Alexander
