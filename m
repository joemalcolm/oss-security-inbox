X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["956" "Thursday" "25" "June" "2020" "22:58:40" "+0100" "Mark Thomas" "markt@apache.org" "<64b43a38-c0c8-9d45-596d-2d89c55aee56@apache.org>" "30" "[oss-security] CVE-2020-11996 Apache Tomcat HTTP/2 Denial of Service" nil nil nil "6" "2020062521:58:40" "[oss-security] CVE-2020-11996 Apache Tomcat HTTP/2 Denial of Service" (number mark "U       markt@apache Jun 25   30/956   " thread-indent "\"[oss-security] CVE-2020-11996 Apache Tomcat HTTP/2 Denial of Service\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-11996 Apache Tomcat HTTP/2 Denial of Service" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20383 invoked by uid 550); 25 Jun 2020 22:54:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28352 invoked from network); 25 Jun 2020 21:58:49 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <64b43a38-c0c8-9d45-596d-2d89c55aee56@apache.org>
Date: Thu, 25 Jun 2020 22:58:40 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2020-11996 Apache Tomcat HTTP/2 Denial of Service

CVE-2020-11996 Apache Tomcat HTTP/2 Denial of Service

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 10.0.0-M1 to 10.0.0-M5
Apache Tomcat 9.0.0.M1 to 9.0.35
Apache Tomcat 8.5.0 to 8.5.55

Description:
A specially crafted sequence of HTTP/2 requests could trigger high CPU
usage for several seconds. If a sufficient number of such requests were
made on concurrent HTTP/2 connections, the server could become unresponsive.

Mitigation:
- Upgrade to Apache Tomcat 10.0.0-M6 or later
- Upgrade to Apache Tomcat 9.0.36 or later
- Upgrade to Apache Tomcat 8.5.56 or later

Credit:
This issue was reported publicly via the Apache Tomcat Users mailing
list without reference to the potential for DoS. The DoS risks were
identified by the Apache Tomcat Security Team.

References:
[1] http://tomcat.apache.org/security-10.html
[2] http://tomcat.apache.org/security-9.html
[3] http://tomcat.apache.org/security-8.html
