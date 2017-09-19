X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["878" "Tuesday" "19" "September" "2017" "14:06:38" "+0100" "Mark Thomas" "markt@apache.org" "<ef83c96a-90be-e97d-1616-a7b74870cb16@apache.org>" "30" "[oss-security] [SECURITY] CVE-2017-12615 Apache Tomcat Remote Code Execution via JSP upload" "^Date:" nil nil "9" "2017091913:06:38" "[oss-security] [SECURITY] CVE-2017-12615 Apache Tomcat Remote Code Execution via JSP upload" (number mark "U       markt@apache Sep 19   30/878   " thread-indent "\"[oss-security] [SECURITY] CVE-2017-12615 Apache Tomcat Remote Code Execution via JSP upload\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20473 invoked by uid 550); 19 Sep 2017 13:32:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3344 invoked from network); 19 Sep 2017 13:06:54 -0000
Message-ID: <ef83c96a-90be-e97d-1616-a7b74870cb16@apache.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Date: Tue, 19 Sep 2017 14:06:38 +0100
From: Mark Thomas <markt@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2017-12615 Apache Tomcat Remote Code Execution via JSP
 upload
To: oss-security@lists.openwall.com

CVE-2017-12615 Apache Tomcat Remote Code Execution via JSP Upload

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 7.0.0 to 7.0.79

Description:
When running on Windows with HTTP PUTs enabled (e.g. via setting the
readonly initialisation parameter of the Default to false) it was
possible to upload a JSP file to the server via a specially crafted
request. This JSP could then be requested and any code it contained
would be executed by the server.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 7.0.81 or later (7.0.80 was not released)

Credit:
This issue was reported responsibly to the Apache Tomcat Security Team
by iswin from 360-sg-lab (360观星实验室)

History:
2017-09-19 Original advisory

References:
[1] http://tomcat.apache.org/security-7.html
