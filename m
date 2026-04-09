Received: (qmail 28032 invoked by uid 550); 9 Apr 2026 21:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24413 invoked from network); 9 Apr 2026 19:49:53 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764184; bh=iiVvxIeGsSJGfEeTSCtwzcb+rtS4NBt5/Ltx1xsTncg=;
	h=Date:To:From:Subject:From;
	b=57TOsdbF3ttKwf6Br2atC4Oj6vZR2qdcE72uGVUyPFy4NMO6o8PknvwtY18JuxQEq
	 nEzRX9gx7w83RShXOH2H5YR9rNiw4wgrgo8IftpjM0RfkxDABQw9MR95WjktBrWIN6
	 rKWUzag6Nk3avPxtlC3nX9ZhbleLS4Sa32Tq8UkIsVCRTdT/EKPXirHRZYsKq3NlMy
	 lk4MUmCyfX693nGBRTVU4locrkCSbVNwAZk7AwBahv8X+gVCTeRRqgzvVKDfWYao3/
	 U0RoKsoWHzv8hNz7GkjEr11Q9eCmR1oshEqvzFeCXtQcc8JeZYdS4u4rU5PddiK6Nz
	 tyl/xgxonrFmA==
Message-ID: <a266e26f-3129-40dc-8b43-47f4994d7e95@apache.org>
Date: Thu, 9 Apr 2026 20:49:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-32990: Apache Tomcat: Fix for CVE-2025-66614 is incomplete

Severity: moderate

Affected versions:

- Apache Tomcat 11.0.15 through 11.0.19
- Apache Tomcat 10.1.50 through 10.1.52
- Apache Tomcat 9.0.113 through 9.0.115

Description:

Improper Input Validation vulnerability in Apache Tomcat due to an 
incomplete fix of CVE-2025-66614.

This issue affects Apache Tomcat: from 11.0.15 through 11.0.19, from 
10.1.50 through 10.1.52, from 9.0.113 through 9.0.115.

Users are recommended to upgrade to version 11.0.20, 10.1.53 or 9.0.116, 
which fix the issue.

Credit:

zhengg (finder)

References:

https://lists.apache.org/thread/1nl9zqft0ksqlhlkd3j4obyjz1ghoyn7
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-32990
