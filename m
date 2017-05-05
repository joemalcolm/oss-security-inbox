X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1499" "Friday" "5" "May" "2017" "11:52:49" "+0200" "Florian Weimer" "fweimer@redhat.com" "<756cef1f-ab04-dbc3-a80a-67fbae7e4cab@redhat.com>" "38" "Re: [oss-security] rpcbomb: remote rpcbind denial-of-service" "^Date:" nil nil "5" "2017050509:52:49" "[oss-security] rpcbomb: remote rpcbind denial-of-service" (number mark "        fweimer@redh May  5   38/1499  " thread-indent "\"Re: [oss-security] rpcbomb: remote rpcbind denial-of-service\"\n") "<20170505092258.GF25854@suse.de>" ("<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>" "<20170504005520.GD12174@hunt>" "<20170505092258.GF25854@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30033 invoked by uid 550); 5 May 2017 09:53:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30009 invoked from network); 5 May 2017 09:53:03 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 1F7413B70D
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx06.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=fweimer@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 1F7413B70D
References: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
 <20170504005520.GD12174@hunt> <20170505092258.GF25854@suse.de>
Message-ID: <756cef1f-ab04-dbc3-a80a-67fbae7e4cab@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <20170505092258.GF25854@suse.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 05 May 2017 09:52:51 +0000 (UTC)
Date: Fri, 5 May 2017 11:52:49 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] rpcbomb: remote rpcbind denial-of-service
To: oss-security@lists.openwall.com

On 05/05/2017 11:22 AM, Marcus Meissner wrote:
> On Wed, May 03, 2017 at 05:55:20PM -0700, Seth Arnold wrote:
>> On Wed, May 03, 2017 at 08:55:23PM +0200, Guido Vranken wrote:
>>> This vulnerability allows an attacker to allocate any amount of bytes
>>> (up to 4 gigabytes per attack) on a remote rpcbind host, and the
>>> memory is never freed unless the process crashes or the administrator
>>> halts or restarts the rpcbind service.
>>> [...]
>>> An extensive write-up can be found here:
>>> https://guidovranken.wordpress.com/2017/05/03/rpcbomb-remote-rpcbind-denial-of-service-patches/
>>>
>>> Exploit + patches: https://github.com/guidovranken/rpcbomb/
>>
>> Hello Guido, nice find. Have CVE numbers been requested for this issue
>> yet? Have you investigated if ntirpc is affected too? Much of the code
>> looks similar:
>>
>> http://sources.debian.net/src/ntirpc/1.4.3-3/src/rpc_generic.c/#L728
> 
> We also saw glibc affected.
> 
> https://bugzilla.suse.com/show_bug.cgi?id=1037559#c7
> 
> That said, your reproducer allocates virtual memory, and on systems with overcommit
> there is only neglible impact on overall memory pressure.
> 
> The rpc service will however likely crash at some point though when there is no virtual
> address space left for it.

Thanks, I filed it upstream as well:

https://sourceware.org/bugzilla/show_bug.cgi?id=21461

Looks like both xdr_bytes and xdr_string have a similar bug.

I'd appreciate some guidance on reusing or not reusing CVE IDs here.

Florian
