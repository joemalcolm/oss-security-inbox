Received: (qmail 1777 invoked by uid 550); 9 May 2026 04:22:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28608 invoked from network); 8 May 2026 12:13:47 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1778242380; bh=MRTnKXc6gtOBcRziPdFZ9Mim5r0u1SY/mrG8HOpQN4o=;
	h=Date:To:From:Reply-To:Subject:From;
	b=gUuDK4U/EWNglsRBlpP+ky2ZkVqDJTgzWk4eXT7EG/+YDNLpEHGHv0uokhw+4FxUw
	 mOApjPuNleQqLwRyCuRNklVbxsvdFnknDiU2yrdH9TQIQhPGMZ9oP2YHihSEd66kiP
	 kpIx3cdoukQexlqE4AglNAd2P9doib+yZmT0GfgaU4uhllovJDO79SOKuCWfHROxgV
	 u67SDACIxzBmVLMhUCiCz7rNKfsctLRWP3gB5cbwa1XWm2PLa0HczsGPhoiV3t55BM
	 nuykuNUs4/b4xQRfEUe/lkXqnmFP8KYYu7yJHv4ua1CL6WK5tPly1bgHccPNRgZh1F
	 yrRHCP3JgKUXw==
Message-ID: <1632823e-effb-4c86-adc7-8734ffc2ea07@apache.org>
Date: Fri, 8 May 2026 14:12:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: "Piotr P. Karwasz" <pkarwasz@apache.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-66172: Apache CloudStack: Any user can attach a volume in
 their VMs from backups they should not have access to

Severity: important

Affected versions:

- Apache CloudStack 4.21.0.0 through 4.22.0.0

Description:

The CloudStack Backup plugin has an improper access logic in versions
4.21.0.0 and 4.22.0.0. Anyone with authenticated user-account access in
CloudStack 4.21.0.0+ environments, where this plugin is enabled and have
access to specific APIs can restore a volume from any other user's
backups and attach the volume to their own VMs.

Backup plugin users using CloudStack 4.21.0.0+ are recommended to
upgrade to CloudStack version 4.22.0.1, which fixes this issue.

Credit:

Gabriel Pordeus (reporter)

References:

https://lists.apache.org/thread/n8mt5b7wkpysstb8w7rr9f02kc5cq2xm
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-66172

