Received: (qmail 20019 invoked by uid 550); 2 May 2022 13:38:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31805 invoked from network); 2 May 2022 12:53:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=greenbone.net; s=20170621; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MNRSzkDKXIbdOPlZ9M6/tmPByXVMYUX2NsFdqd6iSEE=; b=J8bxkdh2MD957d30/G5OgXudVr
	kC3PoFccCCnuGmOdnreg5VAxNAbBSnROLtINkGLbmwtvkyjDK6QpPLZc+r+JLK2EdQ1K1TyEmHRV4
	jQpKKa9zYhf+ik6a989CTbXeh0js/90E/2v6ihLgalSRyzkRawMX+TrNapclwBGG2uR4=;
Delivery-date: Mon, 02 May 2022 14:51:36 +0200
Message-ID: <667aaf4d-c78e-c139-2ec9-cbfd8d858bcc@greenbone.net>
Date: Mon, 2 May 2022 14:53:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <Ym1X82gykRQqVzd7@gentoo.org> <24e8-626d8980-3-6d44cb00@230483808>
 <Ym6bSZb8S/5OVcuV@gentoo.org>
From: Christian Fischer <christian.fischer@greenbone.net>
In-Reply-To: <Ym6bSZb8S/5OVcuV@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Scan-Signature: 94601a5b2125eb2a01f66b787d570f70
Subject: Re: [oss-security] CVE-2022-21449 and version reporting

On 01.05.22 16:38, John Helmert III wrote:
> On Sat, Apr 30, 2022 at 09:09:16PM +0200, Christian Fischer wrote:
>> On Saturday, April 30, 2022 17:38 CEST, John Helmert III <ajak@gentoo.org> wrote:
>>
>>> On Sat, Apr 30, 2022 at 01:24:36PM +0200, Christian Fischer wrote:
>>>>   > It’s not that they didn’t/can’t verify, it’s already verified,
>>>> they’re claiming those versions no longer being officially supported
>>>> means they can seemingly omit them from CVE reporting.
>>>>   >
>>>>   > Which is dangerous, misleading, and nonsensical.
>>>>
>>>> While i fully agree with this be aware that CVE entries could generally
>>>> contain incomplete information:
>>>>
>>>> After requesting an update of a CVE entry via the MITRE CVE forum in the
>>>> past to add additional affected products for a different vendor (which
>>>> wasn't even the assigning CNA like it is the case for Oracle here) my
>>>> request was rejected by MITRE with the following rationale given:
>>>
>>> The CNA that assigned that CVE is Oracle, so Oracle is the CNA to talk
>>> to to make changes to it. MITRE won't make changes to it as they're
>>> not the CNA behind that CVE.
>>>
>>>>   > A CVE description does not necessarily contain all the affected
>>>> products or versions and is not part of CVE ID requirements. The
>>>> products are documented in the CVE references.
>>>> This is also matching my experiences with various other products /
>>>> vendors and related CVE entries for these.
>>>
>>> Right, this is documented in the CNA rules [1]:
>>>
>>> "8.2.1 MUST provide enough information for a reader to have a
>>> reasonable understanding of what products are affected. If the
>>> affected products are not explicitly listed in the description, then
>>> the CNA MUST provide a reference that points to the known affected
>>> products."
>>>
>>> [1] https://www.cve.org/ResourcesSupport/AllResources/CNARules#section_8-2_cve_record_prose_description_requirements
>>
>> Yes, indeed / in know (since then) but it wasn't clear if all participants in this thread are aware of this fact.
>>
>> But i just have noticed that my posting was only partly relevant for the quoted message and the question of the OP "Why is this being allowed…" because i have missed that Oracle (if they as the assigning CNA are aware that Java 15 and 16 are affected) AFAICT indeed haven't provided any reference so far about all known affected versions / products.
>>
> 
> Their April 2022 CPU (Critical Patch Update) Advisory, which is a
> reference of CVE-2022-21449, is pretty comprehensive:
> 
> https://www.oracle.com/security-alerts/cpuapr2022.html#AppendixJAVA
> 
> Supported versions affected: "Oracle Java SE: 17.0.2, 18; Oracle
> GraalVM Enterprise Edition: 21.3.1, 22.0.0.2"

Maybe there is a misunderstanding, just to clarify:

1. Oracle Java 15, 16, 17 and 18 are known to be affected
2. Oracle seems to be aware of this (see the various previous comments / 
the blog post linked by the OP)
3. The CVE description doesn't reflect that Java 15 and 16 is affected 
(only Java 17 and 18 is listed there as vulnerable)
4. The related entry for CVE-2022-21449 on the April 2022 CPU is also 
not reflecting this (only Java 17 and 18 is listed there as vulnerable)

and that's what is currently discussed in this thread.
