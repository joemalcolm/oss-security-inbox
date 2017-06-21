X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["683" "Wednesday" "21" "June" "2017" "10:22:20" "-0600" "Jeff Law" "law@redhat.com" "<cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>" "15" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062116:22:20" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        law@redhat.c Jun 21   15/683   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<14558692.afnJ5aRU9J@wanheda>" ("<20170619152843.GC7769@localhost.localdomain>" "<14558692.afnJ5aRU9J@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5529 invoked by uid 550); 21 Jun 2017 16:22:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5511 invoked from network); 21 Jun 2017 16:22:33 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 7DD8368A9
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx10.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=law@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 7DD8368A9
References: <20170619152843.GC7769@localhost.localdomain>
 <14558692.afnJ5aRU9J@wanheda>
Message-ID: <cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <14558692.afnJ5aRU9J@wanheda>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Wed, 21 Jun 2017 16:22:21 +0000 (UTC)
Date: Wed, 21 Jun 2017 10:22:20 -0600
From: Jeff Law <law@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com, Agostino Sarubbo <ago@gentoo.org>

On 06/21/2017 04:46 AM, Agostino Sarubbo wrote:
> On Monday 19 June 2017 08:28:43 Qualys Security Advisory wrote:
>> III. Solutions
>> - Recompile all userland code (ld.so, libraries, binaries) with GCC's
>>   "-fstack-check" option, which prevents the stack-pointer from moving
>>   into another memory region without accessing the stack guard-page (it
>>   writes one word to every 4KB page allocated on the stack).
> 
> For the record, Gentoo Hardened enables by default -fstack-check=specific
And if you were to look at the generated code, you'll see that it
happily skips 2-3 pages of probes in prologues as well as within alloca
spaces.  It's a false sense of security.

jeff

