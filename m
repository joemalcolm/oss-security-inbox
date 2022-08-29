Received: (qmail 24508 invoked by uid 550); 29 Aug 2022 11:27:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24484 invoked from network); 29 Aug 2022 11:27:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=z7Y7XJuGU/+6uiZLkpdjYcPV9ctWX7caGdSngkYm2cA=; b=aG9hcVNyVY8OIMCtER5cglBJ9y
	adPbnUtgocCPXWmZThrcdulQdk2vegCFjhB+sJDDj9ybx1S16iB0Jlum7nRV3M9s6KsWq/IUXs4M1
	JNvQR4N8cQXPlu5JAYYHVY+aYWw/tphkzXIUmH0a7B5oyRoFe7eJYogbqq8OuSB2LKXeUGiYqBZzx
	CGJ9hxH/qEXzTvrCDB8YWKkHEXjPLARids+9kNwNeNHj6Gt3qxgeMHrGOhXrQZ5kGEwbxohxoOo5M
	ArADi1/hiUgPhAK6ExQusidhtOXh27XEfZmPX4SE67r4KfI5IigppHlTMiiJJ4tabCHXLAXALIJDI
	vwYagAKQ==;
Message-ID: <8812a292-ecd6-5172-a746-4ca192552882@igalia.com>
Date: Mon, 29 Aug 2022 13:26:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-GB
To: oss-security@lists.openwall.com, John Helmert III <ajak@gentoo.org>
References: <b2f4c0a2-695c-7744-2397-269a1e588c31@igalia.com>
 <YwhTtN8duEhxo1hY@gentoo.org>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Organization: Igalia S.L.
Mail-Followup-To: oss-security@lists.openwall.com,
 John Helmert III <ajak@gentoo.org>
In-Reply-To: <YwhTtN8duEhxo1hY@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2022-0008


On 26/08/2022 07:01, John Helmert III wrote:
> On Thu, Aug 25, 2022 at 11:34:04PM +0200, Carlos Alberto Lopez Perez wrote:
>> ------------------------------------------------------------------------
>> WebKitGTK and WPE WebKit Security Advisory                 WSA-2022-0008
>> ------------------------------------------------------------------------
>>
>> Date reported           : August 25, 2022
>> Advisory ID             : WSA-2022-0008
>> WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2022-0008.html
>> WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2022-0008.html
>> CVE identifiers         : CVE-2022-32893.
>>
>> Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.
>>
>> CVE-2022-32893
>>     Versions affected: WebKitGTK and WPE WebKit before 2.36.7.
>>     Credit to an anonymous researcher.
>>     Impact: Processing maliciously crafted web content may lead to
>>     arbitrary code execution. Apple is aware of a report that this issue
>>     may have been actively exploited.
> 
> According to Apple's security advisories for this (e.g. [1]), this
> issue is tracked on the Webkit Bugzilla as 243557 [2] which was opened
> on 2022-08-04. A few minutes after that bug was opened, a pull request
> on GitHub was linked [3] with a patch which also seems to add unit
> tests. So, it appears to me that this issue was public since at least
> August 4th, and even more widely publicized with Apple's security
> advisories on August 17.
> 
> WebKit-2.36.6 was released shortly after the first bug report, on
> 2022-08-07, and WebKit-2.36.7 was released yesterday, on 2022-08-25.
> 
> With this bug seemingly being publicly known to be an actively
> exploited code execution issue, why did it take several weeks and 2
> WebKit releases to get this issue fixed and a WSA released?
> 
> [1] https://support.apple.com/en-us/HT213412
> [2] https://bugs.webkit.org/show_bug.cgi?id=243557
> [3] https://github.com/WebKit/WebKit/pull/3023
> 


We (maintainers of Linux WebKit ports) don't have access to the security
issues affecting Apple products until those issues are made public by them.

So, we didn't knew until August 17th of this issue. Also you can see
that the bug report itself or the patch doesn't has any indication that
it fixes a security-related problem.

Therefore, the time it took us to notice the issue, backport the fix and
do a new release was just 7-8 days (from 17th to 24-25th of August).
Which, honestely, it is quite good taking into account that: 1)
back-porting the fix was not straightforward since it required
back-porting also a few previous patches in order to be able to merge it
properly and that 2) we are in August and people is usually on holidays.

On the other hand, I don't know if this issue was or is exploited on
Linux WebKit users. All I known is that Apple said they are aware of a
report that this issue was actively exploited (on Apple/WebKit users).
So I assume this can also affect Linux WebKit users. But I don't have a
confirmation that this is actually the case, neither I'm aware of any
PoC demonstrating the issue.

Regards.
