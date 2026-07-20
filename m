X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/14
Message-ID: <b0bf05b8-2bb2-4212-b7ab-af940db7c70c@oracle.com>
Date: Mon, 20 Jul 2026 12:05:43 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: dnsmasq vulnerabilities, including attacker DNS redirect, privilege escalation, and heap manipulation
Content-Type: text/plain; charset=utf-8

On 5/11/26 11:11, Alan Coopersmith wrote:
>> CVE-2026-2291
>> dnsmasq's extract_name() function can be abused to cause a heap buffer
>> overflow, enabling an attacker to inject false DNS cache entries. This could
>> cause DNS queries to be redirected to attacker-controlled IP addresses or
>> result in a Denial of Service (DoS).

Further info on this CVE has been posted now by a researcher:
https://blog.exodusintel.com/2026/07/20/dnsmasq-dns-remote-heap-buffer-overflow/

"We cover the technical analysis of the vulnerability and how we exploited it
  to gain remote code execution on a OpenWRT target that is configured with a
  malicious upstream DNS server."

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
