X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1576" "Friday" "18" "December" "2015" "07:11:35" "-0500" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<5673F7F7.5070101@canonical.com>" "51" "Re: AW: [oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces" "^Date:" nil nil "12" "2015121812:11:35" "AW: [oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces" (number mark "        marc.deslaur Dec 18   51/1576  " thread-indent "\"Re: AW: [oss-security] CVE Request: Linux kernel: privilege escalation in user namespaces\"\n") "<2ECE9D9EEF1F524185270138AE23265954ECF850@S0MSMAIL112.arc.local>" ("<567339BE.3090404@canonical.com>" "<2ECE9D9EEF1F524185270138AE23265954ECF850@S0MSMAIL112.arc.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24304 invoked by uid 550); 18 Dec 2015 12:11:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24286 invoked from network); 18 Dec 2015 12:11:48 -0000
References: <567339BE.3090404@canonical.com>
 <2ECE9D9EEF1F524185270138AE23265954ECF850@S0MSMAIL112.arc.local>
Message-ID: <5673F7F7.5070101@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <2ECE9D9EEF1F524185270138AE23265954ECF850@S0MSMAIL112.arc.local>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Fri, 18 Dec 2015 07:11:35 -0500
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: AW: [oss-security] CVE Request: Linux kernel: privilege
 escalation in user namespaces
To: oss-security@lists.openwall.com

Hi,

On 2015-12-18 03:54 AM, Fiedler Roman wrote:
> Hi,
> 
>> Von: John Johansen [mailto:john.johansen@canonical.com]
>> Betreff: [oss-security] CVE Request: Linux kernel: privilege escalation in 
>> user
>> namespaces
>>
>> Hi,
>>
>> I haven't seen CVE request for this one yet so,
>>
>> Jann Horn reported a privilege escalation in user namespaces to the lkml
>> mailing list
>>
>> https://lkml.org/lkml/2015/12/12/259
>>
>> if a root-owned process wants to enter a user namespace for some reason
>> without knowing who owns it and therefore can't change to the namespace
>> owner's uid and gid before entering, as soon as it has entered the
>> namespace, the namespace owner can attach to it via ptrace and thereby
>> gain access to its uid and gid.
> 
> Could it be, that this is identical to
> 
> https://bugs.launchpad.net/ubuntu/+source/lxc/+bug/1475050
> 
> which led to
> 
> https://bugs.launchpad.net/bugs/cve/2015-1334
> 
> except, that combined with another timerace, this gives host uid 0 escalation 
> no matter how the target namespace looks like or target uid is known or not?
> 
> The bug is marked as fixed, but looking at it, the very similar kernel issue 
> seems not be addressed and it is also still marked "private security" although 
> fix was released.
> 
> I could ask Ubuntu Security if we should make that bug public or perhaps could 
> add accounts to the list of authorized users when told the Launchpad user name 
> to add.
> 

I've just made the bug public. It was an oversight that we hadn't made it public
once the fix got released.

Marc.


