X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2476" "Tuesday" "25" "June" "2019" "08:41:08" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>" "54" "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" "^Date:" nil nil "6" "2019062513:41:08" "[oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" (number mark "        bfriesen@sim Jun 25   54/2476  " thread-indent "\"Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz\"\n") "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>" ("<CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com>" "<20190617113203.GH15432@suse.de>" "<CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com>" "<alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>" "<alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>" "<E1hfSKS-00015J-V5@rmmprod07.runbox>" "<20190624193048.GA8039@espresso.pseudorandom.co.uk>" "<CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24154 invoked by uid 550); 25 Jun 2019 13:41:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24109 invoked from network); 25 Jun 2019 13:41:21 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.1906250816590.2070@freddy.simplesystems.org>
References: <CAFRnB2UmyOiRV9fnMffcAtF4ruuJZwx=fg5X=hLbQjeFN=t3Bg@mail.gmail.com> <20190617113203.GH15432@suse.de> <CACT4Y+Zu1r10wKxjAbJqZ5rXc8eq5NRWjuNVPLHbwZGAem1OTg@mail.gmail.com> <alpine.GSO.2.20.1906241038470.23351@scrappy.simplesystems.org>
 <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org> <E1hfSKS-00015J-V5@rmmprod07.runbox> <20190624193048.GA8039@espresso.pseudorandom.co.uk> <CAFRnB2XeQ-casQLm0MRCdRmQ5aeF9K=X3Km5eYg9DB6A915d5A@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Tue, 25 Jun 2019 08:41:09 -0500 (CDT)
Date: Tue, 25 Jun 2019 08:41:08 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Thousands of vulnerabilities, almost no CVEs:
 OSS-Fuzz
To: oss-security@lists.openwall.com

On Mon, 24 Jun 2019, Alex Gaynor wrote:
> - Not having sooooo many vulnerabilities. While there's some dispute over
> just what % of the bugs that OSS-Fuzz and syzbot turn up are exploitable,
> there's no doubt that they find a _lot_ of them. Even if only 20% of
> OSS-Fuzz reports were truly exploitable vulnerabilities, that'd still be
>> 600 of them. We can't produce this many vulnerabilities and then try to
> clean up afterwards by finding them with fuzzing -- at some point the
> number of vulnerabilities simply overwhelms us. Tactics for reducing
> vulnerabilities in the first instance, like memory safe languages, are an
> important part of making this problem tractable.
>
> Do folks feel like there were important themes that this misses?

I see the assumption that 20% of oss-fuzz reports are exploitable 
vulnerabilities.  Where does this percentage estimate come from?  What 
does it mean to be "exploitable"?

>From working on fixing oss-fuzz detected bugs in GraphicsMagick I see 
that many/most of the issues are not significant from a security 
standpoint, assuming that the software is deployed in a way suitable 
for its level of exposure.  Common issues include:

  * Huge uninitialized memory allocations (which do not really matter
    under Linux since Linux does not reserve anything but virtual
    memory space).

  * Consumption of uninitialized data (e.g. image data) which is not
    used to make important decisions.  This is usually due to unhandled
    cases or error handling which does not quit immediately.

  * Tiny heap over-reads which are not past the bounds of the
    underlying allocation.

  * Heap over-reads or over-writes which cause an immediate core dump.

  * Excessively slow code with the slowness emphasized by ASAN and
    UBSAN code running vastly slower.  The excessively slow code is not
    necessarily noticeable in a normal compilation.

  * Memory leaks.

  * "undefined behavior" which nevertheless has a common behavior that
    compilers have followed since the dawn of time.

The most important thing that oss-fuzz contributes is a large 
collection of files which cause problems for unfixed software such 
that only the unaware or foolish do not update to fixed versions.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
