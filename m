Received: (qmail 12179 invoked by uid 550); 12 May 2026 15:54:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7239 invoked from network); 12 May 2026 15:34:58 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1778599616; bh=Xp4w70zF7YstuocKSOvgtRkGz3dlWMvp1JfShG+8cD4=;
	h=Date:To:From:Subject:From;
	b=F26TBsVdWOk94YqkFXiDFeHODSXnRjr/+8k/4we9tmO3VCQq4pVXWdWaorHOLnnyB
	 pt1LOk0+Vpa3+bcAcmtBI9VIGSiIDXsZENH9edfVQVMk1EiIPqlIuo2nllrrIEacgk
	 vg8PDr1CKfAhnyHRpMn2Jz/AqY6mBzlfcF11AkySwmxSye9dwSlFMhPMwEFXxzyMFw
	 hF7uQOZgPqoaD0cfoiFObIPXO1HiK8HnWtzjPCn8nPG6Ltps0p4vIY8kWJnRMbDpj8
	 G+aw3tVdTQbUwEusLu7KDk+W239tcFPj8YORuwQmF5rT2gx7+i3R3NAbM/OyX0jwBU
	 buxYxTYWo3Oug==
Message-ID: <d050a42f-e050-4b55-8d51-20b3d205328b@apache.org>
Date: Tue, 12 May 2026 16:26:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Autocrypt: addr=markt@apache.org; keydata=
 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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-43513: Apache Tomcat: LockOutRealm treats user names as
 case-sensitive

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.21
- Apache Tomcat 10.1.0-M1 through 10.1.54
- Apache Tomcat 9.0.0.M1 through 9.0.117
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109
- Apache Tomcat before 7.00 unknown

Description:

Improper Handling of Case Sensitivity vulnerability in LockOutRealm in 
Apache Tomcat.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.21, from 
10.1.0-M1 through 10.1.54, from 9.0.0.M1 through 9.0.117, from 8.5.0 
through 8.5.100, from 7.0.0 through 7.0.109.
Older unsupported versions may also be affected.

Users are recommended to upgrade to version 11.0.22, 10.1.55 or 9.0.118 
which fix the issue.

References:

https://lists.apache.org/thread/ytjcgldshj73lcnd1sh95od5hrghwogp
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-43513
