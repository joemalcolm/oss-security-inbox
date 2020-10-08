X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["816" "Thursday" "8" "October" "2020" "12:56:47" "+0200" "Oleg Kalnichevski" "olegk@apache.org" "<957319a25dba4efdb7523141231a6f35385ca72d.camel@apache.org>" "29" "[oss-security] [CVE-2020-13956] Apache HttpClient incorrect handling of malformed URI authority component" nil nil nil "10" "2020100810:56:47" "[oss-security] [CVE-2020-13956] Apache HttpClient incorrect handling of malformed URI authority component" (number mark "U       olegk@apache Oct  8   29/816   " thread-indent "\"[oss-security] [CVE-2020-13956] Apache HttpClient incorrect handling of malformed URI authority component\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13956] Apache HttpClient incorrect handling of malformed URI authority component" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5771 invoked by uid 550); 8 Oct 2020 10:58:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5405 invoked from network); 8 Oct 2020 10:57:03 -0000
Message-ID: <957319a25dba4efdb7523141231a6f35385ca72d.camel@apache.org>
From: Oleg Kalnichevski <olegk@apache.org>
To: oss-security@lists.openwall.com
Date: Thu, 08 Oct 2020 12:56:47 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [CVE-2020-13956] Apache HttpClient incorrect handling of malformed
 URI authority component

CVE-2020-13956: Apache HttpClient incorrect handling of malformed
authority component in request URIs

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
Apache HttpClient 4.5.12 and prior 
Apache HttpClient 5.0.2 and prior

Description:

Apache HttpClient versions prior to version 4.5.13 and 5.0.3 can
misinterpret malformed authority component in request URIs passed to
the library as java.net.URI object and pick the wrong target host for
request execution.  

Mitigation:

As of release 4.5.13 and 5.0.3 HttpClient will reject URIs with
ambiguous malformed authority component as invalid. Users of HttpClient
are advised to upgrade to version 4.5.13 or 5.0.3 and sanitize request
URIs when using java.net.URI as input.

Credit:
This issue was discovered and reported by Priyank Nigam

