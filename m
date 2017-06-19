X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2897" "Monday" "19" "June" "2017" "15:15:23" "-0600" "Jeff Law" "law@redhat.com" "<748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>" "59" "Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash" "^Date:" nil nil "6" "2017061921:15:23" "[oss-security] Re: Qualys Security Advisor -- The Stack Clash" (number mark "        law@redhat.c Jun 19   59/2897  " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash\"\n") "<1497898323.1005.1.camel@gmail.com>" ("<7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>" "<1497898323.1005.1.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28248 invoked by uid 550); 19 Jun 2017 21:35:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14243 invoked from network); 19 Jun 2017 21:15:38 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com C822A811A9
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=law@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com C822A811A9
References: <7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>
 <1497898323.1005.1.camel@gmail.com>
Message-ID: <748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <1497898323.1005.1.camel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Mon, 19 Jun 2017 21:15:26 +0000 (UTC)
Date: Mon, 19 Jun 2017 15:15:23 -0600
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash
To: oss-security@lists.openwall.com, Daniel Micay <danielmicay@gmail.com>

On 06/19/2017 12:52 PM, Daniel Micay wrote:
> On Mon, 2017-06-19 at 11:26 -0600, Jeff Law wrote:
>> I would consider those two GCC BZs (68065, 66479) a separate an
>> distinct
>> issue.
>>
>> It is far more important to address design issues around the existing
>> -fstack-check first.  I think we've got a pretty good handle on how to
>> address those problems and discussions with the upstream GCC community
>> have already started.
>>
>> In an ideal world we'll get to a place where the new -fstack-check
>> does
>> not change program semantics, never misses probes and is efficient
>> enough to just turn on and forget everywhere.  The existing
>> -fstack-check fails all three of those criteria.
>>
>> Jeff
> 
> AFAIK, the main efficiency issue (reserving a register) was fixed for
> GCC 6. I might be missing something but it seems very cheap now, at
> least for x86_64. It definitely doesn't really work though.
> 
> Is there an example of it changing program semantics? I haven't seen
> anything since the generic arch stuff was fixed.
Absolutely -fstack-check, as currently implemented, can change program
semantics.  It's related to -fstack-check moving objects from statically
allocated space into dynamically allocated space (because the generic
code can't handle large static frames).  It creates the alloca'd objects
at the wrong scope.  This doesn't happen on all architectures, but it
does happen on architectures I have to care about.

WRT efficiency, -fstack-check is marginal -- even with its clever code
of assuming that it can elide probes into the first two pages of a
static frame (because the caller must have probed those two frames).
Consistently when we looked at code it's over-probing.  Sadly, it's
over-probing in all the wrong places (because it's trying so damn hard
to ensure there's always 2 free pages the signal handler can use).

WRT probing correctness -- -fstack-check skips probes on the assumption
that an earlier caller in the call chain should have probed those pages.
 But that's a fundamentally flawed assumption unless the entire
application is compiled with -fstack-check.  In fact, by eliding those
probes, it actually misses the most important cases in mixed environment!

-fstack-check also has the nasty habit of probing into unallocated
areas.  This tends to cause valgrind problems.  Both in the sense of
getting far too many false positives, but on two platforms the code
generated by -fstack-check actually crashes valgrind.  These issues are
directly related to -fstack-check wanting to probe all the pages before
doing any allocations.

FWIW, we initially thought we were going to be able to use -fstack-check
with some slight tweaks.  But the deeper we got into -fstack-check the
more we ended up rewriting the probe generation from scratch.  In fact,
we were unable to use the existing -fstack-check probing code from *any*
target.

jeff
