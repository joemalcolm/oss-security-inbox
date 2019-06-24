X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["946" "Monday" "24" "June" "2019" "11:42:17" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1906241135310.23351@scrappy.simplesystems.org>" "20" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062416:42:17" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        bfriesen@sim Jun 24   20/946   " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19813 invoked by uid 550); 24 Jun 2019 16:42:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19790 invoked from network); 24 Jun 2019 16:42:30 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
Message-ID: <alpine.GSO.2.20.1906241135310.23351@scrappy.simplesystems.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com> <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com> <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Mon, 24 Jun 2019 11:42:18 -0500 (CDT)
Date: Mon, 24 Jun 2019 11:42:17 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Mon, 24 Jun 2019, Stuart D. Gathman wrote:
>
> Question: is fuzzing useful for languages like Java/python?  Obviously,
> you eventually reach a native code module in both cases, but fuzzing the 
> entire virtual machine is cumbersome.  Maybe native code libraries
> for "safe" languages should include fuzzing as part of testing.

There is nothing about languages like Java and Python which 
necessarily makes them safe.  Access outside of memory bounds is just 
one issue which often afflicts C/C++.  Java and Python can easily do 
something wrong such as use all available resources or never finish. 
In the case of Python, Python can easily make arbitrary calls into C 
code under control of the script.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
