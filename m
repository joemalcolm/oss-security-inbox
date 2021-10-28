X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1536" "Thursday" "28" "October" "2021" "05:58:05" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "46" "Re: [oss-security] Linux kernel: powerpc: KVM guest can trigger host crash on Power8" nil nil nil "10" nil nil (number mark "U       carnil@debia Oct 28   46/1536  " thread-indent "\"Re: [oss-security] Linux kernel: powerpc: KVM guest can trigger host crash on Power8\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: powerpc: KVM guest can trigger host crash on Power8" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17952 invoked by uid 550); 28 Oct 2021 03:58:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17934 invoked from network); 28 Oct 2021 03:58:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Rd6zCtdbs2Rh9eLyPdLWC7QfjiBZneX2Pqf4p8XquB4=;
        b=a1iu/fP5TzuYTFr++xaSjuv7mLYIpvIUVBZDRjlHZlOzxUsN707HqC5FDhk0OodcZE
         F/XsII69uyg7tO3/kalMXCbRv0TbJpKo0YseDHSn1yZn62m5fZJjFJBX5RnlOCqMquJf
         07q3e1Ypq8n6CuqFgQdhMRa30oYO1W75wiOGTkE/rLiHoSPngE17V6JkWgXhnpMnRUZd
         +HQiKDKUo580k8iqy4jh7UyfS7qglWurwDFz6MT4sS6k7YgZMjQOhcsIodiiZYhka1zn
         z48AeHxhtIJLm5JBln9aZclXOeaEVaOD3juzI/xEjUANJcFrUITHbMaUk29JDHkHT5hx
         f3sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=Rd6zCtdbs2Rh9eLyPdLWC7QfjiBZneX2Pqf4p8XquB4=;
        b=VT0nnKwEWh5AB1cUuuSC664pj5PFmyX3Z99q8D4EzHWLwvuArk6wwAI3p7kY7gnZuv
         w2mtM8Ay2fvQ+BjPtRWOWRkAH6OP/rZ5LnRM4a94eczcrROKW2czT54DDt19T2Cd5RoK
         oZmA3kpd0HE/JQ7asMeUgQE9DHeBOyTvBvCKyEpv0tdU2r3bNAUocAF9MLcIKn3mlxVG
         7UPhoWLxKtPNqtqes5PkWrU4uVqE7XIkRNQXps8fMxN8DAJgPO4RE7LTXGqBt6xG0yW7
         fTqZ4KXHoPhbDgTFVVwQrLIm3vayg94aLcpxZ4GGmoidXwhGpjjgQ/nh/JLo3Rw9cAPF
         6+bA==
X-Gm-Message-State: AOAM533ssJAgcPTB7rb6fUL4/B1V0FvpwMRpPqx4zyaevkpAtNMUNilp
	8Nnzw0+VYqW5HluuKVmwJucdN+Q48JsINg==
X-Google-Smtp-Source: ABdhPJws+hi+VGk4x9F3GsElqwOzk1Tf9/PmXVzVvbGPqLyjMn0UCHa/LfOj0e4muFxGG+LIRvWXzw==
X-Received: by 2002:a2e:a78e:: with SMTP id c14mr2101680ljf.208.1635393487069;
        Wed, 27 Oct 2021 20:58:07 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 28 Oct 2021 05:58:05 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: oss-security@lists.openwall.com, linuxppc-dev@lists.ozlabs.org,
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>
Message-ID: <YXofzUCGm3N7lfNf@elende.valinor.li>
References: <87pmrtbbdt.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87pmrtbbdt.fsf@mpe.ellerman.id.au>
Subject: Re: [oss-security] Linux kernel: powerpc: KVM guest can trigger host
 crash on Power8

Hi,

On Mon, Oct 25, 2021 at 10:18:54PM +1100, Michael Ellerman wrote:
> The Linux kernel for powerpc since v5.2 has a bug which allows a
> malicious KVM guest to crash the host, when the host is running on
> Power8.
> 
> Only machines using Linux as the hypervisor, aka. KVM, powernv or bare
> metal, are affected by the bug. Machines running PowerVM are not
> affected.
> 
> The bug was introduced in:
> 
>     10d91611f426 ("powerpc/64s: Reimplement book3s idle code in C")
> 
> Which was first released in v5.2.
> 
> The upstream fix is:
> 
>   cdeb5d7d890e ("KVM: PPC: Book3S HV: Make idle_kvm_start_guest() return 0 if it went to guest")
>   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cdeb5d7d890e14f3b70e8087e745c4a6a7d9f337
> 
> Which will be included in the v5.16 release.
> 
> Note to backporters, the following commits are required:
> 
>   73287caa9210ded6066833195f4335f7f688a46b
>   ("powerpc64/idle: Fix SP offsets when saving GPRs")
> 
>   9b4416c5095c20e110c82ae602c254099b83b72f
>   ("KVM: PPC: Book3S HV: Fix stack handling in idle_kvm_start_guest()")
> 
>   cdeb5d7d890e14f3b70e8087e745c4a6a7d9f337
>   ("KVM: PPC: Book3S HV: Make idle_kvm_start_guest() return 0 if it went to guest")
> 
>   496c5fe25c377ddb7815c4ce8ecfb676f051e9b6
>   ("powerpc/idle: Don't corrupt back chain when going idle")
> 
> 
> I have a test case to trigger the bug, which I can share privately with
> anyone who would like to test the fix.

The issue has been assigned CVE-2021-43056.

Regards,
Salvatore
