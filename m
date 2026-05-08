Received: (qmail 32448 invoked by uid 550); 9 May 2026 04:22:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13583 invoked from network); 8 May 2026 12:11:28 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1778242232; bh=p0C1uEShiLwp0DcLUzUk1aFTEWyXYjXDZFnfQG18j8o=;
	h=Date:To:From:Reply-To:Subject:From;
	b=l2rHwm6hQrtUja7n4JYg+jMASRsEy1GGMS+xBMkQ3FuU1WApL/br5Q8QydMwkZq5K
	 0bKzCWrJTS76BPhb1szUSoQl9kymRkmRYDLjOtPVdcP8YlLjUutL6pUQ3w3CRoryIL
	 /aWyYdthvT7xXRNqdwWBiL+QIrY8rCTJMLwlIVsbXEVlET2bzCBGn+YS60Fq/wMjXF
	 B8rfibEwT9WqgF812wGuRo7zZvjss+Fn0Uj8XlBJS0IDRkY++AySm2H2bYzJVGi9Pp
	 eZuVNIEGR5MHR90ioJp3S1ntUxtcGxvvikeM2MQYxMqnLB24NpFiJmwdE0sr8xDjA0
	 Ke2y4wwPTX+6A==
Message-ID: <3316efb8-7087-4730-b42b-5a1e9de09128@apache.org>
Date: Fri, 8 May 2026 14:10:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: "Piotr P. Karwasz" <pkarwasz@apache.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-66171: Apache CloudStack: Any user can create a new VM from
 backups they should not have access to

Severity: important

Affected versions:

- Apache CloudStack 4.21.0.0 through 4.22.0.0

Description:

The CloudStack Backup plugin has an improper access logic in versions
4.21.0.0 and 4.22.0.0. Anyone with authenticated user-account access in
CloudStack 4.21.0.0+ environments, where this plugin is enabled and have
access to specific APIs can create new VMs using backups of any other
user of the environment.

Backup plugin users using CloudStack 4.21.0.0+ are recommended to
upgrade to CloudStack version 4.22.0.1, which fixes this issue.

Credit:

Fabricio Duarte <fabricio.duarte.jr@gmail.com> (reporter)
Gabriel Ortiga Fernandes <gabriel.ortiga@hotmail.com> (reporter)
Gabriel Pordeus Santos <gabrielpordeus@gmail.com> (reporter)

References:

https://lists.apache.org/thread/n8mt5b7wkpysstb8w7rr9f02kc5cq2xm
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-66171

