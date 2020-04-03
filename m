X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/04/1
Message-ID: <ED45BA51-791D-4EBC-BE72-24E5A6E1A41D@apache.org>
Date: Fri, 03 Apr 2020 16:20:11 -0500
From: Daniel Ruggeri <druggeri@...che.org>
To: Alan Coopersmith <alan.coopersmith@...cle.com>,oss-security@...ts.openwall.com
Subject: Re: CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect
Content-Type: text/plain; charset=utf-8

Hi, Alan;
   Yes, you are correct. This was a typo that somehow crept into the notification only. The CVE database and our vulnerability documentation page is accurate.
https://httpd.apache.org/security/vulnerabilities_24.html

Thanks for confirming.
-- 
Daniel Ruggeri
Director, VP Fundraising, member, httpd PMC
The Apache Software Foundation

On April 3, 2020 10:19:06 AM CDT, Alan Coopersmith <alan.coopersmith@...cle.com> wrote:
>On 4/1/20 5:54 AM, Daniel Ruggeri wrote:
>> CVE-2020-1927: mod_rewrite configurations vulnerable to open redirect
>> 
>> Severity: Low
>> 
>> Vendor: The Apache Software Foundation
>> 
>> Versions Affected:
>> httpd 2.4.0 to 2.4.39
>> 
>> Description:
>> Apache HTTP Server 2.4.0 to 2.4.41
>
>Should the versions affected have been to .41 as well then?
>
>-- 
>	-Alan Coopersmith-               alan.coopersmith@...cle.com
>	 Oracle Solaris Engineering - https://blogs.oracle.com/alanc

