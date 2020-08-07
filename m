X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1385" "Friday" "7" "August" "2020" "14:54:34" "+0200" "Solar Designer" "solar@openwall.com" "<20200807125434.GA18666@openwall.com>" "44" "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil "8" "2020080712:54:34" "[oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" (number mark "U       solar@openwa Aug  7   44/1385  " thread-indent "\"Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow\"\n") "<1596799898.GKATVRZF@httpd.apache.org>" ("<1596799898.GKATVRZF@httpd.apache.org>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28589 invoked by uid 550); 7 Aug 2020 12:55:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28404 invoked from network); 7 Aug 2020 12:54:39 -0000
Date: Fri, 7 Aug 2020 14:54:34 +0200
From: Solar Designer <solar@openwall.com>
To: Daniel Ruggeri <druggeri@apache.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20200807125434.GA18666@openwall.com>
References: <1596799898.GKATVRZF@httpd.apache.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1596799898.GKATVRZF@httpd.apache.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2020-11984: Apache httpd: mod_uwsgi buffer overlow

Hi Daniel,

On Fri, Aug 07, 2020 at 06:31:38AM -0500, Daniel Ruggeri wrote:
> CVE-2020-11984: mod_uwsgi buffer overlow
> 
> Severity: moderate
> 
> Vendor: The Apache Software Foundation
> 
> Versions Affected:
> httpd 2.4.32 to 2.4.44
> 
> Description:
> Apache HTTP Server 2.4.32 to 2.4.44
> mod_proxy_uwsgi info disclosure and possible RCE
>     
> Mitigation:
> disable mod_uwsgi

You appear to use mod_uwsgi and mod_proxy_uwsgi interchangeably in the
above, but I guess they're actually different modules?

> Credit:
> Discovered by Felix Wilhelm of Google Project Zero
> 
> References:
> https://httpd.apache.org/security/vulnerabilities_24.html

The vulnerability description at that link mentions mod_proxy_uwsgi
only, so I guess it's the one affected module, whereas mod_uwsgi is
unaffected?

In general, I think you include too little detail in these postings and
at the link above.  You do include the bare minimum (thanks!), but it is
unclear from these announcements where in the code the issues are.  You
could reference source files and function names and/or commits fixing
the issues.  You could also describe the impact in more detail - e.g.,
what kind of "info disclosure" (what info is potentially disclosed and
to where).  I am just using this as an example of how I think you could
improve reporting on Apache httpd vulnerabilities in general.

Thanks,

Alexander
