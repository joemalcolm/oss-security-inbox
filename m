X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2538" "Tuesday" "25" "January" "2022" "17:55:25" "+0000" "Tvrtko Ursulin" "tvrtko.ursulin@linux.intel.com" nil "62" "[oss-security] =?UTF-8?B?TGludXgga2VybmVsOiBTZWN1cml0eSBzZW5zaXRpdmUgYnVnIGluIHRoZSBpOTE1IGtlcm5lbA==?==?UTF-8?B?IGRyaXZlcuKAiyAoQ1ZFLTIwMjItMDMzMCk=?=" nil nil nil "1" nil nil (number mark "U       tvrtko.ursul Jan 25   62/2538  " thread-indent "\"[oss-security] =?UTF-8?B?TGludXg=?= =?UTF-8?B?a2VybmVsOg==?= =?UTF-8?B?U2VjdXJpdHk=?= =?UTF-8?B?c2Vuc2l0aXZl?= =?UTF-8?B?YnVn?= =?UTF-8?B?aW4=?= =?UTF-8?B?dGhl?= =?UTF-8?B?aTkxNQ==?= =?UTF-8?B?a2VybmVs?= =?UTF-8?B?ZHJpdmVy4oCL?= =?UTF-8?B?KENWRS0yMDIyLTAzMzAp?=\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] =?UTF-8?B?TGludXg=?= =?UTF-8?B?a2VybmVsOg==?= =?UTF-8?B?U2VjdXJpdHk=?= =?UTF-8?B?c2Vuc2l0aXZl?= =?UTF-8?B?YnVn?= =?UTF-8?B?aW4=?= =?UTF-8?B?dGhl?= =?UTF-8?B?aTkxNQ==?= =?UTF-8?B?a2VybmVs?= =?UTF-8?B?ZHJpdmVy4oCL?= =?UTF-8?B?KENWRS0yMDIyLTAzMzAp?=" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3127 invoked by uid 550); 25 Jan 2022 18:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1852 invoked from network); 25 Jan 2022 17:55:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1643133345; x=1674669345;
  h=message-id:date:mime-version:to:cc:from:subject:
   content-transfer-encoding;
  bh=seXdpuIVtqE1pPEYljHBaI0XRKqEBaS5uz/VlqPJzTo=;
  b=X48MGDTMfjMWelNWUoaPJ7EW31cf8O8eUl42cb8RRZtXP69u4AdaHWt2
   SwcqF12FomMAu7QrePh6u1YFdDxfJMEDs1wq3REwpM4mHpbiQCrKqchrH
   +vrYOB7fnsOuGBpPtTGBGcCEkxc2icYdSpwjpnCJObaC0qiS3prwUTPKA
   /kzBZH7A2LuLofMdZq/bALdR4uKlMWuW3j72Y+4pkm1kyVjiXPyTX47Hk
   9R8zX+4uSQJMHr+9e12zRpkPg5ZQIYNopmT5fJbXjAJt58oS2jJbenv5F
   w5lementMUJrOspyBv6UiLCSINBVzn+U486vsaLWXsxogKrdrmRjCnlMu
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="270812080"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; 
   d="scan'208";a="270812080"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; 
   d="scan'208";a="477193756"
Message-ID: <7460e2a7-4323-3914-bcd6-1d07c859abe5@linux.intel.com>
Date: Tue, 25 Jan 2022 17:55:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marian Rehak <mrehak@redhat.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] =?UTF-8?Q?Linux_kernel=3a_Security_sensitive_bug_in_the_i915_kernel?=
 =?UTF-8?Q?_driver=e2=80=8b_=28CVE-2022-0330=29?=


[This is a public disclosure of an issue reported 7 days ago to 
linux-distros at openwall. CVE-2022-0330 has been assigned to the 
issue since.]

Hi all,

A missing GPU TLB flush has been discovered in the i915 kernel driver 
which could be exploited by malicious userspace and can manifest in two 
flavours, depending on whether the GPU is running behind an active IOMMU 
(address translation) or not:

1. IOMMU with address translation - malicious userspace can trigger DMAR 
read/write faults getting logged to the kernel log.

2. Without an active IOMMU malicious userspace can gain access (from the 
code executing on the GPU) to random memory pages.

Second case is therefore the serious one.

It is currently not known whether specific memory could be targeted, but 
random memory corruption or data leaks are a known possibility.

Underlying reason for the access to memory not owned is a missing TLB 
flush upon releasing memory which used to back a GPU buffer object back 
to the system.

Flawed assumption was that flushing the TLB at the start of every 
userspace GPU execution is sufficient, given the programming model where 
userspace is expected to declare which graphics virtual memory address 
ranges it will be accessing at the start of every execution. However 
what was not considered is that userspace can legitimately (it is 
allowed in uapi) _not_ declare those accesses.

This allows userspace to continue GPU access to memory, while the kernel 
driver (i915) is unaware of it being in use, and therefore is allowed to 
release the backing store back to the system. Should the system then 
give out those pages back for a different use, the exploit situation can 
arise.

Return of the pages back to the system can either be specifically 
engineered by the malicious software, or can happen innocently via 
system memory pressure.

All Intel integrated and discrete GPUs starting from Gen8 (Broadwell) 
are affected.

Fix has already been developed and consists of explicitly flushing the 
TLBs before releasing memory back to the system for any GPU buffer 
objects which were in use from the GPU.

Note that this will have a varying performance impact depending on the 
specific GPU, GPU workload and overall system workload.

Fix for the issue has been provided to the Linus distributions and Linux 
kernel maintainers and is expected to be merged to top of the tree and 
stable and LTS releases shortly. Fix carries the title of "drm/i915: 
Flush TLBs before releasing backing store".

Kind regards,

Tvrtko
