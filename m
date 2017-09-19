X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["693" "Tuesday" "19" "September" "2017" "14:07:07" "+0100" "Mark Thomas" "markt@apache.org" "<3e602b65-602f-32f1-b5c7-f00c339ad9f0@apache.org>" "28" "[oss-security] [SECURITY] CVE-2017-12616 Apache Tomcat Information Disclosure" nil nil nil "9" "2017091913:07:07" "[oss-security] [SECURITY] CVE-2017-12616 Apache Tomcat Information Disclosure" (number mark "U       markt@apache Sep 19   28/693   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-12616 Apache Tomcat Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21683 invoked by uid 550); 19 Sep 2017 13:32:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3543 invoked from network); 19 Sep 2017 13:07:20 -0000
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3e602b65-602f-32f1-b5c7-f00c339ad9f0@apache.org>
Date: Tue, 19 Sep 2017 14:07:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2017-12616 Apache Tomcat Information Disclosure

CVE-2017-12616 Apache Tomcat Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 7.0.0 to 7.0.80

Description:
When using a VirtualDirContext it was possible to bypass security
constraints and/or view the source code of JSPs for resources served by
the VirtualDirContext using a specially crafted request.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 7.0.81

Credit:
This issue was identified by the Tomcat Security Team while
investigating CVE-2017-12615.

History:
2017-09-19 Original advisory

References:
[1] http://tomcat.apache.org/security-7.html
