Received: (qmail 30430 invoked by uid 550); 16 Jun 2025 17:14:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9415 invoked from network); 16 Jun 2025 14:22:35 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <d9c2da30-f6e2-40d9-af0d-213320d83908@apache.org>
Date: Mon, 16 Jun 2025 15:14:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-48988: Apache Tomcat: FileUpload large number of parts with
 headers DoS

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.7
- Apache Tomcat 10.1.0-M1 through 10.1.41
- Apache Tomcat 9.0.0.M1 through 9.0.105

Description:

Allocation of Resources Without Limits or Throttling vulnerability in 
Apache Tomcat.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.7, from 
10.1.0-M1 through 10.1.41, from 9.0.0.M1 through 9.0.105.

Users are recommended to upgrade to version 11.0.8, 10.1.42 or 9.0.106, 
which fix the issue.

Credit:

TERASOLUNA Framework Security Team of NTT DATA Group Corporation (finder)

References:

https://lists.apache.org/thread/nzkqsok8t42qofgqfmck536mtyzygp18
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-48988
