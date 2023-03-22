Received: (qmail 24445 invoked by uid 550); 22 Mar 2023 11:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26114 invoked from network); 22 Mar 2023 10:13:05 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <32ab10c5-fecd-438f-1371-5fa77d5f957a@apache.org>
Date: Wed, 22 Mar 2023 10:12:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-28708: Apache Tomcat: JSESSIONID Cookie missing secure
 attribute in some configurations

CVE-2023-28708 Apache Tomcat - Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 11.0.0-M1 to 11.0.0-M2
Apache Tomcat 10.1.0-M1 to 10.1.5
Apache Tomcat 9.0.0-M1 to 9.0.71
Apache Tomcat 8.5.0 to 8.5.85

Description:
When using the RemoteIpFilter with requests received from a reverse 
proxy via HTTP that include the X-Forwarded-Proto header set to https, 
session cookies created by Tomcat did not include the secure attribute. 
This could result in the user agent transmitting the session cookie over 
an insecure channel.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 11.0.0-M3 or later
- Upgrade to Apache Tomcat 10.1.6 or later
- Upgrade to Apache Tomcat 9.0.72 or later
- Upgrade to Apache Tomcat 8.5.86 or later

History:
2023-03-22 Original advisory

References:
[1] https://tomcat.apache.org/security-11.html
[2] https://tomcat.apache.org/security-10.html
[3] https://tomcat.apache.org/security-9.html
[4] https://tomcat.apache.org/security-8.html

