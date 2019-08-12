X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3645" "Sunday" "11" "August" "2019" "22:47:51" "-0400" "Sasha Levin" "sashal@kernel.org" "<20190812024751.GA17747@sasha-vm>" "78" "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil "8" "2019081202:47:51" "[oss-security] linux-distros membership application - Microsoft" (number mark "U       sashal@kerne Aug 11   78/3645  " thread-indent "\"Re: [oss-security] linux-distros membership application - Microsoft\"\n") "<20190627140321.GA29338@openwall.com>" ("<20190626141358.GK7898@sasha-vm>" "<20190627140321.GA29338@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14170 invoked by uid 550); 12 Aug 2019 02:48:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14149 invoked from network); 12 Aug 2019 02:48:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1565578073;
	bh=U/lYA5ypMNFas3QxjBM1pxV71gMGRGS+73bkfXHan28=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Z/sdYMHa05UC7ytAGctTkamaE3zmnOrIe4iU96SfqG2zcAy3gps6PAAGN6kWBFYof
	 EWESldo5N18W0F9Q92wMhJHm8LuK8uJyREsWukeSGaWoyHsHKNo3k4vP/NN8FQFrOJ
	 U2HWjHp6uflDUY8jTTqRyle23dQ+27ORlwtUODSw=
Date: Sun, 11 Aug 2019 22:47:51 -0400
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <20190812024751.GA17747@sasha-vm>
References: <20190626141358.GK7898@sasha-vm>
 <20190627140321.GA29338@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20190627140321.GA29338@openwall.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] linux-distros membership application - Microsoft

On Thu, Jun 27, 2019 at 04:03:21PM +0200, Solar Designer wrote:
>On Wed, Jun 26, 2019 at 10:13:58AM -0400, Sasha Levin wrote:
>> We understand this need and will be contributing back. Looking at the
>> list of vacant positions I can suggest the following, but I suspect that
>> existing list members will have better suggestions.
>>
>> Technical:
>>
>> 3. Review and/or test the proposed patches and point out potential
>> issues with them (such as incomplete fixes for the originally reported
>> issues, additional issues you might notice, and newly introduced bugs),
>> and inform the list of the work done even if no issues were encountered
>> - primary: Amazon, backup: vacant
>>
>> Administrative:
>>
>> 3. Evaluate if the issue (or one of the issues) is effectively already
>> public (e.g., a fix is committed upstream with a descriptive message)
>> or/and is low severity and thus the report (or its portion pertaining to
>> the issue) should be made public right away for one or both of these
>> reasons, get a few other list members to confirm this understanding, and
>> if there are no objections then communicate this strong preference to
>> the reporter - primary: CloudLinux, backup: vacant
>
>If Microsoft volunteers for these, I'd like that to be in "primary" role
>at least for the technical task of "3. Review and/or test the proposed
>patches ..."  I think Amazon hasn't been doing enough on that front,
>especially given the request to "inform the list of the work done even
>if no issues were encountered".  Given this request, if this were
>seriously worked on, I would have expected such reports from Amazon on
>almost every issue handled on linux-distros, but this wasn't the case.
>
>I also would like a distro (maybe Microsoft) to volunteer for Technical:
>
>4. Check if related issues exist in the same piece of software (e.g.,
>same bug class common across the software, or other kinds of bugs exist
>in its problematic component), and inform the list either way
>
>and Administrative:
>
>4. Evaluate relevance to other parties such as the upstream, other
>affected distros (not present on the (sub-)list), and other Open Source
>projects, see if the report mentions notifying any of these, communicate
>your findings and possible concerns to the reporter and the list, and
>stay on top of the resulting discussion until a decision is made on who
>else to possibly notify (or not) and any such notifications are in fact
>made (with the reporter's approval)
>
>These are completely unclaimed now, but are much needed.
>
>For Technical "4. Check if related issues exist ...", we sometimes get
>some helpful for varying distros' package maintainers and such, but this
>is not consistent.  For example, recently Takashi Iwai of SUSE helped
>with Linux Marvell Wi-Fi driver issues - thanks! - but this is more of
>an exception than the rule.
>
>The lack of a volunteer distro for Administrative "4. Evaluate relevance
>to other parties ..." came up e.g. here:
>
>"Linux kernel: Bluetooth: two remote infoleaks (CVE-2019-3459, CVE-2019-3460)"
>https://www.openwall.com/lists/oss-security/2019/01/11/2

Since Ubuntu took over quite a few tasks (thanks!), I can suggest the
following tasks for Microsoft:

As primary, administrative: "4. Evaluate relevance to other parties such
as the upstream, other affected distros (not present on the (sub-)list),
and other Open Source projects, ...".

As backup, administrative: "3. Evaluate if the issue (or one of the
issues) is effectively already public ...".

I can also offer to act as a liason between linux-distros and
security@k.o now, and MSRC in the future.

--
Thanks,
Sasha
