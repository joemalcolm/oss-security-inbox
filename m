X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1273" "Tuesday" "25" "June" "2019" "09:51:02" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1906250946080.7899@scrappy.simplesystems.org>" "29" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062514:51:02" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        bfriesen@sim Jun 25   29/1273  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<2422A407-94F6-4AB2-9928-310C5089EA5D@gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>" "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>" "<2422A407-94F6-4AB2-9928-310C5089EA5D@gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1742 invoked by uid 550); 25 Jun 2019 14:51:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1720 invoked from network); 25 Jun 2019 14:51:15 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <2422A407-94F6-4AB2-9928-310C5089EA5D@gmail.com>
Message-ID: <alpine.GSO.2.20.1906250946080.7899@scrappy.simplesystems.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com> <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com> <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org> <E1hfSKS-00015J-V5@rmmprod07.runbox> <20190624193048.GA8039@espresso.pseudorandom.co.uk> <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com> <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
 <2422A407-94F6-4AB2-9928-310C5089EA5D@gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="3735943886-351212254-1561474263=:7899"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 25 Jun 2019 09:51:03 -0500 (CDT)
Date: Tue, 25 Jun 2019 09:51:02 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

--3735943886-351212254-1561474263=:7899
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 25 Jun 2019, Matthew Fernandez wrote:

> I’m probably telling you things you already know and it sounds like 
> you don’t consider such issues worth addressing, but I just wanted 
> to point out that these are not theoretical. These cause real 
> problems for users and, for open source software, you may not have 
> full control over what toolchain/flags users build your code with.

I think that almost all bugs are issues worth addressing given 
sufficent resources available to address them.  The issue discussed is 
what proportion of bugs discovered via automated testing and claimed 
to be "security" issues based on computer analysis are exploitable 
vulnerabilities which deserve a CVE.

A good point has been made that Linux heap memory allocation behavior 
may be very different than other OSs and that behavior can also be 
hardware-specific.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
--3735943886-351212254-1561474263=:7899--
