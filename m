X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1576" "Saturday" "15" "June" "2019" "11:21:41" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1906151108210.1813@freddy.simplesystems.org>" "33" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061516:21:41" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        bfriesen@sim Jun 15   33/1576  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20447 invoked by uid 550); 15 Jun 2019 16:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20427 invoked from network); 15 Jun 2019 16:21:54 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1906151108210.1813@freddy.simplesystems.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sat, 15 Jun 2019 11:21:42 -0500 (CDT)
Date: Sat, 15 Jun 2019 11:21:41 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Sat, 15 Jun 2019, Alex Gaynor wrote:
>
> Today I'd like to highlight what I see as a tremendous issue: very few of
> these security bugs ever has a CVE issued for it. This is probably due to a
> few factors, a) the relative difficulty of obtaining a CVE, b) the lack of
> a human reporter who is interested in obtaining one for "credit" purposes,
> c) the sheer number of bugs that we're talking about.

Many oss-fuzz "security" issues are not CVE-worthy although they are 
bugs worthy to spend time fixing.

At least as pertains to the Debian project, I do feel that someone is 
looking at each security issue I fix and creating CVEs for serious 
issues.  A CVE summary page for GraphicsMagick is maintained at 
https://security-tracker.debian.org/tracker/source-package/graphicsmagick.

> This is in addition to the >100 security bugs OSS-Fuzz found and publicly
> disclosed due to hitting their disclosure deadline, and which still have
> not been fixed [3].

Security bugs are often very hard to diagnose and fix.  The community 
has become much better at producing bug reports than with helping to 
solve the problems found.  Help with actually fixing issues is 
appreciated.  I think that the objective should be open source 
software which lacks bugs and still provides a useful purpose. 
Finding bugs is just part of the effort.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
