Received: (qmail 30219 invoked by uid 550); 11 Apr 2024 15:32:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26542 invoked from network); 11 Apr 2024 15:31:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=essensium.com; s=google; t=1712849462; x=1713454262; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CvkBFXPSDIfByVEfYk//w2mvPQTk/a/q8pSwsEakUZ0=;
        b=bPeVLhINRCyYiHCNMHdM43c3G/7oHF2WMeLkmbwAayUrqTCL0dm7N6pR+GFHZnrz04
         LRcPgtbYrReTypeFEKQ5DN4W0TmiaFtjhsnA6EcpUnoi8MjMwGxgtSbi6mX4tChKuMV/
         XmboXhd9bUsvBJTM6skoiRcO0h75io1NYY0llCERI4z0w/ViYGQD+S0YI0/4qVBvVjxT
         kIYPkRMtHQRL9/KC7265F/wNUBBSgieT+kdaltyvPvr5STA+zfaRj/uCcEI4rcX2B/Wt
         fDxOMjPmZXMAiy+RLy52r49w4ZVpxnX24q2qpl4uENdRRLmbCEZryPL5YoaF+oIOkbW2
         feeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712849462; x=1713454262;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CvkBFXPSDIfByVEfYk//w2mvPQTk/a/q8pSwsEakUZ0=;
        b=Np+G9n9GoFyAfvMk5omNidulIXRln7eYNOheVB1n0uAkNGu4yAnVXPX3r4MwiarhaH
         ar7qPFA3CFMijviXEKeI7wMVFlUcioDVPgrIbsmLLRqnGjVjOlq7UwgOmhTs6ukv9Zxk
         0NmfpOp1/6LrEiczeqKgWcRNo/ZDqJdeR57Viqw+uwNJD48WpQhoEjsBlaPEmQF7BH0J
         5iEQE8oWPYA6QNR8jUDoLMG9+KkqoEEyaThyd9F71WpI0UuX3EVePxU1Z+F+Ekyv7iJn
         O8OSIRyU7g4P5fIJf4r17um0o5PWp9F2qFDICjf4FfPUrzXEMNtravYkf043wfiHWymZ
         zBCw==
X-Gm-Message-State: AOJu0Ywz3vnb09AfaC5kHNdeDLR07SGeKdUue8Xv6Dzj9Lha0LCndQCt
	9hdJ8SljXvetPSjTyYrWR2Gr2XkkXWTEVz1y1xKeey0HrM7sdHERG3XvVLvdv8bJtWuzRbCVndY
	mwhg=
X-Google-Smtp-Source: AGHT+IHuHSYGEfSdVlKqicQjFf0g1C+hpXzpgrXHAaKJrOYhDS7U2kNw91AIza7J9zgsg8A4fD6wRQ==
X-Received: by 2002:a05:600c:4f07:b0:414:726:87d9 with SMTP id l7-20020a05600c4f0700b00414072687d9mr117656wmq.12.1712849462176;
        Thu, 11 Apr 2024 08:31:02 -0700 (PDT)
Date: Thu, 11 Apr 2024 17:31:00 +0200
From: Ben Hutchings <ben.hutchings@essensium.com>
To: oss-security@lists.openwall.com
Cc: buildroot@buildroot.org
Message-ID: <ZhgCNMQXfxPXuqvs@cephalopod>
References: <20240411152016.1185109-1-ben.hutchings@mind.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240411152016.1185109-1-ben.hutchings@mind.be>
Subject: [oss-security] Buildroot: incorrect permissons on /dev/shm

Buildroot is a Linux distribution and system builder for embedded
systems.  Starting in Buildroot 2011.08, its default /etc/fstab
included an entry for /dev/shm with incorrect permissons (sticky bit
not set). (CWE-276)

Buildroot 2017.08 removed this entry for systems using systemd, and it
has never been included for systems using OpenRC.  So this only
affects Buildroot-built systems that use sysvinit, and some older
systems that use systemd.

Ben.

On Thu, Apr 11, 2024 at 05:20:16PM +0200, Ben Hutchings wrote:
> /dev/shm is a world-writable directory, like /tmp, and should also
> have the sticky bit set.  Without this, any user can delete and
> replace another user's files in /dev/shm.
> 
> This bug has been present since /dev/shm was added to the skeleton
> /etc/fstab, but appears to have been fixed for systems using systemd
> by commit 76fc9275f14e "system: separate sysv and systemd parts of the
> skeleton" which went into Buildroot 2017.08.
> 
> Signed-off-by: Ben Hutchings <ben.hutchings@mind.be>
> Fixes: 22fde22e35f98f7830c2f8955465532328348cd1
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

-- 
Ben Hutchings · Senior Embedded Software Engineer, Essensium-Mind · mind.be
