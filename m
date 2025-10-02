Received: (qmail 7615 invoked by uid 550); 2 Oct 2025 21:18:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14312 invoked from network); 2 Oct 2025 19:33:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759433571; x=1760038371; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/pVI92EVkuV/G9B/SnYJNeGUbgm49mcAar6YUWrm/Bc=;
        b=W0wMlyP1UAnn+ZXhl03DGRiJhS+cwG2hwP+1g7ssIyt+7Kf8/eyfjPYZAElQ+s55WF
         fDI/IY5+EKFmTLmR3tUGT81oWFoctBCUI0PJQnZYy99rShR5iMo8HCWAdIOd14HiyM8F
         A51JrJHSoVlJMJHQDxu72j6HclP4dcB630oJ6IuhZjAd9SDtPfSUwK0oiRspDjBEa9mG
         eD8bl29YbXOq+lHK+bz9fcv3medfZppWRv1hDhg6MbeDBlwXPOeKVqBnZJRAXvzs5BII
         Wz8kTw9bXWApKNIjnIxKVNg5xyA6aX7QcwjpWciinAlxopmZqvJZiDH8qqa1TypS/G9X
         D5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759433571; x=1760038371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/pVI92EVkuV/G9B/SnYJNeGUbgm49mcAar6YUWrm/Bc=;
        b=WDia6mz3FD2JWyzXOe3Jp57nmGfk0hTg/46vXNtlVNcFDRmdTBKsrt9BY4fCw7+39d
         49df8hjOVcc3989duTU6mW3Oqg2184voiNaGIF8XqbbV/o62j2pjUuZN4V8+dBL3iRh6
         7Ap1Q1UXqvsFzn9Am9lc0vT7dKkGNvpzXfd+GcplVSqD1vUdbxDBGa6cDsbkcJZwqujr
         TnqVnqwdO78MX9jdJchP1MVrcmBAJyxFAzQn2166RLgmRYRMIuItAG2N5i1YKP42JOlO
         RNu0M5P/Y9AGvygHYidZ7ILTspWL19I1svsMjn9L9noCAOKXcv6ssgzt3rYFBrMa5cED
         T+AA==
X-Gm-Message-State: AOJu0YyAgT6JTi7DAbPjaxB6zsZTwdm9Qza+gx5uzjd1QtMTp8vCysBV
	BedDaRAfm1JYaQHun6HiRExNcEDcRpw12r+ChgRvtmLyqm4Tm18cAvKCs+oqxA==
X-Gm-Gg: ASbGncu8d3K4brw6TrcC2TVCoMj8l20uuzWwYql1banuJO1SuUXz10HmxvxyPwMIXBq
	p8TU2uBpz/7EOSZgD9EevDDFnLU//pJP7fznRe9GeDl9nVYyJyNAewris5QWjK5r3AZhdY+R1v1
	e5C9EltSieJKyBwAykXGh1+KWFEA512GatiZpxPZgP/8ZQ2IUrLFZ+1ZGt3CT9V9bazOkF0G9vU
	kgxo85uwZOKLqlCzhznGFxdqP6a3eZh3rGsnIlOnvqLABaATlK+n5DzgCYy5wfci1kByd2+O8FT
	0Dl/nxrH1CDaTuh34JBSVR5HN6NDrviXOo2RJB4KRQooskA4cjjpmoTsotJiNlHd3jhHXn0+zVE
	t2XcpN8HBPwShX/VysN3y3DWj0d9wj+gDE7YAiRGepVcaQTtJmZgu79uRnrLQCNOixiUWL9fRtV
	wf8ruMbrsRKfcWnaYTHOoxTzbA
X-Google-Smtp-Source: AGHT+IEnfOfUiViiE5lAZB+M2SDfuetkUGIye6COaxVpi1AKE/QVZrHUlFxgo8sxOkWkdLyfflUnWw==
X-Received: by 2002:a05:600c:1f96:b0:45f:2ed1:d1c5 with SMTP id 5b1f17b1804b1-46e7115cba1mr3209845e9.36.1759433570892;
        Thu, 02 Oct 2025 12:32:50 -0700 (PDT)
Message-ID: <e61844e3-47d2-4209-b34a-6d94f963113f@gmail.com>
Date: Thu, 2 Oct 2025 21:32:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
 <40b4dd6d-eb00-4076-8f38-546a1c3589a1@gmail.com>
 <2025100255-cage-squall-f003@gregkh>
Content-Language: en-US
From: Attila Szasz <szasza.contact@gmail.com>
In-Reply-To: <2025100255-cage-squall-f003@gregkh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

*Hi Greg,*

I am writing to formally invite you to a public debate at next year’s 
FOSDEM.

Our past discussions surrounding the HFS+ vulnerability—and the 
subsequent "lamest vendor response" award the Linux CNA received at 
DEFCON—highlighted a significant disconnect in how we approach security, 
disclosure, and community roles. My goal is not to re-litigate a past 
issue, but to bring transparency to crucial questions that many in our 
community are asking about the future.

I propose a moderated discussion in the Linux kernel devroom to explore 
these topics. The idea is to foster a constructive dialogue, not a 
confrontation. The key questions to address would be:

  *

    *The Linux CNA's Role:* What is its responsibility in global product
    security, and is its current approach effective?

  *

    *Vulnerability Triage:* Is the "all bugs are just bugs" philosophy
    sustainable, or do certain flaws require a higher class of treatment?

  *

    *The Future of Linux Security:* What are the long-term consequences
    of our strategic choices regarding security investment and process?

  *

    *The Next Generation:* How does the kernel project integrate the
    perspectives of independent, nonconformist, and younger developers?

  *

    *Regulatory Readiness:* How can the kernel community best prepare
    for the impact of legislation like the EU’s Cyber Resilience Act (CRA)?

I believe FOSDEM's open, community-driven, and unfiltered nature makes 
it the ideal venue. A frank conversation between us would bring immense 
value and clarity to these complex challenges for the benefit of the 
entire ecosystem.

Would you be willing to participate?

*Best regards,*

*Attila*


On 10/2/25 16:34, Greg KH wrote:
> On Thu, Oct 02, 2025 at 03:11:17PM +0200, Attila Szasz wrote:
>> For the sake of product security folks who rely on consistency: the Linux
>> CNA recently registered a batch of HFS/HFS+ CVEs that require manipulating
>> malformed filesystems as a first step. This seems inconsistent with how
>> similar cases were previously handled.
> If you feel the Linux CNA has issued CVEs in an inconsistent way, please
> contact them and the people there will be glad to research the issue and
> get back to you.  They are issuing, on average, 13 CVEs a day, and so
> stuff like this easily gets lost in the firehose.
>
> The Linux CNA is also currently "backfilling" many old CVE entries that
> previously came from the GSD database, and perhaps the issues you are
> referring to came from there.  If so, again, please contact them and
> they will be glad to discuss it.
>
> thanks,
>
> greg k-h
