Received: (qmail 3937 invoked by uid 550); 9 May 2026 04:22:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27856 invoked from network); 8 May 2026 12:16:44 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1778242546; bh=q9ML7cUeujB/9Rz5dUWB43J+e9u5EI50pCXEE4U3dMw=;
	h=Date:To:From:Reply-To:Subject:From;
	b=p2TRfBcDcsmGLVXdvx4MR1Me59uLDbe1zOm3oiaRt0LSVZvh4SRKhDecKJCeDVGge
	 +HnWs4UttXEZKFhz9m7yZkMSztXMOwTOS7iz6pfOaY7C6DMhcbcs024dhXObKlY7Rx
	 8iaQkcSePCPcMSxM/AyA3BAJHDa7W0h58bx+WxxXQWuAa/msbSGxq+1DiOY7ft+EJ5
	 Zb4/9UEkgnbQdZciVj9DaNRB+CY5X8eFTIyEfs9+OZukbk8uf4ydDT6fupw+7PBW5U
	 Z2shWw8vBHuITPI5ucZOq8IPakUt+FVFqVfVZNbj18NEKxM3BexsiSOs53M1i6RgHx
	 jj5YkyEwbGgPQ==
Message-ID: <81d1ff17-4bcb-41db-8bfc-ed9e125b166b@apache.org>
Date: Fri, 8 May 2026 14:15:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: "Piotr P. Karwasz" <pkarwasz@apache.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-66467: Apache CloudStack: MinIO policy remains intact on
 bucket deletion

Severity: important

Affected versions:

- Apache CloudStack 4.19.0.0 through 4.20.2.0
- Apache CloudStack 4.21.0.0 through 4.22.0.0

Description:

Missing MinIO policy cleanup on bucket deletion via Apache CloudStack
allows users to retain access to buckets which they previously owned. If
another user creates a new bucket with the same name, the previous
owners can gain unauthorized read and write access to it by using the
previously generated access and secret keys.

Users are recommended to upgrade to Apache CloudStack versions 4.20.3.0
or 4.22.0.1, or later, which fixes this issue.

Credit:

Roman Kozello <roman.kozello@gmail.com> (reporter)

References:

https://lists.apache.org/thread/n8mt5b7wkpysstb8w7rr9f02kc5cq2xm
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-66467

