Received: (qmail 21862 invoked by uid 550); 3 Jan 2023 18:10:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11549 invoked from network); 3 Jan 2023 17:51:11 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <1420fa80-17ba-e9fa-c6f9-5c917f2b6af3@apache.org>
Date: Tue, 3 Jan 2023 17:50:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2022-45143 Apache Tomcat - JsonErrorReportValve injection

CVE-2022-45143 Apache Tomcat - JsonErrorReportValve injection

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 10.1.0-M1 to 10.1.1
Apache Tomcat 9.0.40 to 9.0.68
Apache Tomcat 8.5.83

Description:
The JsonErrorReportValve did not escape the type, message or description 
values. In some circumstances these are constructed from user provided 
data and it was therefore possible for users to supply values that 
invalidated or manipulated the JSON output.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 10.1.2 or later
- Upgrade to Apache Tomcat 9.0.69 or later
- Upgrade to Apache Tomcat 8.5.84 or later

Credit:
This issue was identified by the Apache Tomcat security team.

History:
2023-01-03 Original advisory

References:
[1] https://tomcat.apache.org/security-10.html
[2] https://tomcat.apache.org/security-9.html
[3] https://tomcat.apache.org/security-8.html

