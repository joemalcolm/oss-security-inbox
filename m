Received: (qmail 5599 invoked by uid 550); 13 Mar 2024 15:54:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26605 invoked from network); 13 Mar 2024 15:46:19 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <fd6fa70f-c247-467d-8848-a468c5ac2e19@apache.org>
Date: Wed, 13 Mar 2024 15:49:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-23672: Apache Tomcat: WebSocket DoS with incomplete closing
 handshake

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.0-M16
- Apache Tomcat 10.1.0-M1 through 10.1.18
- Apache Tomcat 9.0.0-M1 through 9.0.85
- Apache Tomcat 8.5.0 through 8.5.98

Description:

Denial of Service via incomplete cleanup vulnerability in Apache Tomcat. 
It was possible for WebSocket clients to keep WebSocket connections open 
leading to increased resource consumption.This issue affects Apache 
Tomcat: from 11.0.0-M1 through 11.0.0-M16, from 10.1.0-M1 through 
10.1.18, from 9.0.0-M1 through 9.0.85, from 8.5.0 through 8.5.98.

Users are recommended to upgrade to version 11.0.0-M17, 10.1.19, 9.0.86 
or 8.5.99 which fixes the issue.

References:

https://lists.apache.org/thread/cmpswfx6tj4s7x0nxxosvfqs11lvdx2f
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-23672
