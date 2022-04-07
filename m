Received: (qmail 8085 invoked by uid 550); 7 Apr 2022 09:00:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5315 invoked from network); 7 Apr 2022 08:53:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649321601;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yckr7PJNIMMthFLMCXzqsWZslbPgX5RLaE3NxKJL8FY=;
	b=C0Z1AXZZ8RLgI9FZw9X4TiS9j7P7k+9WjGqsHYPshnShIpblgsWPobfROGnGr8KRNaMeEy
	ZC5b0zPZ2D3VBCvre5zUzVH3VNKhXkTHqJu3pJEvxdlmbihePBLIgXe1ZfBDbwEmQC1vvL
	qMnYAUYeTJMLpgcyqggKtCRzvd1O4B4=
X-MC-Unique: yxMMZrH2NOydSVnpNTXnvg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=yckr7PJNIMMthFLMCXzqsWZslbPgX5RLaE3NxKJL8FY=;
        b=GrrLV4fPh3GE1f0CdIlPE/mpFHbpus8g2pm9oBaECPkn3HsQ93sejmaOsdtPVcfa6c
         vCIRFYWx9U3D+pHSEdHcvTWqi6ytZHACX5DMVMOCFVBjDJCnlwuIQMJEq+R+XZRJy0Xh
         TI6s+QnXRQJB7/C+QCpu3EjMIJPU4Gz2tMg94HkEb8b6Kt4pLLaBLSE3GxzVmYNOSDPP
         ONvh3+ypQAW1ankGO6+ei5A+40kHY39guCaya2UPGXIIWrIUqFiHQ7kBHeb8CiOu6v/q
         OmQcISYCCKtuGISAXJOslnuz08ExG6gRCDpDLp1NsnvtSUDSa2uBE239IIuqOE2/HjLw
         MhJg==
X-Gm-Message-State: AOAM532WwsH5b09cigw7nWzSKc1UfomhBLVqaHsVfUCMo+cBqomhHXM/
	danMLqgCghukzOE4OlJpvWWU0pQG96F/Ab/M9nUR9kQYiJC+4gRvqn1uef4tS36QLUR82NIthv8
	12YaXY4PTTULwPGL0BDHU2taZw5du
X-Received: by 2002:a17:906:2991:b0:6cd:ac19:ce34 with SMTP id x17-20020a170906299100b006cdac19ce34mr12356628eje.746.1649321599110;
        Thu, 07 Apr 2022 01:53:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwIrxSehfOpO6/GnvU9an2PbYDbmiERfKGYvuiXBvZGkXOyr3bGIi+23aMfR6gjTUEh4hQLEA==
X-Received: by 2002:a17:906:2991:b0:6cd:ac19:ce34 with SMTP id x17-20020a170906299100b006cdac19ce34mr12356615eje.746.1649321598871;
        Thu, 07 Apr 2022 01:53:18 -0700 (PDT)
Message-ID: <6e8a1fe2-b07f-b5b7-0bac-495f70c88e12@redhat.com>
Date: Thu, 7 Apr 2022 10:53:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: Solar Designer <solar@openwall.com>, kangel <kangel@zju.edu.cn>
Cc: oss-security@lists.openwall.com, pgn@zju.edu.cn, qiuhao@sysec.org,
 Pedro Sampaio <psampaio@redhat.com>
References: <657e93b4.3cced.18001ce5999.Coremail.kangel@zju.edu.cn>
 <20220407083543.GA16833@openwall.com>
From: Paolo Bonzini <pbonzini@redhat.com>
In-Reply-To: <20220407083543.GA16833@openwall.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pbonzini@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Linux kernel: x86/kvm: null-ptr-deref in
 kvm_dirty_ring_push

On 4/7/22 10:35, Solar Designer wrote:
> On Thu, Apr 07, 2022 at 10:15:42AM +0800, kangel wrote:
>>      We found a null-ptr-deref in the kvm module which can lead to DoS. This flaw is in kvm_dirty_ring_push in virt/kvm/dirty_ring.c. The linux kernel version is 5.17.0-rc8. We would appreciate a CVE ID if this is a security issue.
> 
> Further in the linux-distros thread, this got assigned CVE-2022-1263,
> however is this really a security issue - in other words, is a security
> boundary crossed in triggering the bug?  I think it is not, and if so
> the CVE ID should probably be rejected.  From the PoC:

Alexander,

indeed it doesn't cross guest-host boundaries.  However, /dev/kvm is 
accessible by unprivileged users, so it should be treated like any other 
unprivileged NULL pointer dereference in Linux.  I do not apply an 
embargo for those bugs, but whether to assign a CVE is not my choice.

(As an aside, this is the third fuzzing bug reported for KVM on 
security@kernel.org and linux-distros, but I think only one of them was 
really security sensitive).

Thanks,

Paolo

>> 		res = syscall(__NR_openat, 0xffffffffffffff9cul, "/dev/kvm", 0ul, 0ul);
> 
> In fact, also in the linux-distros thread it was promptly agreed that
> this doesn't need an embargo - perhaps precisely because of no security
> relevance?  If so, that should have been said explicitly, so a CVE ID
> wouldn't be assigned (it was by another person).

