X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1772" "Saturday" "15" "June" "2019" "20:59:47" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" "<20190615205947.56f2315d@computer>" "40" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061518:59:47" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        hanno@hboeck Jun 15   40/1772  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13937 invoked by uid 550); 15 Jun 2019 19:00:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13918 invoked from network); 15 Jun 2019 19:00:01 -0000
Message-ID: <20190615205947.56f2315d@computer>
In-Reply-To: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 15 Jun 2019 20:59:47 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

Hi Alex,

I think what you're describing has been going on for a while, even
before oss-fuzz.
A combination of compiler sanitizers and better fuzzing techniques has
scaled up bug finding and fixing to a level we haven't had before.

For distributions that promise to backport all security fixes that
creates a situation where it's almost impossible to keep that promise,
they just don't have the manpower to scale up at the same speed as
people find bugs.
Maybe the main takeaway here is to just recognize that, and maybe
distros should be more honest here and be clear what they can and can't
do. And if you run a parser in a high risk environment you may not want
to rely on the outdated version shipping in some LTS distribution.


But I also think it's good to keep some perspective of the bugs we're
talking about.
Many of the bugs oss-fuzz finds are of bug classes where it's quite
unlikely that they directly lead to a security issue (e.g. out of
bounds memory reads - which asan controversially calls "overflows").
Even for the scarier looking vulns like write buffer overflows and use
after free the situation is that these are usually not straightforward
to exploit. All modern distributions have a combination of stack
canaries, ASLR and nonexecutable memory. It's my understanding that
while it's often possible to bypass those, doing so in non-scripting
scenarios (e.g. in an image parser) is really hard and often impossible.

I guess therefore it's still an overall win. While there's a number of
bugs unfixed with public information, in the long term we'll get more
robust code and the number of bugs present should be in steep decline.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
