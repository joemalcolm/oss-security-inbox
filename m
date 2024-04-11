Received: (qmail 30246 invoked by uid 550); 11 Apr 2024 18:35:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19559 invoked from network); 11 Apr 2024 18:31:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1712860305;
	bh=Zk6ut21mnKAFLwo/WiWATs2dP2jwliV/O9CeCArGc7Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zbipt+/lihXBF1urbyyNiDZUVuDvSQ+jevMGiiC+I4OwqiDmS9SmGIKq7HLAHpTn4
	 FovF3xphVnuPJAWDOQIELW6Lq7TV5/PUayr8JR96bActLTyAQy8Eeg+K1/Bfr0JPpB
	 ig7ziNpzCPe3re21wI5oUpuDxSJE2+DaZPKUJw3vd02VN9Ay4C5wrFGDyDsfO3ROd/
	 0s7tz5cyAMD9gtfLLW2a6nB/aumZjSxeZ2Mpr/p8V4SnYSUm642LMeusqIZn/QO/bP
	 VVcQqg9/LSVpHjlYFNh/uObMG0Mb9p69XHyjzqZdnWPn/H41GZ2m7XVNfPKA16AErk
	 fXU8mCyFYE1dw==
Date: Thu, 11 Apr 2024 20:31:42 +0200
From: "Yann E. MORIN" <yann.morin.1998@free.fr>
To: Ben Hutchings <ben.hutchings@mind.be>
Cc: buildroot@buildroot.org, oss-security@lists.openwall.com
Message-ID: <ZhgsjkTpLfChnX_U@landeda>
References: <20240411152016.1185109-1-ben.hutchings@mind.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240411152016.1185109-1-ben.hutchings@mind.be>
Subject: [oss-security] Re: [Buildroot] [PATCH] package/skeleton-init-sysv: Set sticky bit
 on /dev/shm

Ben, All,

On 2024-04-11 17:20 +0200, Ben Hutchings via buildroot spake thusly:
> /dev/shm is a world-writable directory, like /tmp, and should also
> have the sticky bit set.  Without this, any user can delete and
> replace another user's files in /dev/shm.

Indeed, good catch!

> This bug has been present since /dev/shm was added to the skeleton
> /etc/fstab, but appears to have been fixed for systems using systemd
> by commit 76fc9275f14e "system: separate sysv and systemd parts of the
> skeleton" which went into Buildroot 2017.08.
> 
> Signed-off-by: Ben Hutchings <ben.hutchings@mind.be>
> Fixes: 22fde22e35f98f7830c2f8955465532328348cd1

Applied to master, thanks.

Regards,
Yann E. MORIN.

> ---
>  package/skeleton-init-sysv/skeleton/etc/fstab | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/package/skeleton-init-sysv/skeleton/etc/fstab b/package/skeleton-init-sysv/skeleton/etc/fstab
> index 169054b74f..06c20fe9d5 100644
> --- a/package/skeleton-init-sysv/skeleton/etc/fstab
> +++ b/package/skeleton-init-sysv/skeleton/etc/fstab
> @@ -2,7 +2,7 @@
>  /dev/root	/		ext2	rw,noauto	0	1
>  proc		/proc		proc	defaults	0	0
>  devpts		/dev/pts	devpts	defaults,gid=5,mode=620,ptmxmode=0666	0	0
> -tmpfs		/dev/shm	tmpfs	mode=0777	0	0
> +tmpfs		/dev/shm	tmpfs	mode=1777	0	0
>  tmpfs		/tmp		tmpfs	mode=1777	0	0
>  tmpfs		/run		tmpfs	mode=0755,nosuid,nodev	0	0
>  sysfs		/sys		sysfs	defaults	0	0
> -- 
> 2.39.2
> 
> _______________________________________________
> buildroot mailing list
> buildroot@buildroot.org
> https://lists.buildroot.org/mailman/listinfo/buildroot

-- 
.-----------------.--------------------.------------------.--------------------.
|  Yann E. MORIN  | Real-Time Embedded | /"\ ASCII RIBBON | Erics' conspiracy: |
| +33 662 376 056 | Software  Designer | \ / CAMPAIGN     |  ___               |
| +33 561 099 427 `------------.-------:  X  AGAINST      |  \e/  There is no  |
| http://ymorin.is-a-geek.org/ | _/*\_ | / \ HTML MAIL    |   v   conspiracy.  |
'------------------------------^-------^------------------^--------------------'
