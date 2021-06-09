X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1135" "Wednesday" "9" "June" "2021" "23:11:00" "+0200" "Christophe JAILLET" "jailletc36@apache.org" nil "27" "[oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request" nil nil nil "6" nil nil (number mark "U       jailletc36@a Jun  9   27/1135  " thread-indent "\"[oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13486 invoked by uid 550); 10 Jun 2021 11:44:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29954 invoked from network); 9 Jun 2021 21:20:42 -0000
From: Christophe JAILLET <jailletc36@apache.org>
To: oss-security@lists.openwall.com
Date: Wed, 09 Jun 2021 23:11:00 +0200
Message-ID: <1622544226.KAPKHQKN@httpd.apache.org>
Subject: [oss-security] CVE-2021-31618: Apache httpd: NULL pointer dereference on specially crafted HTTP/2 request


CVE-2021-31618: NULL pointer dereference on specially crafted HTTP/2 request

Severity: important

Vendor: The Apache Software Foundation

Versions Affected:
2.4.47
httpd 
Description:
Apache HTTP Server 2.4.47
Apache HTTP Server protocol handler for the HTTP/2 protocol checks received request headers against the size limitations as configured for the server and used for the HTTP/1 protocol as well. On violation of these restrictions and HTTP response is sent to the client with a status code indicating why the request was rejected.

This rejection response was not fully initialised in the HTTP/2 protocol handler if the offending header was the very first one received or appeared in a a footer. This led to a NULL pointer dereference on initialised memory, crashing reliably the child process. Since such a triggering HTTP/2 request is easy to craft and submit, this can be exploited to DoS the server.

This affected versions prior to 2.4.47

Mitigation:
none

Credit:
Apache HTTP server would like to thank  LI ZHI XIN from NSFocus for reporting this.

References:
https://httpd.apache.org/security/vulnerabilities_24.html

