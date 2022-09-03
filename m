X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/03/1
Message-ID: <48f1b895-e1f4-7994-19d6-60c7307c877a@apache.org>
Date: Sat, 3 Sep 2022 15:28:10 +0200
From: Jacques Le Roux <jleroux@...che.org>
To: oss-security@...ts.openwall.com
Subject: Re: Apache OFBiz - Unauth Path Traversal with file corruption (CVE-2022-25371)
Content-Type: text/plain; charset=utf-8

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
> npodotykin@...ecurity.com
>
> References:
> http://ofbiz.apache.org/download.html#vulnerabilities
>
