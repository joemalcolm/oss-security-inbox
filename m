X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2260" "Saturday" "8" "August" "2020" "07:02:21" "-0500" "Daniel Ruggeri" "druggeri@apache.org" "<3eab72b4-8e53-9b78-c529-0578f52e6599@apache.org>" "63" "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil "8" "2020080812:02:21" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" (number mark "U       druggeri@apa Aug  8   63/2260  " thread-indent "\"Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow\"\n") "<20200807125434.GA18666@openwall.com>" ("<1596799898.GKATVRZF@httpd.apache.org>" "<20200807125434.GA18666@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15945 invoked by uid 550); 8 Aug 2020 12:40:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29699 invoked from network); 8 Aug 2020 12:02:40 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1596888146; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ALm88FFAW84ZTm2CtaFXCpqJqr+kApUwntfk6lARDGByxEyY+7x4F2378B4RC8r/7M3Hc6DJWELg5+Jq3ifPasnMugoEzGUDoXNJcOQib83DplJAoLf8A+Xb0AphA1eZgT40ZZeD0YIKJ5NM31skrZFmFUldboxpNEoX+v5V7HE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1596888146; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=43Qa2GLVY8SQPj0RI9zK8JYogYznPWSeTd9TnDGdzYo=; 
	b=Ygecg/f1xKY+WqblfdRXzBzgxUu/IFTJPvaYMVptBMe3bZ4NVWQR4oVXHV8zW/Jo2o+ADLcJsVTaf4P168EMt+Og4ymZRmMxX6N3vJWv8d3HKmaoTShZXdt6Fvg5s2pWcxxGcocrW10qmpMWBBs+OahYYHpK3jHM5wYPgJv9l20=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=daniel@bitnebula.com;
	dmarc=pass header.from=<druggeri@apache.org> header.from=<druggeri@apache.org>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
 HTTPD Security <security@httpd.apache.org>
References: <1596799898.GKATVRZF@httpd.apache.org>
 <20200807125434.GA18666@openwall.com>
From: Daniel Ruggeri <druggeri@apache.org>
Message-ID: <3eab72b4-8e53-9b78-c529-0578f52e6599@apache.org>
Date: Sat, 8 Aug 2020 07:02:21 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200807125434.GA18666@openwall.com>
Content-Type: multipart/alternative;
 boundary="------------CAA2FC0D0FCF22EF95BA4CA5"
Content-Language: en-US
X-ZohoMailClient: External
Subject: Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer
 overlow

--------------CAA2FC0D0FCF22EF95BA4CA5
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi, Alexander;

On 8/7/2020 7:54 AM, Solar Designer wrote:
> Hi Daniel,
>
> On Fri, Aug 07, 2020 at 06:31:38AM -0500, Daniel Ruggeri wrote:
>> CVE-2020-11984: mod_uwsgi buffer overlow
>>
>> Severity: moderate
>>
>> Vendor: The Apache Software Foundation
>>
>> Versions Affected:
>> httpd 2.4.32 to 2.4.44
>>
>> Description:
>> Apache HTTP Server 2.4.32 to 2.4.44
>> mod_proxy_uwsgi info disclosure and possible RCE
>>     
>> Mitigation:
>> disable mod_uwsgi
> You appear to use mod_uwsgi and mod_proxy_uwsgi interchangeably in the
> above, but I guess they're actually different modules?
Yes, you're correct. There is a mod_uwsgi maintained elsewhere in the
wild. This one was a typo that had made its way into the description.
>
>> Credit:
>> Discovered by Felix Wilhelm of Google Project Zero
>>
>> References:
>> https://httpd.apache.org/security/vulnerabilities_24.html
> The vulnerability description at that link mentions mod_proxy_uwsgi
> only, so I guess it's the one affected module, whereas mod_uwsgi is
> unaffected?
>
> In general, I think you include too little detail in these postings and
> at the link above.  You do include the bare minimum (thanks!), but it is
> unclear from these announcements where in the code the issues are.  You
> could reference source files and function names and/or commits fixing
> the issues.  You could also describe the impact in more detail - e.g.,
> what kind of "info disclosure" (what info is potentially disclosed and
> to where).  I am just using this as an example of how I think you could
> improve reporting on Apache httpd vulnerabilities in general.

Thanks - I've included our security mailing list to pass this feedback
along to the rest of the security group as a heads up. As you can
imagine, with such a strong downstream community from our releases, we
try to be careful so as to not place too much information in the
descriptions to make it trivial to exploit vulnerabilities before those
downstream packagers can incorporate fixes. At the same time, there's
always room for improvement :-)

Have a great weekend!

> Thanks,
>
> Alexander

--------------CAA2FC0D0FCF22EF95BA4CA5--
