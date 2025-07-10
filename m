Received: (qmail 23894 invoked by uid 550); 10 Jul 2025 20:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8158 invoked from network); 10 Jul 2025 19:08:04 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <26616a8a-c74b-4262-9c91-4353a50c6d4f@apache.org>
Date: Thu, 10 Jul 2025 20:04:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-52434: Apache Tomcat: APR/Native Connector crash leading to
 DoS

Severity: important

Affected versions:

- Apache Tomcat 9.0.0.M1 through 9.0.106

Description:

Concurrent Execution using Shared Resource with Improper Synchronization 
('Race Condition') vulnerability in Apache Tomcat when using the 
APR/Native connector. This was particularly noticeable with client 
initiated closes of HTTP/2 connections.

This issue affects Apache Tomcat: from 9.0.0.M1 through 9.0.106.

Users are recommended to upgrade to version 9.0.107, which fixes the issue.

Credit:

Nacl (finder)
12SqweR (finder)
WHOAMI (finder)
yyzmoon (finder)

References:

https://lists.apache.org/thread/gxgh65004f25y8519coth6w7vchww030
https://tomcat.apache.org/
