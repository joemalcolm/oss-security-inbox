X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1285" "Monday" "18" "May" "2015" "11:01:14" "+0200" "Andrea Palazzo" "andrea.palazzo@truel.it" "<5559AA5A.3050705@truel.it>" "29" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" nil nil nil "5" "2015051809:01:14" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" (number mark "        andrea.palaz May 18   29/1285  " thread-indent "\"[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption\"\n") "<5559A43F.7040606@gmail.com>" ("<5559A053.6090004@truel.it>" "<5559A43F.7040606@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24303 invoked by uid 550); 18 May 2015 09:01:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24285 invoked from network); 18 May 2015 09:01:26 -0000
Message-ID: <5559AA5A.3050705@truel.it>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <5559A053.6090004@truel.it> <5559A43F.7040606@gmail.com>
In-Reply-To: <5559A43F.7040606@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv-hp9.netsons.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - truel.it
X-Get-Message-Sender-Via: srv-hp9.netsons.net: authenticated_id: info@truel.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
CC: oss-security@lists.openwall.com, security@php.net
Date: Mon, 18 May 2015 11:01:14 +0200
From: Andrea Palazzo <andrea.palazzo@truel.it>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based
 memory corruption
To: Stanislav Malyshev <smalyshev@gmail.com>, cve-assign@mitre.org

Hi Stas,
while I agree on what you say about the huge memory allocation needed, I 
wouldn't say this requires the ability to run arbitrary code, 
controlling str_repeat() arguments it's enough to create a corrupted 
zval and injecting an eventual payload somewhere in memory (which, 
again, is unlikely but possible).
About code execution, I haven't had the chance to focus on actual 
exploitation yet (I surely will in the near future), but as you can see 
from the original report (https://bugs.php.net/bug.php?id=69403), I 
pointed out several cases in which working on a so-crafted zval would 
lead to invalid memory access (with user controlled values as well), so 
I am pretty confident it is achievable.


On 18/05/2015 10:35, Stanislav Malyshev wrote:
> Hi!
>
>> Hi everyone,
>> this is intended as CVE Request and advisory for
>> https://bugs.php.net/bug.php?id=69403.
> I do not think this requires a CVE as this needs specially crafted PHP
> script (i.e. local access or ability to run arbitrary PHP code) and
> memory settings allowing to allocate huge (>4G) values, which seems to
> be unlikely to happen on a common production system. I am not sure how
> remote code execution vector can be provided for this issue, if you have
> an example, please clarify.
>
> Thanks,

