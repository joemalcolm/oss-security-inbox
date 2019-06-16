X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1242" "Sunday" "16" "June" "2019" "12:08:20" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1906161200500.1813@freddy.simplesystems.org>" "27" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019061617:08:20" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        bfriesen@sim Jun 16   27/1242  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<20190616144730.GA31281@openwall.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190616144730.GA31281@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14147 invoked by uid 550); 16 Jun 2019 17:08:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14124 invoked from network); 16 Jun 2019 17:08:33 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20190616144730.GA31281@openwall.com>
Message-ID: <alpine.GSO.2.20.1906161200500.1813@freddy.simplesystems.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com> <20190616144730.GA31281@openwall.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sun, 16 Jun 2019 12:08:21 -0500 (CDT)
Date: Sun, 16 Jun 2019 12:08:20 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Sun, 16 Jun 2019, Solar Designer wrote:
>
> Some people have interpreted this as implying there are ">100 security
> bugs OSS-Fuzz found and publicly disclosed [...], and which still have
> not been fixed" specifically in ImageMagick.  However, at the link you
> referenced there are currently "only" 38 bugs specifically in
> ImageMagick, with the rest of the >100 being in other projects:

Using the ordinary public access I have, I see that ImageMagick has 
129 open issues, and 1479 issues in total.  There are surely issues 
that I can not see yet since they are hidden for up to 90 days.

Taking the number 129, that would mean that there is a huge number of 
issues already fixed (1350) which are gradually making it out to 
users.  This is too many fixes to deal with via distribution-specific 
patches.

Using my privileged access for GraphicsMagick, I currently see 343 
issues in total, with 12 issues remaining to fix.  Some of those 12 
issues are open to the public for some time now. :-(

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
