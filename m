X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1054" "Monday" "24" "June" "2019" "11:44:31" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1906241142430.23351@scrappy.simplesystems.org>" "23" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062416:44:31" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        bfriesen@sim Jun 24   23/1054  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAG_fn=VaVOERocqqh3wUBK5BRUWvVirT-+=HdGGxib+Ad90kjg@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<CAG_fn=VaVOERocqqh3wUBK5BRUWvVirT-+=HdGGxib+Ad90kjg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32749 invoked by uid 550); 24 Jun 2019 16:44:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32727 invoked from network); 24 Jun 2019 16:44:43 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <CAG_fn=VaVOERocqqh3wUBK5BRUWvVirT-+=HdGGxib+Ad90kjg@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1906241142430.23351@scrappy.simplesystems.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com> <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com> <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <CAG_fn=VaVOERocqqh3wUBK5BRUWvVirT-+=HdGGxib+Ad90kjg@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Mon, 24 Jun 2019 11:44:31 -0500 (CDT)
Date: Mon, 24 Jun 2019 11:44:31 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Mon, 24 Jun 2019, Alexander Potapenko wrote:
>>
>> Most oss-fuzz issue detections are not CVE worthy.  For example, a
>> one-byte read "heap overflow" is not likely to cause any actual harm
>> but oss-fuzz would classify it as "heap overflow".
> There's enough information in the report though to assign the severity
> score depending on the access size, its type (read or write) the call
> stack etc.
> OSS-Fuzz deliberately doesn't do that now, but such scoring can be
> done to prune the list of potential CVE candidates.

Oss-fuzz does not take into account the important criteria which is 
the actual underlying size of the heap allocation.  It is true that 
this is implementation specific, but if the underlying heap allocation 
is larger than the requested allocation, the program might not be 
vulnerable.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
