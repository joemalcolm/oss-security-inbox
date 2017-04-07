X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Friday" "7" "April" "2017" "20:01:44" "+0200" "Florian Weimer" "fweimer@redhat.com" "<338143b2-aa57-b6eb-61d2-856bac151c2d@redhat.com>" "25" "Re: [oss-security] Re: libxslt math.random issue" nil nil nil "4" "2017040718:01:44" "[oss-security] Re: libxslt math.random issue" (number mark "U       fweimer@redh Apr  7   25/720   " thread-indent "\"Re: [oss-security] Re: libxslt math.random issue\"\n") "<87d1cods3z.fsf@redhat.com>" ("<20170406054400.GC32355@suse.de>" "<455b67a9-6d14-b374-8140-51546a53738d@redhat.com>" "<87inmhek30.fsf@redhat.com>" "<87d1cods3z.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28364 invoked by uid 550); 7 Apr 2017 18:01:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28343 invoked from network); 7 Apr 2017 18:01:57 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com A744C811D8
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx02.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com A744C811D8
To: oss-security@lists.openwall.com
References: <20170406054400.GC32355@suse.de>
 <455b67a9-6d14-b374-8140-51546a53738d@redhat.com> <87inmhek30.fsf@redhat.com>
 <87d1cods3z.fsf@redhat.com>
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <338143b2-aa57-b6eb-61d2-856bac151c2d@redhat.com>
Date: Fri, 7 Apr 2017 20:01:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <87d1cods3z.fsf@redhat.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Fri, 07 Apr 2017 18:01:45 +0000 (UTC)
Subject: Re: [oss-security] Re: libxslt math.random issue

On 04/07/2017 07:50 PM, Frank Ch. Eigler wrote:
>
> Florian Weimer wrote:
>
>> FWIW, why is glibc not doing srand(RANDOMVECTOR) during startup... :/
>>
>> The C standard does not allow it.
>>
>> ”
>> If rand is called before any calls to srand have been made, the same
>> sequence shall be generated as when srand is first called with a seed
>> value of 1.
>> ”
>
> Yes, but that does not imply that srand(1) needs to resolve to a
> build-constant value.

Sorry, I don't understand.  The standard also says, “If srand() is then 
called with the same seed value, the sequence of pseudo-random numbers 
shall be repeated.”

The sequences is *required* to be deterministic, and this is deliberate.

Thanks,
Florian
