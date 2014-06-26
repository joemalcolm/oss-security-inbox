X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/26/11
Message-ID: <53ABD0DD.8060801@redhat.com>
Date: Thu, 26 Jun 2014 09:50:53 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Question regarding CVE applicability of missing HttpOnly flag
Content-Type: text/plain; charset=utf-8

On 06/26/2014 01:07 AM, cve-assign@...re.org wrote:
>    -- compared to the development cost in arranging for the flag to be
>       set, is it possible that the real-life benefit is too small?

You need a separate vulnerability to access the cookie.  These 
vulnerabilities will have to be addressed even if the HttpOnly flag is 
set because indirectly, they usually give attackers access to 
information from which cookies are derived (e.g., by injecting a 
malicious login form).  Therefore, I think the HttpOnly flag is just 
hardening, and it's not even a very effective form of it.

-- 
Florian Weimer / Red Hat Product Security
