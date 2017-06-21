X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2104" "Wednesday" "21" "June" "2017" "16:48:14" "-0600" "Jeff Law" "law@redhat.com" "<8e3931f4-b5b1-817d-eaed-0b88eac70f05@redhat.com>" "45" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062122:48:14" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        law@redhat.c Jun 21   45/2104  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<594AE554.22038.7198001A@pageexec.freemail.hu>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>" "<cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>" "<594AE554.22038.7198001A@pageexec.freemail.hu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1924 invoked by uid 550); 21 Jun 2017 22:48:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1900 invoked from network); 21 Jun 2017 22:48:27 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 4501A4E4FC
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx09.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=law@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 4501A4E4FC
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda>
 <cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>
 <594AE554.22038.7198001A@pageexec.freemail.hu>
Message-ID: <8e3931f4-b5b1-817d-eaed-0b88eac70f05@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <594AE554.22038.7198001A@pageexec.freemail.hu>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Wed, 21 Jun 2017 22:48:15 +0000 (UTC)
Date: Wed, 21 Jun 2017 16:48:14 -0600
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, PaX Team <pageexec@freemail.hu>,
 Agostino Sarubbo <ago@gentoo.org>

On 06/21/2017 03:29 PM, PaX Team wrote:
> On 21 Jun 2017 at 10:22, Jeff Law wrote:
> 
>> On 06/21/2017 04:46 AM, Agostino Sarubbo wrote:
>>> On Monday 19 June 2017 08:28:43 Qualys Security Advisory wrote:
>>>> III. Solutions
>>>> - Recompile all userland code (ld.so, libraries, binaries) with GCC's
>>>>   "-fstack-check" option, which prevents the stack-pointer from moving
>>>>   into another memory region without accessing the stack guard-page (it
>>>>   writes one word to every 4KB page allocated on the stack).
>>>
>>> For the record, Gentoo Hardened enables by default -fstack-check=specific
>> And if you were to look at the generated code, you'll see that it
>> happily skips 2-3 pages of probes in prologues as well as within alloca
>> spaces.  It's a false sense of security.
> 
> Gentoo Hardened uses the grsecurity kernel which enforces a 64kB heap-stack
> gap by default (it's also user adjustable). are you saying that the gcc
> probes are not sufficient to prevent jumping over that range?
With a 64k guard, you should be OK and protected.  -fstack-check will
consistently skip 8218 bytes on x86 (8192 on most architectures).  Even
if you combined the skipped space from the prologue and the skipped
space in the dynamic area, you're only at just over 16k -- and it's not
clear the two skipped areas could be combined like that anyway.


Given the larger guard you should be in good shape.  Sorry to have
sounded alarmist without having full information about your
configuration, particularly WRT the expanded guard page.


--

There's one theoretical approach I'm aware of that one could use the
skip the guard in your situation.  I'm not aware of any code in practice
that would have the right properties to trigger *and* triggering would
require a particular optimization that neither LLVM nor GCC perform to
the best my knowledge (nor are they likely to as the optimization would
not likely improve any hot path performance).

We'll be making that theoretical attack significantly harder to exploit
as part of the upstream GCC work around a new -fstack-check implementation.


Jeff
