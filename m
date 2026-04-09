Received: (qmail 28617 invoked by uid 550); 9 Apr 2026 21:16:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30308 invoked from network); 9 Apr 2026 19:52:34 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764307; bh=bgIwKsnqP2YocJuBXrbkMA2HTnpqfcbkQFt+kDhG0Tc=;
	h=Date:To:From:Subject:From;
	b=aRT6tCip0udxxjT5bhyTmN9LUPg0cd6iBNPGt6y9uHJfXhXh2SQSBTlW5BbqAwV00
	 e4VEQke6+utLJEUxqGWl3DtlOIGns1xCZZxDsiXaBj/Mjo50wTbrJmlusf09adhDaV
	 anfki7TWUcsFvRZ5I/B5/gAnhSGKrptZlaohU3xmlmMSH1/Buu8F665jGgxhHRsEf/
	 KVXYmkKRUWrk96P9mA9e54dpT4h4hlGpAZi6q99xIukYKODceEVNMGz9MXDnI0MvUm
	 0HX/ntWzhfq+6yWHPnlDqxH9WwRyN33mREFZDYyLEn1O6rMOHx5weU7ZI/s5skWjvG
	 APWCOF+FRHbRA==
Message-ID: <8e7713ec-f187-41f5-ac8c-bec8142d702a@apache.org>
Date: Thu, 9 Apr 2026 20:51:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-34500: Apache Tomcat: OCSP checks sometimes soft-fail with
 FFM even when soft-fail is disabled

Severity: moderate

Affected versions:

- Apache Tomcat 11.0.0-M14 through 11.0.20
- Apache Tomcat 10.1.22 through 10.1.53
- Apache Tomcat 9.0.92 through 9.0.116

Description:

CLIENT_CERT authentication does not fail as expected for some scenarios 
when soft fail is disabled and FFM is used in Apache Tomcat.

This issue affects Apache Tomcat: from 11.0.0-M14 through 11.0.20, from 
10.1.22 through 10.1.53, from 9.0.92 through 9.0.116.

Users are recommended to upgrade to version 11.0.21, 10.1.54 or 9.0.117, 
which fixes the issue.

Credit:

Haruki Oyama (Waseda University) (finder)

References:

https://lists.apache.org/thread/7rcl4zdxryc8hy3htyfyxkbqpxjtfdl2
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34500
