X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["978" "Tuesday" "14" "July" "2020" "13:24:15" "+0100" "Mark Thomas" "markt@apache.org" "<af5073bc-cbe7-29fb-9ae9-629e591aa8a9@apache.org>" "31" "[oss-security] [SECURITY] CVE-2020-13935 Apache Tomcat WebSocket Denial of Service" nil nil nil "7" "2020071412:24:15" "[oss-security] [SECURITY] CVE-2020-13935 Apache Tomcat WebSocket Denial of Service" (number mark "U       markt@apache Jul 14   31/978   " thread-indent "\"[oss-security] [SECURITY] CVE-2020-13935 Apache Tomcat WebSocket Denial of Service\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2020-13935 Apache Tomcat WebSocket Denial of Service" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16296 invoked by uid 550); 14 Jul 2020 12:28:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12182 invoked from network); 14 Jul 2020 12:24:21 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <af5073bc-cbe7-29fb-9ae9-629e591aa8a9@apache.org>
Date: Tue, 14 Jul 2020 13:24:15 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2020-13935 Apache Tomcat WebSocket Denial of Service

CVE-2020-13935 Apache Tomcat WebSocket Denial of Service

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 10.0.0-M1 to 10.0.0-M6
Apache Tomcat 9.0.0.M1 to 9.0.36
Apache Tomcat 8.5.0 to 8.5.56
Apache Tomcat 7.0.27 to 7.0.104

Description:
The payload length in a WebSocket frame was not correctly validated.
Invalid payload lengths could trigger an infinite loop. Multiple
requests with invalid payload lengths could lead to a denial of service.

Mitigation:
- Upgrade to Apache Tomcat 10.0.0-M7 or later
- Upgrade to Apache Tomcat 9.0.37 or later
- Upgrade to Apache Tomcat 8.5.57 or later

Credit:
This issue was reported publicly via the Apache Tomcat Users mailing
list without reference to the potential for DoS. The DoS risks were
identified by the Apache Tomcat Security Team.

References:
[1] http://tomcat.apache.org/security-10.html
[2] http://tomcat.apache.org/security-9.html
[3] http://tomcat.apache.org/security-8.html
