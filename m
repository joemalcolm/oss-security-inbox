X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4562" "Thursday" "9" "April" "2020" "08:06:07" "+1000" "Brian May" "brian@linuxpenguins.xyz" "<87h7xt3a5s.fsf@silverfish.pri>" "104" "Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" "^Date:" nil nil "4" "2020040822:06:07" "[oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" (number mark "U       brian@linuxp Apr  9  104/4562  " thread-indent "\"Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack\"\n") "<CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com>" ("<20191218181602.GA62521@tc-lan-adapter.local>" "<CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29949 invoked by uid 550); 8 Apr 2020 22:06:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29931 invoked from network); 8 Apr 2020 22:06:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-type:content-type:mime-version:message-id:date:date
	:references:in-reply-to:subject:subject:from:from:received
	:received:received:received; s=dkim20160331; t=1586383580; x=
	1588197981; bh=pQT7G/zs4c3+1Isp40Qno9ffcPBynG30MGD4nqGB/6o=; b=b
	F88g7M/txVropkoCOMp20pT4O3lbe710jpl08mP5TNHCJR8xlpUmeZ52/Zm3dpOk
	bElk9fgIaSyhOvKKeBiD/6qZJt5hUEgVhkxVHicoJtjv6ETdvWJ7oSeOQH8jKpCG
	n3YsYTI3q67dYQ6/+3AFeRp2wVXVc4p30jeQYZGaC/lrRDX0YA+KLIXvR7zPyjvH
	bj8rqImXFKHm7+ncmjCHu3ieR+RNModTioafPZTiNQa2Fg9/48yHGObYKGRCmP4p
	aKwcjVyyZUKrU+ipNjabe66/u4hCzWNi5mzvFvFtdEjMzB4L2ix+RI8MvI/8Tybk
	g1IyxS+dVQuDRjjYzRHaMtLemLUApyvBMrQxZzsx1VO76P38Ov7rTxaD+dkiwdMD
	XjkiAs04QZ5nnb7XHmBaDNCSmJ1JJ4SztmyYzuFqPkH2VQ/p1tFS44wKvns+WUuj
	SBo95jrZmfVjrQ1liVmr/HWv5BOCCGaIqfBT/YYAJ5VJSKJHLmwLWPHnrPNP0mFC
	guTyOWTAsZtMQcfFhtttXSb8Lzkl5pMer1qja7dszCP58F0yqjImx+wLhS9I1ZMk
	Nyyy29KLAuyekZcpyfWom+h8cM6JSQk2nZKrkMyz3iSxHE4iNOF9RBzAgoGWGFaf
	PfvJu6zM1CDe3+sXoKHx/cEWyOCjqRjg0ctNgH4NDg=
X-Virus-Scanned: amavisd-new at mykolab.com
In-Reply-To: <CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com>
References: <20191218181602.GA62521@tc-lan-adapter.local> <CAN_LGv17OG6JB-dm+t62WbDJajEAdik+fncnownEvrv+NUSvoQ@mail.gmail.com>
Message-ID: <87h7xt3a5s.fsf@silverfish.pri>
MIME-Version: 1.0
Content-Type: text/plain
Date: Thu, 09 Apr 2020 08:06:07 +1000
From: Brian May <brian@linuxpenguins.xyz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack
To: oss-security@lists.openwall.com

"Alexander E. Patrakov" <patrakov@gmail.com> writes:

> I don't understand why this is reported as something Rack-specific.

For reference, I noticed that Django does by default store sessions in
an index based database - such as mysql or postgresql. So I opened up a
bug report there: https://code.djangoproject.com/ticket/31412

I also believe ruby on rails is not vulnerable, at least if you
applications recommended best best practise.
http://blog.remarkablelabs.com/2012/12/activerecord-sessionstore-gem-extraction-rails-4-countdown-to-2013

> If I read the patch correctly (which is improbable, as I don't know
> Ruby at all), the idea is:
>
> 1. The attacker could send various bogus session ids, starting with
> all possible valid bytes. The database, if it uses a trie (yes,
> strawman example - is it used by any real-world database?) as a data
> structure to speed up looking up sessions, will terminate the
> comparison early on invalid bytes, thus disclosing them.
> 2. Given one valid byte of a session id, the attacker tries to extend
> it using the same procedure.
> 3. At the end, the attacker will get a full session ID.
>
> The patch works by making the thing stored in the database as a key
> not the session ID in the cookie, but a hash of it. Therefore, step 2
> fails, as it is computationally hard to find something with a given
> prefix.
>
> On the other hand, I don't see how a timing attack would be possible
> on the most common data structures (B-Tree and Hash) used for database
> indexes.

I have been looking at this in detail, and getting somewhat confused.
Especially after looking at the solution for this problem. This means I
am not confident in applying the upstream solution to older
distributions. It seems more invasive then required plus it breaks
existing code. Breaking code is never a good option for a security
update for an old distribution. Nor am I confident in creating a patch
of my own.


Applications appear to have a choice of 3 back ends to store session
information:

1. cookie based - stores data in a browser cookie.
2. pool based - stores data in a in memory hash.
3. memcache

As far as I can tell, neither 1 or 2 would be vulnerable. They don't use
a database that uses an index. In fact, I am not even sure 3 falls into
this category.

But the upstream patch only seems to update the pool backend:
https://github.com/rack/rack/commit/7fecaee81f59926b6e1913511c90650e76673b38

OK, the memcache was split up into another Gem, Dalli:
https://github.com/rack/rack/commit/54600771e3c9628c873fb1140b800ebb52f18e70#diff-ec7f0fcff10d701615d85df33fbbd545

But I don't see any security advisory against Dalli - did I miss
something?
https://github.com/petergoldstein/dalli


The patches for the older versions also patch the cookie based backend
too. The patches seem to be far my invasive then they need to be.


The way the patches were done seems to puzzle me. I would have thought
we just simple change to the database operations to use hash(sid) as the
primary key instead of sid. This is an internal value only and does not
need to be made accessible to the application. As such no API change
required.

However, instead we have introduced the terms "public_id" and
"private_id" - which have nothing to do with public key cryptography.
Instead private_id is the hash(public_id). Both need to be kept secret.
Due to this change, we have introduced an API change that makes no sense
to me.

Furthermore there is justification for this design that also doesn't
make a lot of sense, e.g.
https://github.com/rack/rack/issues/1432#issuecomment-571688819

"The private id could be leaked" - huh? If the public id is leaked it is
just as bad. In fact the private id is generated by hashing the public
id. In fact if the private id was leaked - if it weren't for the legacy
lookup, I am not sure there is anything you could do with it. You can't
reverse the hash and regenerate the public id.

"If you're storing the id, which do you want? (Probably not the public
id as you need to look the session up by the private id)" - why would
you want to lookup the session by the private id? Isn't this the job of
the session library?


There is also the aspect that the patch goes to lengths to preserve
existing sessions. But this doesn't make sense with the pool backend,
because sessions will get erased when the application in restarted for
the security update anyway. I am not convinced preserving existing
sessions should be a requirement.
-- 
Brian May <brian@linuxpenguins.xyz>
https://linuxpenguins.xyz/brian/
