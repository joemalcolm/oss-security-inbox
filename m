X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["968" "Sunday" "16" "June" "2019" "16:47:30" "+0200" "Solar Designer" "solar@openwall.com" "<20190616144730.GA31281@openwall.com>" "18" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061614:47:30" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        solar@openwa Jun 16   18/968   " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19762 invoked by uid 550); 16 Jun 2019 14:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18118 invoked from network); 16 Jun 2019 14:47:38 -0000
Message-ID: <20190616144730.GA31281@openwall.com>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 16 Jun 2019 16:47:30 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

On Sat, Jun 15, 2019 at 11:49:03AM -0400, Alex Gaynor wrote:
> A test of a random ImageMagick vulnerability against Ubuntu Xenial shows
> that it, indeed, continues to reproduce.
> 
> This is in addition to the >100 security bugs OSS-Fuzz found and publicly
> disclosed due to hitting their disclosure deadline, and which still have
> not been fixed [3].

Some people have interpreted this as implying there are ">100 security
bugs OSS-Fuzz found and publicly disclosed [...], and which still have
not been fixed" specifically in ImageMagick.  However, at the link you
referenced there are currently "only" 38 bugs specifically in
ImageMagick, with the rest of the >100 being in other projects:

> [3]:
> https://bugs.chromium.org/p/oss-fuzz/issues/list?can=1&q=Type%3DBug-Security+status%3ANew+label%3ADeadline-exceeded&colspec=ID+Type+Component+Status+Library+Reported+Summary+Modified&sort=-modified&groupby=&mode=grid&y=Proj&x=--&cells=ids&nobtn=Update

Alexander
