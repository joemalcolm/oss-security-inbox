Received: (qmail 20368 invoked by uid 550); 21 Jan 2025 20:44:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32433 invoked from network); 21 Jan 2025 20:32:28 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Viraj Jasani <vjasani@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <37c53343-ceff-134f-17f5-fdee929d4d92@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 21 Jan 2025 20:32:18 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-23195: Apache Ambari: XML External Entity (XXE)
 Vulnerability in Ambari/Oozie 

Severity: moderate

Affected versions:

- Apache Ambari before 2.7.9

Description:

An XML External Entity (XXE) vulnerability exists in the Ambari/Oozie 
project, allowing an attacker to inject malicious XML entities. This 
vulnerability occurs due to insecure parsing of XML input using the 
`DocumentBuilderFactory` class without disabling external entity 
resolution. An attacker can exploit this vulnerability to read arbitrary
 files on the server or perform server-side request forgery (SSRF) 
attacks. The issue has been fixed in both Ambari 2.7.9 and the trunk 
branch.

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-23195

