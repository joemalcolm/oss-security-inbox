Received: (qmail 1300 invoked by uid 550); 13 Mar 2024 15:54:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26148 invoked from network); 13 Mar 2024 15:45:09 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <88e2c5d1-f6fc-463b-ac5e-da6322bb29e3@apache.org>
Date: Wed, 13 Mar 2024 15:47:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-24549: Apache Tomcat: HTTP/2 header handling DoS

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.0-M16
- Apache Tomcat 10.1.0-M1 through 10.1.18
- Apache Tomcat 9.0.0-M1 through 9.0.85
- Apache Tomcat 8.5.0 through 8.5.98

Description:

Denial of Service due to improper input validation vulnerability for 
HTTP/2 requests in Apache Tomcat. When processing an HTTP/2 request, if 
the request exceeded any of the configured limits for headers, the 
associated HTTP/2 stream was not reset until after all of the headers 
had been processed.This issue affects Apache Tomcat: from 11.0.0-M1 
through 11.0.0-M16, from 10.1.0-M1 through 10.1.18, from 9.0.0-M1 
through 9.0.85, from 8.5.0 through 8.5.98.

Users are recommended to upgrade to version 11.0.0-M17, 10.1.19, 9.0.86 
or 8.5.99 which fix the issue.

Credit:

Bartek Nowotarski (finder)

References:

https://lists.apache.org/thread/4c50rmomhbbsdgfjsgwlb51xdwfjdcvg
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-24549
