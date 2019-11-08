X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/11/08/8
Message-ID: <87woca41k8.fsf@mid.deneb.enyo.de>
Date: Fri, 08 Nov 2019 20:20:55 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: Russ Allbery <eagle@...ie.org>
Cc: Georgi Guninski <gguninski@...il.com>,  oss-security@...ts.openwall.com
Subject: Re: Controversy and exploitability of gcc issue 30475 |assert(int+100 > int)|
Content-Type: text/plain; charset=utf-8

* Russ Allbery:

> The C standard says this shouldn't be the default, but software that cares
> about avoiding undefined behavior should consider adding -fwrapv, or
> carefully writing the check to avoid overflow (something that, sadly, one
> needs to become expert in to use C relatively safely).

The C standard doesn't *require* a particular behavior (for non-atomic
integers).  Each time this comes up in the committees, more strict
requirements do not make it into the text.  For example, the recent
P0907R4 for C++, “Signed Integers are Two’s Complement”
<http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2018/p0907r4.html>
does not require it, either:

| /Status-quo/ If a signed operation would naturally produce a value
| that is not within the range of the result type, the behavior is
| undefined.
