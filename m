Received: (qmail 4072 invoked by uid 550); 16 Jun 2025 17:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1831 invoked from network); 16 Jun 2025 14:27:52 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <3123d598-6089-42d7-802b-3720ce114ecf@apache.org>
Date: Mon, 16 Jun 2025 15:22:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-49124: Apache Tomcat: exe side-loading via icalcs.exe in
 Tomcat installer for Windows

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.7
- Apache Tomcat 10.1.0 through 10.1.41
- Apache Tomcat 9.0.23 through 9.0.105

Description:

Untrusted Search Path vulnerability in Apache Tomcat installer for 
Windows. During installation, the Tomcat installer for Windows used 
icacls.exe without specifying a full path.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.7, from 
10.1.0 through 10.1.41, from 9.0.23 through 9.0.105.

Users are recommended to upgrade to version 11.0.8, 10.1.42 or 9.0.106, 
which fix the issue.

Credit:

T. Doğa Gelişli https://linkedin.com/in/tdogagelisli/ (finder)

References:

https://lists.apache.org/thread/lnow7tt2j6hb9kcpkggx32ht6o90vqzv
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-49124
