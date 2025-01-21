Received: (qmail 22488 invoked by uid 550); 21 Jan 2025 20:44:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28042 invoked from network); 21 Jan 2025 20:38:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Viraj Jasani <vjasani@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a7a9dd27-ee19-88ac-5cd1-6a629c1e100e@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 21 Jan 2025 20:36:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-51941: Apache Ambari: Remote Code Injection in Ambari
 Metrics and AMS Alerts 

Severity: important

Affected versions:

- Apache Ambari through 2.7.8

Description:

A remote code injection vulnerability exists in the Ambari Metrics and 
AMS Alerts feature, allowing authenticated users to inject and execute 
arbitrary code. The vulnerability occurs when processing alert 
definitions, where malicious input can be injected into the alert script
 execution path. An attacker with authenticated access can exploit this 
vulnerability to execute arbitrary commands on the server. The issue has
 been fixed in the latest versions of Ambari.

This issue is being tracked as AMBARI-26202 

Credit:

4ra1n (https://github.com/4ra1n) (finder)
h4cking2thegate@gmail.com (reporter)

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-51941
https://issues.apache.org/jira/browse/AMBARI-26202

