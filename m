Received: (qmail 22054 invoked by uid 550); 21 Jan 2025 20:44:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5261 invoked from network); 21 Jan 2025 20:33:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Viraj Jasani <vjasani@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a7c8e31b-48aa-4e45-a901-b02e5ab8d495@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 21 Jan 2025 20:33:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-23196: Apache Ambari: Code Injection Vulnerability in
 Ambari Alert Definition 

Severity: important

Affected versions:

- Apache Ambari 8 before 2.7.9

Description:

A code injection vulnerability exists in the Ambari Alert Definition 
feature, allowing authenticated users to inject and execute arbitrary 
shell commands. The vulnerability arises when defining alert scripts, 
where the script filename field is executed using `sh -c`. An attacker 
with authenticated access can exploit this vulnerability to inject 
malicious commands, leading to remote code execution on the server. The 
issue has been fixed in the latest versions of Ambari.

Credit:

Liyw979 (reporter)
robinzeng2015 (reporter)
fcgboy (reporter)
wk2025 (reporter)

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-23196

