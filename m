X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2124" "Monday" "8" "May" "2017" "20:32:21" "+0200" "Florian Weimer" "fweimer@redhat.com" "<34774b80-6941-d562-fb5f-710c8f9b9cb8@redhat.com>" "56" "Re: [oss-security] rpcbomb: remote rpcbind denial-of-service" nil nil nil "5" "2017050818:32:21" "[oss-security] rpcbomb: remote rpcbind denial-of-service" (number mark "U       fweimer@redh May  8   56/2124  " thread-indent "\"Re: [oss-security] rpcbomb: remote rpcbind denial-of-service\"\n") "<20170507184739.c4tdfs6zaywbgbdr@eldamar.local>" ("<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>" "<20170504005520.GD12174@hunt>" "<20170505092258.GF25854@suse.de>" "<756cef1f-ab04-dbc3-a80a-67fbae7e4cab@redhat.com>" "<20170507184739.c4tdfs6zaywbgbdr@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13777 invoked by uid 550); 8 May 2017 18:32:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13753 invoked from network); 8 May 2017 18:32:35 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 0EF818124F
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 0EF818124F
To: oss-security@lists.openwall.com, Salvatore Bonaccorso <carnil@debian.org>
References: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
 <20170504005520.GD12174@hunt> <20170505092258.GF25854@suse.de>
 <756cef1f-ab04-dbc3-a80a-67fbae7e4cab@redhat.com>
 <20170507184739.c4tdfs6zaywbgbdr@eldamar.local>
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <34774b80-6941-d562-fb5f-710c8f9b9cb8@redhat.com>
Date: Mon, 8 May 2017 20:32:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <20170507184739.c4tdfs6zaywbgbdr@eldamar.local>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Mon, 08 May 2017 18:32:23 +0000 (UTC)
Subject: Re: [oss-security] rpcbomb: remote rpcbind denial-of-service

On 05/07/2017 08:47 PM, Salvatore Bonaccorso wrote:
> Hi
> 
> On Fri, May 05, 2017 at 11:52:49AM +0200, Florian Weimer wrote:
>> On 05/05/2017 11:22 AM, Marcus Meissner wrote:
>>> On Wed, May 03, 2017 at 05:55:20PM -0700, Seth Arnold wrote:
>>>> On Wed, May 03, 2017 at 08:55:23PM +0200, Guido Vranken wrote:
>>>>> This vulnerability allows an attacker to allocate any amount of bytes
>>>>> (up to 4 gigabytes per attack) on a remote rpcbind host, and the
>>>>> memory is never freed unless the process crashes or the administrator
>>>>> halts or restarts the rpcbind service.
>>>>> [...]
>>>>> An extensive write-up can be found here:
>>>>> https://guidovranken.wordpress.com/2017/05/03/rpcbomb-remote-rpcbind-denial-of-service-patches/
>>>>>
>>>>> Exploit + patches: https://github.com/guidovranken/rpcbomb/
>>>>
>>>> Hello Guido, nice find. Have CVE numbers been requested for this issue
>>>> yet? Have you investigated if ntirpc is affected too? Much of the code
>>>> looks similar:
>>>>
>>>> http://sources.debian.net/src/ntirpc/1.4.3-3/src/rpc_generic.c/#L728
>>>
>>> We also saw glibc affected.
>>>
>>> https://bugzilla.suse.com/show_bug.cgi?id=1037559#c7
>>>
>>> That said, your reproducer allocates virtual memory, and on systems with overcommit
>>> there is only neglible impact on overall memory pressure.
>>>
>>> The rpc service will however likely crash at some point though when there is no virtual
>>> address space left for it.
>>
>> Thanks, I filed it upstream as well:
>>
>> https://sourceware.org/bugzilla/show_bug.cgi?id=21461
>>
>> Looks like both xdr_bytes and xdr_string have a similar bug.
>>
>> I'd appreciate some guidance on reusing or not reusing CVE IDs here.
> 
> A separate CVE should be used for this issue as clarified with MITRE.
> 
> It was assigned CVE-2017-8804.
> 
> https://sourceware.org/bugzilla/show_bug.cgi?id=21461
> 
> Patch posted at
> https://sourceware.org/ml/libc-alpha/2017-05/msg00105.html by Florian
> Weimer.

Note that we have a bit of a dispute here whether whether this is 
actually a vulnerability in the XDR code, or whether the caller is to blame.

Thanks,
Florian
