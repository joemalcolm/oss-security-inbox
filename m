X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3311" "Monday" "5" "December" "2016" "19:22:10" "+0100" "Solar Designer" "solar@openwall.com" "<20161205182210.GA28847@openwall.com>" "128" "[oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used" nil nil nil "12" "2016120518:22:10" "[oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used" (number mark "U       solar@openwa Dec  5  128/3311  " thread-indent "\"[oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2018 invoked by uid 550); 5 Dec 2016 18:22:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1861 invoked from network); 5 Dec 2016 18:22:16 -0000
Date: Mon, 5 Dec 2016 19:22:10 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20161205182210.GA28847@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2016-8740: Apache HTTPD 2.4.17-2.4.23: Server memory can be exhausted and service denied when HTTP/2 is used

This was erroneously(*) posted to the distros list earlier today, so it
must be on oss-security as well.

(*) The distros list is for embargoed issues only, whereas this one was
being made public at the same time and thus should have been posted to
public lists only.

----- Forwarded message from icing@apache.org -----

From: icing@apache.org
Subject: CVE-2016-8740, Server memory can be exhausted and service denied when HTTP/2 is used
Date: Mon, 5 Dec 2016 13:43:28 +0100
To: announce@httpd.apache.org

        Security Advisory - Apache Software Foundation
              Apache HTTPD WebServer  / httpd.apache.org


   Server memory can be exhausted and service denied when HTTP/2 is used


                CVE-2016-8740


The Apache HTTPD web server (from 2.4.17-2.4.23) did not apply limitations
on request headers correctly when experimental module for the HTTP/2 
protocol is used to access a resource. 


The net result is that a the server allocates too much memory instead of denying
the request. This can lead to memory exhaustion of the server by a properly
crafted request.


Background:
- -----------


Apache has limits on the number and length of request header fields. which
limits the amount of memory a client can allocate on the server for a request.


Version 2.4.17 of the Apache HTTP Server introduced an experimental feature:
mod_http2 for the HTTP/2 protocol (RFC7540, previous versions were known as 
Google SPDY).


This module is NOT compiled in by default -and- is not enabled by default, 
although some distribution may have chosen to do so.


It is generally needs to be enabled in the 'Protocols' line in httpd by 

adding 'h2' and/or 'h2c' to the 'http/1.1' only default. 


The default distributions of the Apache Software Foundation do not include 
this experimental feature. 


Details:
- --------


- From version 2.4.17, upto and including version 2.4.23 the server failed
to take the limitations on request memory use into account when providing 
access to a resource over HTTP/2. This issue has been fixed 
in version 2.4.23 (r1772576).


As a result - with a request using the HTTP/2 protocol a specially crafted
request can allocate memory on the server until it reaches its limit. This can
lead to denial of service for all requests against the server.


Impact:
- -------


This can lead to denial of service for all server resources.
Versions affected: 
- ------------------
All versions from  2.4.17 to  2.4.23. 


Resolution:
- -----------


For a 2.4.23 version a patch is supplied. This will be included in the
next release. 


Mitigations and work arounds:
- -----------------------------


As a temporary workaround - HTTP/2 can be disabled by changing
the configuration by removing h2 and h2c from the Protocols
line(s) in the configuration file. 


The resulting line should read:


		Protocols http/1.1


Credits and timeline
- --------------------


The flaw was found and reported by Naveen Tiwari <naveen.tiwari@asu.edu> 

and CDF/SEFCOM at Arizona State University on 2016-11-22. The issue was 

resolved by Stefan Eissing and incorporated in the Apache repository,
ready for inclusion in the next release.


Apache would like to thank all involved for their help with this.


Patch against 2.4.23 release source:



----- End forwarded message -----
