Received: (qmail 28359 invoked by uid 550); 9 Apr 2026 21:16:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30094 invoked from network); 9 Apr 2026 19:52:27 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764244; bh=ZL/yhlp1/VcUt8+rOVw2INNxQlEbWf/VRpUNGGyZJHc=;
	h=Date:To:From:Subject:From;
	b=lMRRgC/IBSlPD68tw2EXxy6gAUPmjklwLNQG7q8TBAnDOeIei/0LX7BaIrVnB+40L
	 bQ+POCzHsVll1qnqAni8FVgaDLBetisFir5llQHR43oY0uKqOOYL/6tvK23CRAkJGH
	 KWSB5hPClj3dIRH2RPBLYgxr+/9v5yLwNIq/KVgrYzGxO+cU1z4aDVBH8sZwHPlO5F
	 hrz3fLBpSeZcKMMqKWQ01WTPZfkcm84vWhgLI8fW0P2VR50o7F2NEUnwuwEvdeiFto
	 NXr90MgtGqQXHnk9BzJQM7ZGuXAX6SGr8Cutx55nJHfUuIpBVyMUOhuQA0eol/3bch
	 HWUx4fcrz1ZeA==
Message-ID: <3b643c68-e595-4101-8b80-a5598cb793ca@apache.org>
Date: Thu, 9 Apr 2026 20:50:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-34486: Apache Tomcat: Fix for CVE-2026-29146 allowed bypass
 of EncryptInterceptor

Severity: important

Affected versions:

- Apache Tomcat 11.0.20
- Apache Tomcat 10.1.53
- Apache Tomcat 9.0.116

Description:

Missing Encryption of Sensitive Data vulnerability in Apache Tomcat due 
to the fix for CVE-2026-29146 allowing the bypass of the EncryptInterceptor.

This issue affects Apache Tomcat: 11.0.20, 10.1.53, 9.0.116.

Users are recommended to upgrade to version 11.0.21, 10.1.54 or 9.0.117, 
which fix the issue.

Credit:

Bartlomiej Dmitruk at striga.ai (finder)

References:

https://lists.apache.org/thread/9510k5p5zdvt9pkkgtyp85mvwxo2qrly
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34486
