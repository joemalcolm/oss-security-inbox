X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1536" "Thursday" "19" "May" "2016" "20:00:37" "+0100" "Simon McVittie" "smcv@debian.org" "<20160519190037.GA6411@perpetual.pseudorandom.co.uk>" "32" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016051919:00:37" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        smcv@debian. May 19   32/1536  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" "<CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32683 invoked by uid 550); 19 May 2016 19:00:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32665 invoked from network); 19 May 2016 19:00:49 -0000
Message-ID: <20160519190037.GA6411@perpetual.pseudorandom.co.uk>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com>
 <57292879.7050303@gmail.com>
 <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
 <CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty26E=diToYAoedQB4JKTbnjykSy94ciE-XBNdyJBU0jNw@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Date: Thu, 19 May 2016 20:00:37 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

On Thu, 19 May 2016 at 12:25:09 -0600, Kurt Seifried wrote:
> Without making a commercial pitch for the company I work ... I suspect one
> aspect of other vendors not fixing this is that there is a very
> simple/effective/verifiable workaround to prevent exploitation of this

Having looked into it a bit for Debian, there are several factors:

* mitigations exist, like you said

* many of the upstream fixes in ImageMagick are not clearly separated
  from random other changes (I found one in a commit labelled
  "Update to the latest autoconf / automake"!)

* many of the upstream fixes in ImageMagick (and GraphicsMagick)
  are really just mitigations too, and they remove features that someone
  could conceivably have been using, which rather goes against the idea
  of a stable release with a fixed feature-set
  (yes, I realise some of those features cannot be done securely)

* there are a large number of other issues found via fuzzing, in coders
  for miscellaneous formats that you'll probably never see "in the wild",
  which could conceivably also be security vulnerabilities but probably
  aren't feasible to backport to old releases

Bob, if you would like distributions to pick up GraphicsMagick security
fixes in a timely way, it would probably be really useful to do an
upstream release - distributions are typically a lot more confident about
backporting large changes to their stable branches without regressions
if they've been able to get some testing on the same changes in their
unstable branches first.

    S
