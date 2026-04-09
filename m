Received: (qmail 27672 invoked by uid 550); 9 Apr 2026 21:16:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22187 invoked from network); 9 Apr 2026 19:48:29 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1775764083; bh=KJb6fFkXlFnECY/qDr3nn5S77phZljeOeQ5SFvqMQJg=;
	h=Date:To:From:Subject:From;
	b=H24UoCSLAHJrWOfLZykX743Y/XNB9Bi2P+IvqAkLvuVZiiPQzJRDaoT52KxHlW9KF
	 tyLWv+W3/hNk8ayNrjiomvhM+QPEWj/nrcprSuqTCLo2W7eF0YSMYjNJH55S3R1kyO
	 G13hq2r9iL4frhr0G2wlD6lnvecLzfzzwy1kDOifTicydWwaYHoEjx/EZykeJBCSKC
	 c+rydLOYNVD0RW9rQ8vYeRo6iK4Ha11Lx96VPA3lW1MhEr4/uTeHCIXN/W0BOPTGhT
	 STrelsJnc7C9pEbx8dHtaki+hc+ZpsbRfNUQV7zYwxIdInF2Jhhnp2smTk+eNmzE7J
	 jIXKhcKUVqYwA==
Message-ID: <ee9b3aae-8f6e-4907-b29c-271d7c7cca0f@apache.org>
Date: Thu, 9 Apr 2026 20:48:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-29129: Apache Tomcat: TLS cipher order is not preserved

Severity: low

Affected versions:

- Apache Tomcat 11.0.16 through 11.0.18
- Apache Tomcat 10.1.51 through 10.1.52
- Apache Tomcat 9.0.114 through 9.0.115

Description:

Configured cipher preference order not preserved vulnerability in Apache 
Tomcat.

This issue affects Apache Tomcat: from 11.0.16 through 11.0.18, from 
10.1.51 through 10.1.52, from 9.0.114 through 9.0.115.

Users are recommended to upgrade to version 11.0.20, 10.1.53 or 9.0.116, 
which fix the issue.

References:

https://lists.apache.org/thread/r4h1t6f8xhxsxfm6c2z5cprolsosho3f
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-29129
