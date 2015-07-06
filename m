X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1697" "Tuesday" "7" "July" "2015" "02:36:13" "+0300" "Solar Designer" "solar@openwall.com" "<20150706233613.GB4473@openwall.com>" "42" "Re: [oss-security] How serious is undefined behavior?" nil nil nil "7" "2015070623:36:13" "[oss-security] How serious is undefined behavior?" (number mark "        solar@openwa Jul  7   42/1697  " thread-indent "\"Re: [oss-security] How serious is undefined behavior?\"\n") "<20150706181734.2b0288ca@pc1>" ("<20150706181734.2b0288ca@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31853 invoked by uid 550); 6 Jul 2015 23:36:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31832 invoked from network); 6 Jul 2015 23:36:16 -0000
Message-ID: <20150706233613.GB4473@openwall.com>
References: <20150706181734.2b0288ca@pc1>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150706181734.2b0288ca@pc1>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 7 Jul 2015 02:36:13 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How serious is undefined behavior?
To: oss-security@lists.openwall.com

On Mon, Jul 06, 2015 at 06:17:34PM +0200, Hanno B??ck wrote:
> However I wonder how practically relevant these issues are

I think we have to estimate their practical impact on a case by case
basis, and such assessments may need adjustment over time.

> and also how much focus should be given to them.

I'm not sure how much, but I think it should be increasing over time,
especially for new code.

> Do people have good examples
> where e.g. an invalid shift operation caused a real, severe security
> issue?

Not exactly what you asked for, but a recent example is Pufferfish, a
Password Hashing Competition finalist, where an invalid shift operation
results in it being effectively undefined for requested memory sizes
beyond 2 MiB, contrary to the designer's intent.  In practice,
Pufferfish would appear to work, but deliver slightly worse security
properties than intended and different behavior between some systems.
Luckily, this was found while still evaluating the finalists.

> Would people think it's a wise idea to put a lot of effort into testing
> applications with ubsan enabled and reporting all the bugs that pop up?
> (that would mean a lot of bugreports) Or would this be perceived as an
> annoying "that's a theoretical C language nitpick issue and not a real
> bug".

Both.

I think it's worth reporting these bugs primarily to more recent,
cleaner, and better maintained projects, as well as to smaller projects,
where it is realistic that all of these bugs would be fixed.

For older projects of substantial size, maybe just publish summaries.

> https://github.com/madler/zlib/commit/8a979f6c7986574e37316148cd8ca440c3bc08a3

I think this was worth reporting.

Alexander
