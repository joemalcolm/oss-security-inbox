X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1132" "Sunday" "16" "June" "2019" "21:29:14" "+0200" "Solar Designer" "solar@openwall.com" "<20190616192914.GA876@openwall.com>" "25" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061619:29:14" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        solar@openwa Jun 16   25/1132  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.GSO.2.20.1906161200500.1813@freddy.simplesystems.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190616144730.GA31281@openwall.com>" "<alpine.GSO.2.20.1906161200500.1813@freddy.simplesystems.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14240 invoked by uid 550); 16 Jun 2019 19:30:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13878 invoked from network); 16 Jun 2019 19:29:23 -0000
Message-ID: <20190616192914.GA876@openwall.com>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com> <20190616144730.GA31281@openwall.com> <alpine.GSO.2.20.1906161200500.1813@freddy.simplesystems.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.GSO.2.20.1906161200500.1813@freddy.simplesystems.org>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 16 Jun 2019 21:29:14 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
To: oss-security@lists.openwall.com

On Sun, Jun 16, 2019 at 12:08:20PM -0500, Bob Friesenhahn wrote:
> On Sun, 16 Jun 2019, Solar Designer wrote:
> >
> >Some people have interpreted this as implying there are ">100 security
> >bugs OSS-Fuzz found and publicly disclosed [...], and which still have
> >not been fixed" specifically in ImageMagick.  However, at the link you
> >referenced there are currently "only" 38 bugs specifically in
> >ImageMagick, with the rest of the >100 being in other projects:
> 
> Using the ordinary public access I have, I see that ImageMagick has 
> 129 open issues, and 1479 issues in total.  There are surely issues 
> that I can not see yet since they are hidden for up to 90 days.

I guess this is a distinction between all open deadline-exceeded issues
(129) and only deemed security ones out of those (38).

Removing "Type=Bug-Security status:New", but keeping
"label:Deadline-exceeded" does show 129 issues for ImageMagick.

Also removing "label:Deadline-exceeded" still results in 129, perhaps
because I'm not authorized to see other open issues.

I am unfamiliar with OSS-Fuzz.  Please correct me if I got this wrong.

Alexander
