Received: (qmail 11793 invoked by uid 550); 3 Sep 2022 13:33:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9271 invoked from network); 3 Sep 2022 13:28:03 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <48f1b895-e1f4-7994-19d6-60c7307c877a@apache.org>
Date: Sat, 3 Sep 2022 15:28:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: fr, en-GB
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
References: <0692e33f-4855-c688-6718-26b94610fdeb@apache.org>
Organization: Apache Software Fundation
In-Reply-To: <0692e33f-4855-c688-6718-26b94610fdeb@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: Apache OFBiz - Unauth Path Traversal with file corruption
 (CVE-2022-25371)

Hi I'm sorry, I forgot to mention here the same than for (CVE-2022-25370) mitigation.

Obviously there is no patch to apply since we waited [too] long for
https://github.com/eclipse/birt/issues/625
to resolve but eventually decided to release OFBiz 18.12.06 with
the Birt component disabled.

My apologies

Jacques


Le 02/09/2022 à 08:26, Jacques Le Roux a écrit :
> Severity:
> High
>
> Vendor:
> The Apache Software Foundation
>
> Versions Affected:
> OFBiz versions prior to 18.12.06
>
> Description:
> The Birt viewer version 4.5.0 has a security issue that allows this exploit.
> We waited long for https://github.com/eclipse/birt/issues/625
> to resolve but eventually decided to release OFBiz 18.12.06 without
> the Birt component
>
> Mitigation:
> Upgrade to at least 18.12.06
> or apply patches at https://issues.apache.org/jira/browse/OFBIZ-...
>
> Credit:
> npodotykin@ptsecurity.com
>
> References:
> http://ofbiz.apache.org/download.html#vulnerabilities
>
