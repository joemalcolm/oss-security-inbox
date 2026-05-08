Received: (qmail 9464 invoked by uid 550); 9 May 2026 04:23:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10050 invoked from network); 8 May 2026 12:23:19 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1778242872; bh=BQRpOOyeaTe+WuXSpFARH9cU4Fa8FNKp0gd69H2jEXA=;
	h=Date:To:From:Reply-To:Subject:From;
	b=djUDxnOxangxG+oLV4Ps51F7Om5UuVHhj0WH1hlbBz42dU9ym9bJCOivXO9DgwslA
	 BcYpJHH54ItEy7V8DH8VauTV5OiZgCDNJywWa3YDhNFPWW5Bk5GFDj8JEI8bFJg5rs
	 tXKEioeGp4nvi8fstVZ0neaWrDVCuXnMpslws+wKf/kzE6Kw4bo+VGzgUWHe8imegd
	 OqVOb603woIFkRghZsOunojIkGHaJWpF+/dyVgMFqRWUyNcL6Ug9K4KaI4+AhI3uC3
	 0Mdw0RuxvypsBiKiSx2nVoh0Q/GCxFCuiLWAubN6Tu3muWNJXFoxPCRpL6NzdBTAXG
	 5tyMMrl1bTZGA==
Message-ID: <10c796d8-d900-4d3c-9ae1-d1b838ce8ec2@apache.org>
Date: Fri, 8 May 2026 14:21:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: "Piotr P. Karwasz" <pkarwasz@apache.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-25077: Apache CloudStack: Unauthenticated Command Injection
 in Direct Download Templates

Severity: important

Affected versions:

- Apache CloudStack 4.11.0 through 4.20.2.0
- Apache CloudStack 4.21.0.0 through 4.22.0.0

Description:

Account users are allowed by default to register templates to be
downloaded directly to the primary storage for deploying instances using
the KVM hypervisor. Due to missing file name sanitization, an attacker
can register malicious templates to execute arbitrary code on the KVM
hosts. This can result in the compromise of resource integrity and
confidentiality, data loss, denial of service, and availability of the
KVM-based infrastructure managed by CloudStack.


Users are recommended to upgrade to Apache CloudStack versions 4.20.3.0
or 4.22.0.1, or later, which fixes this issue.

Credit:

Reza at HazardLab (https://hazardlab.ninja) (reporter)

References:

https://lists.apache.org/thread/n8mt5b7wkpysstb8w7rr9f02kc5cq2xm
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-25077

