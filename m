X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/09/4
Message-Id: <201004091222.24615.eren@pardus.org.tr>
Date: Fri, 9 Apr 2010 12:22:24 +0300
From: Eren Türkay <eren@...dus.org.tr>
To: oss-security@...ts.openwall.com
Subject: Re: ClamAV small issues
Content-Type: text/plain; charset=utf-8

On Friday 09 April 2010 11:30:19 am Ludwig Nussel wrote:
> Do such issues really need to be flagged as vulnerabilities? A virus
> scanner cannot detect all possible malware in any possible container
> anyways. So it's kind of natural that new releases enhance the
> methods to find even more hiding places.
> 

I guess many people who deploy e-mail service with linux use ClamAV to scan 
the attachments. Accordingly to ClamAV bug #1771 (CVE-2010-1311), it is 
possible to crash the daemon with crafted file, which is not the intended 
behavior.

I think these can be flagged as vulnerabilities. However, I am not sure if 
these are critical issues. Accordingly to secunia, these are highly-critical. 
Is there a standard way to classify the vulnerabilities? Do anyone know how 
Secunia classifies vulnerabilities?

Regards,

-- 
Eren
