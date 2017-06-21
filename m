X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3201" "Wednesday" "21" "June" "2017" "17:30:22" "-0600" "Jeff Law" "law@redhat.com" "<6cf5d7b3-6d5c-7209-f634-d02a22f21c72@redhat.com>" "76" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062123:30:22" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        law@redhat.c Jun 21   76/3201  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170621214006.GB28151@localhost.localdomain>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>" "<20170621214006.GB28151@localhost.localdomain>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21949 invoked by uid 550); 21 Jun 2017 23:30:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21923 invoked from network); 21 Jun 2017 23:30:35 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 2D27E619FB
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=law@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 2D27E619FB
References: <20170619152843.GC7769@localhost.localdomain>
 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <20170619203933.GA910@openwall.com>
 <20170621214006.GB28151@localhost.localdomain>
Message-ID: <6cf5d7b3-6d5c-7209-f634-d02a22f21c72@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170621214006.GB28151@localhost.localdomain>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Wed, 21 Jun 2017 23:30:23 +0000 (UTC)
Date: Wed, 21 Jun 2017 17:30:22 -0600
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Qualys Security Advisory <qsa@qualys.com>

On 06/21/2017 03:40 PM, Qualys Security Advisory wrote:

> 
> The first problem was that 1MB is not enough on all architectures;  the
> second problem was that -fstack-check does not always "touch" all pages;
> and Red Hat's analysis was an extensive report about the fixes needed in
> the kernel, the glibc, and gcc.
And just one data point here.  We (Red Hat) had hoped to be able to drop
in a compiler update with an improved -fstack-check and rebuild at least
glibc with that compiler.

However, the further we dug, the more significant problems we found,
particularly as we started looking at other architectures.

As late at June 8, we were still internally debating the pros/cons of
updating GCC and rebuilding GLIBC with the new compiler, even if only
certain platforms were covered.  The ultimate decision was to play it
safe and defer integration of the GCC work to a later update.

The embargo extension may have been painful, but it gave us the time to
look deeply at the GCC situation and come to a well reasoned technical
conclusion.

Had we done forward in May per the original schedule we well could have
made an incorrect technical decision under the significant time
pressure.  The consequences of getting that decision wrong are
potentially greater than the impact of this particular security issue.
That would also have put other distros that use GCC at as disadvantage
as the in-progress GCC bits were not "upstream ready" and thus would
have been dropped into Red Hat's GCC sources which would likely have
been fairly difficult for other distros that use GCC to consume.




> 
> All of this, plus the third reason mentioned above, and our own
> assessment of the situation, helped us make our decision to extend the
> embargo.
Understood and thanks for evaluating the situation as a whole and coming
to a well reasoned decision WRT the embargo.

--


I don't speak for anyone but myself, but I strongly believe in making
reasonable, rational decisions based on the best information available
rather than following policy blindly.  Don't get me wrong, policy is
important as it often encodes years of hard learned lessons and often
policy is a good default position.


> 
>> I understand
>> it's rare for companies to do quality security research, and I didn't
>> want my action to have hampered the stream of quality security research
>> we're seeing from Qualys lately.
> 
> Thank you very much.  However, we must admit that this coordinated
> release has been one of the most stressful and painful experiences we
> ever had:  we were torn between those who wanted to publish early and
> those who wanted to publish later, and in the middle of all this
> coordination we were trying to complete our research (we had not
> successfully exploited 64-bit Linux yet when we first contacted
> distros@).
Understood.  I'd like to point out that knowing 64bit exploits had not
been completed, but looked reasonably possible was very helpful in our
internal discussions about the breadth of the problem.

And more generally thanks for all the work in this space!  Don't ever
hesitate to contact me with any questions/concerns WRT GCC's code
generation in this space or others.


jeff

