Received: (qmail 27971 invoked by uid 550); 9 Apr 2026 21:16:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24198 invoked from network); 9 Apr 2026 19:49:29 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764158; bh=M5JAYPDaLVOiyi6NqTBl96Fwr4G4O3Yi0oH/vQZAFbg=;
	h=Date:To:From:Subject:From;
	b=CkTRGOeczw8ALpjzg2bpVYFHA3z0MP3mYE22u1kDk0ZWP8pX+3a1e8qJLbUOAmlBW
	 YiH1BcDsEcLVFGZkpxBWNCLqNXQ1Ab3IQohvJuI9+E/sITfADTNpMEvLdqA5Mx9M0u
	 ejwS258Ki6Aw2EuHr+127MA+zR354TlC2o9yP55QzK4086kQHr0heXX5egGDbKjw3s
	 54CrkeIajrVhaD2yEa277KfUupjsCyc2F2BhMdt9+KIY5bEnIL55nWpW/7dFb9GR3i
	 ViDMGraVGKxPxkw48wS9gCAv1024jBCCJcdyGtder6gp8jgUj8zLCCAsaHYadW3Aqv
	 tFox7Ggkv0JnA==
Message-ID: <95b627e0-f5b5-48e7-8625-c3a9bf32b6b1@apache.org>
Date: Thu, 9 Apr 2026 20:49:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-29146: Apache Tomcat: EncryptInterceptor vulnerable to
 padding oracle attack by default

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.18
- Apache Tomcat 10.0.0-M1 through 10.1.52
- Apache Tomcat 9.0.13 through 9.0.115
- Apache Tomcat 8.5.38 through 8.5.100
- Apache Tomcat 7.0.100 through 7.0.109

Description:

Padding Oracle vulnerability in Apache Tomcat's EncryptInterceptor with 
default configuration.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.18, from 
10.0.0-M1 through 10.1.52, from 9.0.13 through 9..115, from 8.5.38 
through 8.5.100, from 7.0.100 through 7.0.109.

Users are recommended to upgrade to version 11.0.19, 10.1.53 and 
9.0.116, which fixes the issue.

Credit:

Uri Katz and Avi Lumelsky (Oligo Security) (finder)

References:

https://lists.apache.org/thread/lzt04z2pb3dc5tk85obn80xygw3z1p0w
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-29146
