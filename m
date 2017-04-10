X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1399" "Monday" "10" "April" "2017" "20:14:45" "+0100" "Mark Thomas" "markt@apache.org" "<bd686d9b-f123-995b-3620-1efa03b86709@apache.org>" "44" "[oss-security] [SECURITY] CVE-2017-5647 Apache Tomcat Information Disclosure" nil nil nil "4" "2017041019:14:45" "[oss-security] [SECURITY] CVE-2017-5647 Apache Tomcat Information Disclosure" (number mark "U       markt@apache Apr 10   44/1399  " thread-indent "\"[oss-security] [SECURITY] CVE-2017-5647 Apache Tomcat Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12247 invoked by uid 550); 10 Apr 2017 19:23:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28383 invoked from network); 10 Apr 2017 19:15:05 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bd686d9b-f123-995b-3620-1efa03b86709@apache.org>
Date: Mon, 10 Apr 2017 20:14:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2017-5647 Apache Tomcat Information Disclosure

CVE-2017-5647 Apache Tomcat Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.0.M18
Apache Tomcat 8.5.0 to 8.5.12
Apache Tomcat 8.0.0.RC1 to 8.0.42
Apache Tomcat 7.0.0 to 7.0.76
Apache Tomcat 6.0.0 to 6.0.52

Description
A bug in the handling of the pipelined requests when send file was used
resulted in the pipelined request being lost when send file processing
of the previous request completed. This could result in responses
appearing to be sent for the wrong request. For example, a user agent
that sent requests A, B and C could see the correct response for request
A, the response for request C for request B and no response for request C.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Switch to the BIO HTTP where available
- Disable send file
- Upgrade to Apache Tomcat 9.0.0.M19 or later
- Upgrade to Apache Tomcat 8.5.13 or later
- Upgrade to Apache Tomcat 8.0.43 or later
- Upgrade to Apache Tomcat 7.0.77 or later
- Upgrade to Apache Tomcat 6.0.53 or later

Credit:
This issue was identified by the Tomcat security team.

History:
2017-04-10 Original advisory

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html
[3] http://tomcat.apache.org/security-7.html
[4] http://tomcat.apache.org/security-6.html

