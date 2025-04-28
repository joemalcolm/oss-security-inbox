Received: (qmail 14006 invoked by uid 550); 28 Apr 2025 19:40:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30504 invoked from network); 28 Apr 2025 19:19:59 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <663abb59-5876-4f74-a929-8417f5ae8afa@apache.org>
Date: Mon, 28 Apr 2025 20:18:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-31651: Apache Tomcat: Bypass of rules in Rewrite Valve

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.5
- Apache Tomcat 10.1.0-M1 through 10.1.39
- Apache Tomcat 9.0.0.M1 through 9.0.102

Description:

Improper Neutralization of Escape, Meta, or Control Sequences 
vulnerability in Apache Tomcat. For a subset of unlikely rewrite rule 
configurations, it was possible
for a specially crafted request to bypass some rewrite rules. If those
rewrite rules effectively enforced security constraints, those
constraints could be bypassed.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.5, from 
10.1.0-M1 through 10.1.39, from 9.0.0.M1 through 9.0.102.

Users are recommended to upgrade to version [FIXED_VERSION], which fixes 
the issue.

Credit:

COSCO Shipping Lines DIC (finder)

References:

https://lists.apache.org/list.html?announce@tomcat.apache.org
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-31651
