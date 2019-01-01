X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2043" "Tuesday" "1" "January" "2019" "13:12:04" "+0000" "halfdog" "me@halfdog.net" "<2149-1546348324.866586@kBWv.VBuL.JgNP>" "45" "Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information)" "^Date:" nil nil "1" "2019010113:12:04" "[oss-security] Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        me@halfdog.n Jan  1   45/2043  " thread-indent "\"Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13466 invoked by uid 550); 1 Jan 2019 13:13:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13448 invoked from network); 1 Jan 2019 13:13:09 -0000
In-reply-to: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
Comments: In-reply-to Jeffrey Walton <noloader@gmail.com>
   message dated "Mon, 31 Dec 2018 13:03:27 -0500."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID: <2149-1546348324.866586@kBWv.VBuL.JgNP>
Date: Tue, 01 Jan 2019 13:12:04 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Asserts considered harmful (or GMP spills its sensitive information)
To: oss-security@lists.openwall.com

Jeffrey Walton writes:
> The GMP library uses asserts to crash a program at runtime
> when presented with data it did not expect.  ...

For me, that seems to be the best way. In the end the discussion
is mostly about if you value confidentiality and integrity over
availability (and a little confidentiality as shown by you).

Usually for highly secure systems (those where availability
is top priority are quite often safety-critical, not security),
you can mitigate effects of such a DoS permanently (by fixing
the program) but you cannot reverse the effects of leaked data,
which happens more easily by corrupting/manipulating a target
program state and get the data exfiltrated by the target itself
than gaining access to the machine another way and read (unnoticed)
core dumps created even via another mechanism.

Also cleaning up corrupted data is often much more expensive
than having some outage and then start again. This is what your
24/7 devops team is for (with highly secure systems).


So in my opinion your example, even when it demonstrates a small
information leak on aborting, is even a better example, why
aborting was the right thing to do: on the first highly secure
system, where your software aborted, the malfunction was detected
immediately and easily. Thus it was possible to fix it timely
and you avoided having broken software running for years without
getting noticed (by developers, operators or worse: attackers).

Note 1: The only exception for functions NOT aborting on corrupted
data are secure "validate-data-functions" or "parse-functions"
(if they provide secure data validation also).

Note 2: Little off-topic, but in the same line more APIs should
abort on insane requests. So for example I do not understand, why
read(2) should EFAULT on bad addresses instead of SEGV. The only
thing I use this feature for is to probe memory maps inside chroots
(or where /proc/self/maps is inaccessible for other reasons).
But maybe EFAULT is a very useful POSIX feature in use cases
I did not think about yet.

hd


