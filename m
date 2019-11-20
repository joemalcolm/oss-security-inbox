X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1378" "Wednesday" "20" "November" "2019" "13:28:04" "-0600" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1911201315110.15536@scrappy.simplesystems.org>" "29" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^cc:" nil nil "11" "2019112019:28:04" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        bfriesen@sim Nov 20   29/1378  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<CANuUHoGe6x5ntTBMMX0rLDFWbFeMd3FXGKJtrK5NjF=t7QV-0Q@mail.gmail.com>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191120124425.GA25554@openwall.com>" "<CANuUHoGe6x5ntTBMMX0rLDFWbFeMd3FXGKJtrK5NjF=t7QV-0Q@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28623 invoked by uid 550); 20 Nov 2019 19:28:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28605 invoked from network); 20 Nov 2019 19:28:17 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <CANuUHoGe6x5ntTBMMX0rLDFWbFeMd3FXGKJtrK5NjF=t7QV-0Q@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1911201315110.15536@scrappy.simplesystems.org>
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com> <20191120124425.GA25554@openwall.com> <CANuUHoGe6x5ntTBMMX0rLDFWbFeMd3FXGKJtrK5NjF=t7QV-0Q@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 20 Nov 2019 13:28:05 -0600 (CST)
cc: oss-security@lists.openwall.com
Date: Wed, 20 Nov 2019 13:28:04 -0600 (CST)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: Aditya Sirish Arunkumar Yelgundhalli <asy278@nyu.edu>

The ideas I have seen posted on this topic thus far are about assuring 
correct provenance and that installed binaries are based on what the 
maintainer/developer intended.

The extreme focus on delivery mechanisms entirely ignores the fact 
that development source code is produced in environments which are not 
assured to be trustworthy (possibly sitting on hard drives for months 
or multiple years), and then stored in environments which may or may 
not be trustworthy (e.g. somewhere in a communal cloud).  This means 
that changes may be inserted into the source code without the 
developer/maintainer being aware.

There is also the implicit assumption that all developers and 
maintainers have the intention of being good and not intentionally 
inserting malicious code.  This is not always the case, particularly 
if a developer becomes deranged or disgruntled.  Not all developers 
are equally competent and sometimes a developer submits code with 
severe flaws.

Modern GNU/Linux systems have far too much executing code to 
reasonably secure.  Paring down the amount of executing code helps 
quite a lot with improving security.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
