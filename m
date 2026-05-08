Received: (qmail 11797 invoked by uid 550); 9 May 2026 04:23:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5609 invoked from network); 8 May 2026 12:22:48 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1778242958; bh=jQ2gU9BWGRhAQZa8zAZ969/7+Gzi9nURJy2/Iq0P8hg=;
	h=Date:To:From:Reply-To:Subject:From;
	b=vfUWFEHXgRLBMe3c7DmfhhWsEfPJT+ZmdrImoT8OJYB1UzpMlhn84lxlJpR0Sd+7m
	 b1icfM8C0inPJFuWFiqH22CfXjYbPWMoE7X7CNuu/TetGbFc4SrkvRAgqhjRm3Kyty
	 z5rziQiPo14/VXBGJCh8Gr5ZAs5Q3DDuDcSnWY40sbeEd72808LJsu/BAylPOzK5Za
	 7vCzkJkqICsaQgIn59AyMk2BvWUkSjrWgwh8FF64xnh5IFTu08cI+giJUA8BDwlUTA
	 W5OmPsXP/oQX5r5BNYXlkIzmrBg1dxg1krFhjYVn53n4A3j5xHcnaB42n4SKpupkHL
	 mIk9masUsEOFA==
Message-ID: <59b3a1d7-b7e5-445a-b8e9-45fd55a8f36b@apache.org>
Date: Fri, 8 May 2026 14:22:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: "Piotr P. Karwasz" <pkarwasz@apache.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2026-25199: Apache CloudStack: Proxmox Extension Allows
 Unauthorized Cross-Tenant Instance Access

Severity: moderate

Affected versions:

- Apache CloudStack 4.21.0 through 4.22.0

Description:

Instances deployed via the Proxmox extension allow unauthorized access
to instances belonging to other tenants.




This issue affects Apache CloudStack: from 4.21.0.0 through 4.22.0.0.




The Proxmox extension for CloudStack improperly uses a user-editable
instance setting, proxmox_vmid, to associate CloudStack instances with
Proxmox virtual machines. Because this value is not restricted or
validated against tenant ownership and Proxmox VM IDs are predictable, a
non-privileged attacker can modify the setting to reference a VM
belonging to another account. This allows unauthorized cross-tenant
access and enables full control over the targeted VM, including
starting, stopping, and destroying the virtual machine.




Users are recommended to upgrade to version 4.22.0.1, which fixes this
issue.




As a workaround for the existing installations, editing of the
proxmox_vmid instance detail by users can be prevented by adding this
detail name to the global configuration parameter - user.vm.denied.details.

Credit:

Sander Grendelman <sander.grendelman@axians.com> (reporter)

References:

https://lists.apache.org/thread/n8mt5b7wkpysstb8w7rr9f02kc5cq2xm
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-25199

