Received: (qmail 27799 invoked by uid 550); 9 Apr 2026 21:16:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22480 invoked from network); 9 Apr 2026 19:48:54 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764123; bh=mO+eHubCVFbpWwEFVfg9ewpssxzu+twJh/X6tjVtbVA=;
	h=Date:To:From:Subject:From;
	b=y3gULSwaighgWLbDYtu1OvshhdbiNS6SGkZWQK9hFkDpuy4HVEvGzN2p31T5xE6kx
	 gU3M1SQfUhWkB93mfWZUpIuOGxxbLeJPGpbwfJWVzN7aUis2cE2xOEL6u28ZdpWuo0
	 WvaZEZOe6VTqDr7Tb5EvecrjLf0Gjriq9ZnicQqujtMlB8TUuzCtAfYUVocVYQ2kGN
	 M+9tyyUknBTuwR+wFmMMzd+Iy+167oP0WINOHCLPakYz1jcJWT3tZ7ULbGBzcKf6VO
	 bg5F8lwGSeShFUyQFygls/5ctW64nC0sCOCBVj6nuzxCGFdKYg4Hr8ddGc3DaGGf8G
	 w+OYHdfsdW0Og==
Message-ID: <174813c1-f788-4cf3-9876-dba12ab0e056@apache.org>
Date: Thu, 9 Apr 2026 20:48:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-29145: Apache Tomcat, Apache Tomcat Native: OCSP checks
 sometimes soft-fail even when soft-fail is disabled

Severity: moderate

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.18
- Apache Tomcat 10.1.0-M7 through 10.1.52
- Apache Tomcat 9.0.83 through 9.0.115
- Apache Tomcat through 8.5.100 unaffected
- Apache Tomcat Native 1.1.23 through 1.1.34
- Apache Tomcat Native 1.2.0 through 1.2.39
- Apache Tomcat Native 1.3.0 through 1.3.6
- Apache Tomcat Native 2.0.0 through 2.0.13

Description:

CLIENT_CERT authentication does not fail as expected for some scenarios 
when soft fail is disabled vulnerability in Apache Tomcat, Apache Tomcat 
Native.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.18, from 
10.1.0-M7 through 10.1.52, from 9.0.83 through 9.0.115; Apache Tomcat 
Native: from 1.1.23 through 1.1.34, from 1.2.0 through 1.2.39, from 
1.3.0 through 1.3.6, from 2.0.0 through 2.0.13.

Users are recommended to upgrade to version Tomcat Native 1.3.7 or 
2.0.14 and Tomcat 11.0.20, 10.1.53 and 9.0.116, which fix the issue.

Credit:

gregk4sec (https://github.com/gregk4sec) (finder)

References:

https://lists.apache.org/thread/yz5fxmhd2j43wgqykssdo7kltws57jfz
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-29145
