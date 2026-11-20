X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/5
Message-ID: <c6350026-b8ac-417b-b4c3-ab8d5cf37aed@oracle.com>
Date: Thu, 19 Nov 2026 17:55:25 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Ruby: multiple vulnerabilities in Regexp and String case conversion
Content-Type: text/plain; charset=utf-8

On 11/18/26 17:03, Alan Coopersmith wrote:
>> GHSA-34m4-m9fh-gqp5: Heap buffer overflow in case conversion of strings
>> https://github.com/ruby/ruby/security/advisories/GHSA-34m4-m9fh-gqp5
>>
>> Ruby has a one-byte heap-based buffer overflow in the case conversion
>> of strings. Changing the case of a crafted string may allow remote
>> code execution. We are aware of PoCs that prove this flaw can be used
>> to trigger RCE in some scenarios.

MITRE appears to have assigned https://www.cve.org/CVERecord?id=CVE-2026-132825
for this one today.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
