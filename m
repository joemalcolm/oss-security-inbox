X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1316" "Saturday" "15" "June" "2019" "14:41:28" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1906151433090.1813@freddy.simplesystems.org>" "31" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061519:41:28" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        bfriesen@sim Jun 15   31/1316  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAFRnB2WaDePSyVbXkV3tVVeqJXihytA-sDip9hTZcuf5BHoX9g@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190615205947.56f2315d@computer>" "<CAFRnB2WaDePSyVbXkV3tVVeqJXihytA-sDip9hTZcuf5BHoX9g@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25856 invoked by uid 550); 15 Jun 2019 19:41:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25832 invoked from network); 15 Jun 2019 19:41:40 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <CAFRnB2WaDePSyVbXkV3tVVeqJXihytA-sDip9hTZcuf5BHoX9g@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1906151433090.1813@freddy.simplesystems.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com> <20190615205947.56f2315d@computer> <CAFRnB2WaDePSyVbXkV3tVVeqJXihytA-sDip9hTZcuf5BHoX9g@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sat, 15 Jun 2019 14:41:28 -0500 (CDT)
Date: Sat, 15 Jun 2019 14:41:28 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Sat, 15 Jun 2019, Alex Gaynor wrote:
>
> I think you're quite right that the central challenge here is the mismatch
> between how Linux distributions operate and what their claims/people's
> expectations are.

Within four years, most users will encounter updated software which 
includes the fixes, assuming that an available developer did produce a 
fix.

If you are interested in improving the software, I suggest rolling up 
your sleeves and getting involved with implementing fixes.  Indeed, 
only a small fraction of involved people are working on implementing 
fixes.

> PS: I'd be remiss if I didn't at least mention that basically all the bug
> classes we're discussing are induced by C/C++'s memory unsafety and better
> programming language prevent them outright.

The "better" programming languages may prevent some of these problems 
due to not allowing direct access to memory, but they introduce 
new/different types of problems which can also be serious.  Indeed 
some popular languages like Python, Perl, or Javascript seem more 
dangerous than C/C++ programs.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
