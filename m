Received: (qmail 16040 invoked by uid 550); 19 Apr 2023 09:44:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5823 invoked from network); 19 Apr 2023 06:26:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=les7arts.com;
	s=nfrance; t=1681885532;
	bh=07bgrv43S023ERq2/mGpLL115D4yiHsIVQkT+0gSK/4=;
	h=Date:Subject:To:References:From:In-Reply-To;
	z=Date:=20Wed,=2019=20Apr=202023=2008:25:36=20+0200|Subject:=20Re:=
	 20[oss-security]=20CVE-2022-47501:=20Apache=20OFBiz:=20Arbitrary=2
	 0file=0D=0A=20reading=20vulnerability|To:=20oss-security@lists.ope
	 nwall.com,=20Arnout=20Engelen=20<engelen@apache.org>,=0D=0A=20"sec
	 urity@apache.org"=20<security@apache.org>,=0D=0A=20"security@ofbiz
	 .apache.org"=20<security@ofbiz.apache.org>|References:=20<8a4746bb
	 -6c19-dd80-10ca-9aa2b87d605b@apache.org>=0D=0A=20<20230418012752.G
	 I1655348@millbarge>=0D=0A=20<536fea8d-f1e3-0914-49e7-a0961abce35c@
	 apache.org>=0D=0A=20<20230419012930.GO1655348@millbarge>|From:=20J
	 acques=20Le=20Roux=20<jacques.le.roux@les7arts.com>|In-Reply-To:=2
	 0<20230419012930.GO1655348@millbarge>;
	b=aCpGZ+Qj05P3MhwfkO05i/Q33ZPMM6o0HKgc/Po9T4CpMEHBgywBMJ9RxSapiH4lM
	 LTxJ2Vg3kct4VprtZIf0x4pVO8v3kiJe8Y7NDgf/fFKgqI2A1kJ+q07oA88wsTBFCm
	 Tl1Nzz214goMrDjUfYs/IFTCxhGRkS2L5bmQAcY0=
Message-ID: <2849a749-83c1-68ab-3e8f-50cc667a6cf8@les7arts.com>
Date: Wed, 19 Apr 2023 08:25:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-GB, fr
To: oss-security@lists.openwall.com, Arnout Engelen <engelen@apache.org>,
        "security@apache.org" <security@apache.org>,
        "security@ofbiz.apache.org" <security@ofbiz.apache.org>
References: <8a4746bb-6c19-dd80-10ca-9aa2b87d605b@apache.org>
 <20230418012752.GI1655348@millbarge>
 <536fea8d-f1e3-0914-49e7-a0961abce35c@apache.org>
 <20230419012930.GO1655348@millbarge>
From: Jacques Le Roux <jacques.le.roux@les7arts.com>
Mail-Followup-To: oss-security@lists.openwall.com,
 Arnout Engelen <engelen@apache.org>,
 "security@apache.org" <security@apache.org>,
 "security@ofbiz.apache.org" <security@ofbiz.apache.org>
In-Reply-To: <20230419012930.GO1655348@millbarge>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2022-47501: Apache OFBiz: Arbitrary file
 reading vulnerability

Hi Seth,

As I guess you know, the ASF has many (350+) projects: https://projects.apache.org/
OFBiz is only one of these projects. An "old" one, IIRW it was the 26th to get in.

I say that because we have our own security team.
Yet, all projects are overseen and especially helped by the ASF security team for security matter.
In other words we (projects) all share the experience and expertise of the ASF security team.

So I must add that the ASF CVE tool has an optional REVIEW status.
This status allows the ASF security team to review and suggest improvements to the CVE announcement.
As I did not use this tool before this CVE, I was sure of what I did (my old way) and did not pass by this status.
If I had did so, the 2 points that you find "nice, and friendly" would have been amended by Arnout's review, lesson learned.

For the rest I guess your suggestions will be taken seriously by the ASF security team which maintain the CVE tool, especially for the OSS email part.
I'll also take care of your suggestions for URLS, and will better use the tool that has 16 references types for URLS. Though they maybe need a bit of 
explanation we are not all security experts :)

For the list of CVEs you gave, I'm not sure they used the CVE tool but If they did I guess next time it will be better thanks to our improving CVE 
tool, hopefully by using the REVIEW status

Thanks again for your suggestions

Jacques

Le 19/04/2023 à 03:29, Seth Arnold a écrit :
> On Tue, Apr 18, 2023 at 11:15:52AM +0200, Jacques Le Roux wrote:
>> I used to give more information. For this one, using our "new" internal
>> process* (need an ASF credential) and  following step 11 of**, notably
>>
>>     <<Generally, reports should contain enough information to enable
>>     people to assess the risk the vulnerability poses for their own
>>     system, and no more.>>
>>
>> I restricted the information to a minimum.
> Hello Jacques, thanks for the reply. I'd like to suggest that this policy
> should receive a review, as other list members have found the Apache
> defaults a bit wanting:
>
> https://www.openwall.com/lists/oss-security/2023/01/31/7
> https://www.openwall.com/lists/oss-security/2022/10/12/2
> https://www.openwall.com/lists/oss-security/2022/08/26/4
> https://www.openwall.com/lists/oss-security/2022/01/25/15
>
>> When sending to Mitre we replaced
>> https://lists.apache.org/list.html?announce@apache.org
>> by
>> https://lists.apache.org/thread/k8s76l0whydy45bfm4b69vq0mf94p3wc
>>
>> You can see the result at https://www.cve.org/CVERecord?id=CVE-2022-47501
> This is nice, and friendly.
>
>> We also changed the "problem type" to be more specific. Following the CWE
>> classification, we used "CWE-22 Improper Limitation of a Pathname to a
>> Restricted Directory ('Path Traversal')" rather than "Arbitrary file reading
>> vulnerability" used by the finder who stayed as the CVE title. You can see
>> it at https://cveawg.mitre.org/api/cve/CVE-2022-47501 which is the json
>> version of the report.
> This is also nice and friendly.
>
>> Regarding your points:
>>
>>   * the vulnerability was introduced long ago (years) when the plugin was
>>   created. It was around 2013.
> This information is gold!
>
>>   * https://ofbiz.apache.org/security.html gives indirect information
>>   about the fix. Do you suggest that we need to put a direct link like
>>   https://github.com/apache/ofbiz-plugins/commit/582add7d3 ?
> The link to the security page is a good start; it's even one of the better
> security.html pages I've seen. (Thanks!) But we've all spent too much time
> trying to figure out what exactly might have been "the intended content"
> on a page five or ten years later. Having more specific information (such
> as the "582add7d3" here) directly available in the list archives will
> simplify future searches for information.
>
>> Thanks for the links. We will certainly consider what can be done to
>> ease the work of downstream distributors and consumers.
> Thank you :)
