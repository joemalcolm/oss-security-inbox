Received: (qmail 24429 invoked by uid 550); 20 Feb 2023 16:57:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14024 invoked from network); 20 Feb 2023 16:43:03 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <c535a3bc-572d-42cc-10c6-aa01d78ee836@apache.org>
Date: Mon, 20 Feb 2023 16:40:49 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-24998 Apache Tomcat - FileUpload DoS with
 excessive parts

CVE-2023-24998 Apache Tomcat - FileUpload DoS with excessive parts

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 11.0.0-M1
Apache Tomcat 10.1.0-M1 to 10.1.4
Apache Tomcat 9.0.0-M1 to 9.0.70
Apache Tomcat 8.5.0 to 8.5.84

Description:
Apache Tomcat uses a packaged renamed copy of Apache Commons FileUpload 
to provide the file upload functionality defined in the Jakarta Servlet 
specification. Apache Tomcat was, therefore, also vulnerable to the 
Apache Commons FileUpload vulnerability CVE-2023-24998 as there was no 
limit to the number of request parts processed. This resulted in the 
possibility of an attacker triggering a DoS with a malicious upload or 
series of uploads.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 11.0.0-M3 or later when released
- Upgrade to Apache Tomcat 10.1.5 or later
- Upgrade to Apache Tomcat 9.0.71 or later
- Upgrade to Apache Tomcat 8.5.85 or later
- Note 11.0.0-M2 was not released

Credit:
This issue was identified by Jakob Ackermann

History:
2023-01-03 Original advisory
2023-01-03 Corrected credit

References:
[1] https://tomcat.apache.org/security-10.html
[2] https://tomcat.apache.org/security-9.html
[3] https://tomcat.apache.org/security-8.html

