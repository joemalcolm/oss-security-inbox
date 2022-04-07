Received: (qmail 24427 invoked by uid 550); 7 Apr 2022 09:39:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13374 invoked from network); 7 Apr 2022 09:17:09 -0000
X-F-Verdict: SPFVALID
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tsmtp0001.email;
	s=titan1; t=1649323017;
	bh=iFKWc8sWBiunag/BUj9IFHHrzeTesXnQ0lSUlU3YDKI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:From:To:Cc:Subject:Message-ID;
	b=U5LPNUDuOWOiiKvoJcVvMYfbv3YxO6N63tUWnenvwns7/vazqIUp1gRWkSBBxhjU8
	 IIslLHtFHnyX2v4acaQcNK9Y6bd43EjrarBTRYXiK0OaubwjTh+8tO9YVhoIOO5zfK
	 A5tMJ74jRqJ7fVFNFU+D/skZozzEz4ZOpr2pzoAc=
Message-ID: <4fd4c465-35a5-4ca5-f549-6392ecb10330@sysec.org>
Date: Thu, 7 Apr 2022 17:16:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Solar Designer <solar@openwall.com>, kangel <kangel@zju.edu.cn>
Cc: oss-security@lists.openwall.com, pgn@zju.edu.cn,
 Pedro Sampaio <psampaio@redhat.com>, pbonzini@redhat.com
References: <657e93b4.3cced.18001ce5999.Coremail.kangel@zju.edu.cn>
 <20220407083543.GA16833@openwall.com>
Feedback-ID: :qiuhao@sysec.org:sysec.org:flockmailId
From: Qiuhao Li <qiuhao@sysec.org>
In-Reply-To: <20220407083543.GA16833@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.4 cv=VdbkgXl9 c=1 sm=1 tr=0 ts=624eac09
	a=9zuiwUaE+4GOE7xYIc90Uw==:117 a=9zuiwUaE+4GOE7xYIc90Uw==:17
	a=IkcTkHD0fZMA:10 a=CEWIc4RMnpUA:10 a=XkRKQH6RAAAA:8
	a=xKTUhbey2Rtow4XnkqoA:9 a=QEXdDO2ut3YA:10 a=1gUyE30hU_ULiMxJiLUW:22
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [oss-security] Linux kernel: x86/kvm: null-ptr-deref in
 kvm_dirty_ring_push

On 4/7/22 16:35, Solar Designer wrote:
> Further in the linux-distros thread, this got assigned CVE-2022-1263,
> however is this really a security issue - in other words, is a security
> boundary crossed in triggering the bug?  I think it is not, and if so
> the CVE ID should probably be rejected.  From the PoC:
> 
>> 		res = syscall(__NR_openat, 0xffffffffffffff9cul, "/dev/kvm", 0ul, 0ul);

We sent the report to oss-security as instructed by linux-distro.

As Paolo said, /dev/kvm can be accessed by an unprivileged local user. 
So it's a Dos. It also seems like there is a kernel NPD issue on oss 
before: https://www.openwall.com/lists/oss-security/2022/04/02/5

> 
> In fact, also in the linux-distros thread it was promptly agreed that
> this doesn't need an embargo - perhaps precisely because of no security
> relevance?  If so, that should have been said explicitly, so a CVE ID
> wouldn't be assigned (it was by another person).

We are willing to cooperate with the final decision of the CVE issuer 
and oss-security.

Personally, I agree with Paolo this is not a scary bug. No embargo makes 
it be fixed quickly.

Regards,
   Qiuhao Li

