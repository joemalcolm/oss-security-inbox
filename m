Received: (qmail 30476 invoked by uid 550); 11 Jun 2025 18:17:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30440 invoked from network); 11 Jun 2025 18:17:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1749665854;
	bh=wGKSPuqABmcz+DOW9PiGCTx368lVsnYdJ6r8hK5bnZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=XmqJeS1OqfsC+AhItZDv3guh7LTizSsHLH/In6ilYp09tFp1qIpQwTBP+c+wUazp7
	 WaoIrPqRe1dkFWNoFw0EN8wxG+g0oW6k8O4q3J1/2SIx7av1BcC1/m4MWguDX3yrIP
	 zNPmPQ9XkTuuzC0u2r8xbrjHvltU7vfP/PjmsMph9nurADWcrOgyL74BXigX+LRsZP
	 XhbH1/pj9LXUtQTmn46BFjeK40I2269a/XZ7BC8H8V1ic6KSODmDXKvgoPevwyIvYu
	 fvx3vvvNKACnHoolKuIovxpcL+lpG0Um3zXumd3ghGEcyqdZc7+t7YnIsdK4VzDdS6
	 Lf9l5uyhr6yGA==
Message-ID: <bf412e0f-7455-4669-addc-b9f87b012f94@canonical.com>
Date: Wed, 11 Jun 2025 14:17:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>
References: <20250603025919.GA11183@openwall.com>
 <b379213c-55d1-4564-90aa-591edf3097c7@gmail.com>
 <20250606030239.GA897@openwall.com>
 <7d8815b7-a417-4407-87a3-fb0dc7c4f81f@gmail.com>
 <9b5117a0-6220-43da-b377-6ec28220b576@canonical.com>
 <aEm-fINS0Wyn2GXH@remnant.pseudorandom.co.uk>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Content-Language: fr, en-CA, en-US
Autocrypt: addr=marc.deslauriers@canonical.com; keydata=
 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
 8Dn5ROoNmabo
In-Reply-To: <aEm-fINS0Wyn2GXH@remnant.pseudorandom.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros

On 2025-06-11 13:35, Simon McVittie wrote:
> On Wed, 11 Jun 2025 at 12:14:36 -0400, Marc Deslauriers wrote:
>> On 2025-06-06 09:40, Attila Szasz wrote:
>>> I didn't make this explicit in the video, but this works when
>>> running as a non-sudoer user, and also on Ubuntu Server. I think
>>> Canonical Product Security might have better estimates on this, but
>>> I'm guessing many of the corporate, gov, academic, HPC cluster, etc
>>> use cases are impacted practically in such a setting.
>>
>> This isn't supposed to work for non-privileged users, and not on servers. We 
>> allow mounting usb drives for admin users sitting at the console by shipping a 
>> package called "policykit-desktop-privileges" which contains the following 
>> polkit rule:
>>
>> [Mounting, checking, etc. of internal drives]
>> Identity=unix-group:admin;unix-group:sudo
>> Action=org.freedesktop.udisks2.filesystem-mount-system;org.freedesktop.udisks2.e
>> ncrypted-unlock-system;org.freedesktop.udisks2.filesystem-fstab;
>> ResultActive=yes
> 
> I don't think that stanza is relevant here, because it's about "system" or 
> "internal" disks. udisks2 has a concept of whether a disk is "system" or not: 
> see the source code for full details, but a short version is that internal HDDs/ 
> SSDs are "system" and USB thumb drives are not, possibly modulo some corner 
> cases like running your OS from a USB thumb drive.

Oh, yes, you are totally right. I always thought mounting usb drives was an 
Ubuntu-specific setting, but now that I look at udisks, the default for 
"org.freedesktop.udisks2.filesystem-mount" is in fact 
<allow_active>yes</allow_active>.

Marc.
