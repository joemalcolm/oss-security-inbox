X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5159" "Sunday" "30" "January" "2022" "08:45:41" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "113" "Re: [oss-security] Linux kernel: use-after-free of user namespace on shm and mqueue destruction" nil nil nil "1" nil nil (number mark "U       carnil@debia Jan 30  113/5159  " thread-indent "\"Re: [oss-security] Linux kernel: use-after-free of user namespace on shm and mqueue destruction\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: use-after-free of user namespace on shm and mqueue destruction" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7954 invoked by uid 550); 30 Jan 2022 07:45:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7936 invoked from network); 30 Jan 2022 07:45:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=OQ8zZ8RYKmcN4qP8HEJJ4WVmgcLVloO6L8MOF5hplpU=;
        b=l1/XiS/5Pg+lwZ2TOm7cu+nW6OoVoN6BtDNEKWcFz8oVlT4BhEumHTtlefExLkMyGx
         JWZ9F6cb3oNAMk0OdrejbuBTDyNbnALExAXMRnRlFpiI6+3bhgmDTfaFQ73y01kaWfaK
         2uBGtH5+2nku0h/Xz23nTZxmjSyT9D0JlwIrS1P4g1Yb/W7n6yPcjlw/U19kpTiAeaf0
         dJ+4iiWNpOfjkAUorrXylognHMGyU6MeeneFIoFIcr3kCqzHv3/NRLoXYy49uxqIOSOx
         Tr1SfJuTAepTK4ow+SNmwm7LyEJ8yCMIFGV2aq96RSEI2K8Qra36qwopbwNObP2YG7ou
         jidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=OQ8zZ8RYKmcN4qP8HEJJ4WVmgcLVloO6L8MOF5hplpU=;
        b=JmG/vN62qgxrCzbQQkz+cY3MMJmSl61rwK1l8EfMm7wbxZid++NQk2mgAbLUzZjDlU
         Nt8oB+8nZ7R93jagkQHg9dhQfn9K/ESfpwoV/kQ9b7UGxTCyMzMqporHNhMP9fKUpfWI
         lvJXUZU0u0mOkcBBhEypEh58NqKj5pD+Sa6qCVHE59YDmU6z0qpOQ/4wTtmg49hlg6eu
         iJlIZwhgNZZOxXu+Qv6OzujwgjqpoWQnMEkPUf/KNtZ8MRria8RZuvPVXUFlNTQYGcw2
         bG3HZrLv61MB2jjv/HnPdDIiXuwuGIKyutSzMcqb3edam/WvXlkSr1b8fjlaYVDt7kN8
         28TQ==
X-Gm-Message-State: AOAM533V7JBmdFI4PxDJsbRbBQUdzSGglMq1Ds3VhuAgjWV/ewmC1k1O
	YmEggDkWGzYvf8FAgwa5AudLvtDQQE4U+A==
X-Google-Smtp-Source: ABdhPJzQOkqEIAQyNyFVdCJ3jcXIoDUTNcnZFNOeMX3Pz6/TZ2jcmeUfsdVZkuohqGe9Dl16Dqu0rA==
X-Received: by 2002:adf:f54d:: with SMTP id j13mr12531618wrp.596.1643528743448;
        Sat, 29 Jan 2022 23:45:43 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 30 Jan 2022 08:45:41 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YfZCJfYIUicYi+ba@eldamar.lan>
References: <69014e75-e96d-6200-a9d3-13248d35d864@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <69014e75-e96d-6200-a9d3-13248d35d864@grsecurity.net>
Subject: Re: [oss-security] Linux kernel: use-after-free of user namespace on
 shm and mqueue destruction

Hi,

On Sat, Jan 29, 2022 at 08:07:27PM +0100, Mathias Krause wrote:
> Hi!
> 
> A use-after-free vulnerability was found in the way certain rlimit
> conversions to 'ucounts' were done, affecting kernels containing merge
> commit c54b245d0118 ("Merge branch 'for-linus' of
> git://git.kernel.org/pub/scm/linux/kernel/git/ebiederm/user-namespace")
> which is Linux v5.14 and newer.
> 
> The underlying issue was already noticed last year in a KASAN report[1]
> in the mqueue code but could only be recently root-caused with the help
> of our report and reproducer.
> 
> The fix was merged yesterday into Linux mainline:
> https://git.kernel.org/linus/f9d87929d451d3e649699d0f1d74f71f77ad38f5
> 
> However, in our opinion neither the commit itself nor its merge commit
> (https://git.kernel.org/linus/76fcbc9c7c57a5d4) clearly expresses the
> impact of the vulnerability.
> 
> See below for some background information about 'ucounts' and our
> analysis of the issue that we previously shared in a similar form with
> security@kernel.org on January 21st:
> 
> The 'ucounts' scheme "bubbles up" limit changes to the uppermost user
> namespace by attaching and traversing a user namespace to the 'ucounts'
> object. However, that user namespace pointer isn't reference-counted. As
> the lifetime of a 'ucounts' object isn't strictly tied to that of the
> user namespace it was created for, it can outlive the latter, making its
> 'ns' member pointing to free'd memory. Such usages may happen in the shm
> and mqueue code by making use of current_ucounts() and getting a
> reference to it via get_ucounts().
> 
> We noticed the issue during testing and root-caused it to a
> use-after-free of a user namespace object on shm destruction as follows:
> 
> 1/ A process creates a new shm segment.
> 
> 2/ It then forks a child that enters a new user namespace, so it gets
>    its own 'ucounts' (alloc_ucounts() will create a new one via
>    inc_user_namespaces(), as the namespaces differ) that gets attached
>    to the new user namespace.
> 
> 3/ The child process attaches its 'ucounts' to the shm object by a call
>    to semctl(SHM_LOCK), see ipc/shm.c:shmctl_do_lock(), lines 1198 and
>    1203 in particular:
> 
>    1197     if (cmd == SHM_LOCK) {
>    1198         struct ucounts *ucounts = current_ucounts();
>    1199
>    1200         err = shmem_lock(shm_file, 1, ucounts);
>    1201         if (!err && !(shp->shm_perm.mode & SHM_LOCKED)) {
>    1202             shp->shm_perm.mode |= SHM_LOCKED;
>    1203             shp->mlock_ucounts = ucounts;
>    1204         }
>    1205         goto out_unlock0;
>    1206     }
> 
>    shmem_lock() in line 1200 calls user_shm_unlock() which calls
>    get_ucounts() to get a reference to the 'ucounts' object, which
>    allows the ucounts object to outlive its user namespace.
> 
> 4/ The child process terminates, which leads to the destruction of its
>    task_struct, the various cred objects and, in turn, the user
>    namespace, as there's no reference (but pointers!) to it any more.
>    The 'ucounts' object, however, survives, as it still has a live
>    reference from the shmem_lock() done before. But it now has a
>    dangling 'ns' pointer, as the user namespace was destroyed already.
> 
> 5/ The parent process now destroys the shm segment which leads to
>    shm_destroy() calling shmem_lock() with the (still valid) 'ucounts'
>    of the already dead child, leading to ... -> user_shm_unlock() ->
>    dec_rlimit_ucounts() dereferencing a dangling 'ns' pointer when
>    trying to advance 'iter' in line 285:
> 
>    285   for (iter = ucounts; iter; iter = iter->ns->ucounts) {
>    286       long dec = atomic_long_sub_return(v, &iter->ucount[type]);
>    287       WARN_ON_ONCE(dec < 0);
>    288       if (iter == ucounts)
>    289           new = dec;
>    290   }
> 
> We shared a reproducer for the bug including exploitation notes with the
> report to security@kernel.org, but we don't intend to share it any
> further, as the above bug description should allow easy recreation
> thereof anyway.
> 
> Exploiting this issue for privilege escalation requires the availability
> of unprivileged user namespaces. With that granted, a possible way of
> exploitation is by reallocating the memory of the released user
> namespace object of step 4 and by introducing a type confusion bug
> (ensure the user namespace release in step 4 empties the complete slab
> page, get it reallocated, e.g. by some kmalloc slab cache and introduce
> a fake 'user_namespace' object, e.g. via 'msg_msg' object spraying)
> which will allow a decrement operation at an attacker controlled kernel
> address (the '->ucounts' pointer of the crafted 'user_namespace'
> object). The decrement value is under attacker control as well (the size
> of the shm segment, up to RLIMIT_MEMLOCK).
> 
> Beside from patching, a possible mitigation is to disable unprivileged
> user namespaces:
> 
> # sysctl -w kernel.unprivileged_userns_clone=0
> 
> To our knowledge, no CVE has been assigned to this issue so far.

This issue has been assigned CVE-2022-24122 by MITRE via
https://cveform.mitre.org/ .

Regards,
Salvatore
