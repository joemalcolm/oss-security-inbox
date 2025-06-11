Received: (qmail 1795 invoked by uid 550); 11 Jun 2025 17:36:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1768 invoked from network); 11 Jun 2025 17:36:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2+T/8gzG5WxClzyJuAe6u/D+CmGbSz/Pd6vK+PhJpOQ=; b=NG80qe3xU/NRlVB/jyMUa7J1+f
	hRNEwlAtYLwUZq9nWV6skP3lF0LDy05mWTMU+r/wrsTZn4wPOiqGeoJaMJrbx5tXr8BT4KEakR6Eq
	/xY6tx27n/qtFjseCbVq4vTkukNdEZr35sW20tA35wJ5+ULWdKDPlUD6zNDZCb93t8JpRQVjU91Wb
	IxOua+Zd3dksjgZlV6cqacWUmdkQOthNH7InhKVdtZZke4l67nRnc/hgj0CIvmmtVFRlv+vhXCSaX
	Afi3YKBVJMFeASSyfPXHD7LBOj4sAPBe+fbPDuqOAnuUgun5GmBfWXwxDo4p7zBPOWYl4hSaxqPeT
	OhrMKSGA==;
Date: Wed, 11 Jun 2025 18:35:56 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Cc: Marc Deslauriers <marc.deslauriers@canonical.com>
Message-ID: <aEm-fINS0Wyn2GXH@remnant.pseudorandom.co.uk>
References: <20250603025919.GA11183@openwall.com>
 <b379213c-55d1-4564-90aa-591edf3097c7@gmail.com>
 <20250606030239.GA897@openwall.com>
 <7d8815b7-a417-4407-87a3-fb0dc7c4f81f@gmail.com>
 <9b5117a0-6220-43da-b377-6ec28220b576@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <9b5117a0-6220-43da-b377-6ec28220b576@canonical.com>
X-Debian-User: smcv
Subject: Re: [oss-security] Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros

On Wed, 11 Jun 2025 at 12:14:36 -0400, Marc Deslauriers wrote:
>On 2025-06-06 09:40, Attila Szasz wrote:
>>I didn't make this explicit in the video, but this works when
>>running as a non-sudoer user, and also on Ubuntu Server. I think
>>Canonical Product Security might have better estimates on this, but
>>I'm guessing many of the corporate, gov, academic, HPC cluster, etc
>>use cases are impacted practically in such a setting.
>
>This isn't supposed to work for non-privileged users, and not on 
>servers. We allow mounting usb drives for admin users sitting at the 
>console by shipping a package called "policykit-desktop-privileges" 
>which contains the following polkit rule:
>
>[Mounting, checking, etc. of internal drives]
>Identity=unix-group:admin;unix-group:sudo
>Action=org.freedesktop.udisks2.filesystem-mount-system;org.freedesktop.udisks2.e
>ncrypted-unlock-system;org.freedesktop.udisks2.filesystem-fstab;
>ResultActive=yes

I don't think that stanza is relevant here, because it's about "system" 
or "internal" disks. udisks2 has a concept of whether a disk is "system" 
or not: see the source code for full details, but a short version is 
that internal HDDs/SSDs are "system" and USB thumb drives are not, 
possibly modulo some corner cases like running your OS from a USB thumb 
drive.

The policy for non-"system" disks is different, and more permissive, 
with the expectation that users of a laptop/desktop-class system will 
expect to be able to plug in a USB thumb drive and access its contents. 
By default this policy applies to anyone with an active local session, 
not just admins.

The files in actions/ define actions, and for convenience, also define 
default policies for those actions that are intended to be "usually what 
you want" for three commonly-distinguished classes of session: active local 
sessions, inactive local sessions, and everything else. The files in 
rules.d/ (or localauthority.d/ for old versions of polkit) override 
those default policies according to the requirements of the OS 
integrator or the sysadmin, and can make use of finer-grained inputs.

In this case, /usr/share/polkit-1/actions/org.freedesktop.UDisks2.policy 
defines org.freedesktop.udisks2.filesystem-mount for removable media 
that are physically located in the same "seat" grouping as the user's 
active local session, with a default policy of <allow_active>yes</>. 
Compare with org.freedesktop.udisks2.filesystem-mount-system and 
org.freedesktop.udisks2.filesystem-mount-other-seat in the same file, 
which are considered to be dangerous and by default require 
authentication with a sysadmin's credentials (auth_admin or 
auth_admin_keep). This might vary a bit on older distros but should be 
fairly similar on anything from the last decade.

However, on a server-class or HPC system, I would not normally expect an 
untrusted user to be able to sit at the console and log in to a text or 
GUI session; instead the server would usually be somewhere that the user 
cannot physically access, and they would be logging in remotely via ssh 
or VNC/RFB or something. So their session would not be considered to be 
"active and local", and it is *that* that would usually protect servers 
from those users being allowed to plug in removable media. The polkit 
default policy for remote users would come from <allow_any>, instead of 
<allow_active> or <allow_inactive>, and the default for <allow_any> is 
usually "auth_admin", "auth_admin_keep" or "no" for all but the most benign 
actions.

A second line of defence is that filesystem-mount normally only applies 
to removable devices associated with the same seat as the user's 
session, but remote logins aren't associated with a seat at all, so it's 
impossible to find a device that belongs to the same seat; so even if a 
drive is not considered to be "system", and even if the <allow_any> 
policy is quite permissive, the user would be attempting the 
filesystem-mount-other-seat action, which is more restricted than 
plain filesystem-mount.

udisks2 might also consider some filesystems (the higher-risk ones) to 
be inherently "system" even if they are located on removable media; or 
if it doesn't already do that, it might be reasonable to teach it that 
only an allowlist of known-robust filesystems like FAT are candidates 
for the org.freedesktop.udisks2.filesystem-mount action, with a 
different action that has a more restrictive default policy used for the 
higher-risk filesystems.

I believe there is already code to ensure that filesystems mounted by 
unprivileged users are mounted with options like nosuid and nodev (if 
they support multiple users at all), whereas root-equivalent users 
mounting system drives can probably bypass that restriction.

     smcv
