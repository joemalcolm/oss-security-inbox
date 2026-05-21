Received: (qmail 9501 invoked by uid 550); 21 May 2026 12:01:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9465 invoked from network); 21 May 2026 12:01:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1779364897; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/yg31MT/Bu7MmXORfD2rUBqqg6J+NdfDjFhFGb2OFCY=;
	b=d14XdnKvuIIfPZ1O+pmCyxvRqI82e7enUAg+pnoUCHNWxKjmVND0frihGVRYjx7W9F5qsT
	WTWAt+rvvcb4UHAL28VqFeDuUdYKmuACDpVGKP1ZxGIxXbL9E/5XflPbx9P7blEIcvFvbR
	aX6rwm5WG1ElLdcUarj+VJoKlnJsdLs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1779364897;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/yg31MT/Bu7MmXORfD2rUBqqg6J+NdfDjFhFGb2OFCY=;
	b=RVBDVaeQemXiGbO2h488oIingTXZL1g8VhFixG+tF/JG81KOKCot4MuwGnbaSUqg5Q+Fs1
	cnLzBwbfPmHU8gBg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1779364892; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/yg31MT/Bu7MmXORfD2rUBqqg6J+NdfDjFhFGb2OFCY=;
	b=P59C/IP4ISJMtyT0C2dZM1DMbHdFVB6r+9ywLy7AAIBYIohWQY6KWNJrDDRcFbC9DKnkSA
	T0Q5+cipx/sfCW5PkOQq016KwaXg0BcIV0BgFBKrq5Cz+SSdz2WMCxbUEKr0cvEck65SvG
	5qeqlgVT3MpRvPTlQ0Jp2KexI+GPbOI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1779364892;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/yg31MT/Bu7MmXORfD2rUBqqg6J+NdfDjFhFGb2OFCY=;
	b=lM95d9186fVtWkm4F+74igl0Y6z1A5KveKQTGLYtkMcjtY+W9zUVPheMLPtiSic5ql0f0l
	puZmoW4RCxUv1vAw==
Date: Thu, 21 May 2026 12:01:31 +0000
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ag70G1Ao2ioT6YQU@suse.de>
References: <87bjebjwkq.fsf@gentoo.org>
 <8733znjrjv.fsf@gentoo.org>
 <2e40f38b-cebb-4fea-a025-5855cb9c98cc@vdwaa.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2e40f38b-cebb-4fea-a025-5855cb9c98cc@vdwaa.nl>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -4.30
Subject: Re: [oss-security] PinTheft Linux LPE

Hi,

CVE-2026-43494 was assigned by the Kernel CNA to the fix in 
commit e174929793195e0cd6a4adb0cad731b39f9019b4.

Ciao, Marcus
On Tue, May 19, 2026 at 09:41:07PM +0200, Jelle van der Waa wrote:
> 
> 
> On 19/05/2026 18:24, Sam James wrote:
> > Sam James <sam@gentoo.org> writes:
> > 
> > > v12-security have shared a new Linux LPE today, PinTheft [0].
> > > 
> > > Quoting their abstract:
> > > > PinTheft is a Linux local privilege escalation exploit for an RDS
> > > > zerocopy double-free that can be turned into a page-cache overwrite
> > > > through io_uring fixed buffers.
> > > > 
> > > > PinTheft was discovered with V12 by Aaron Esau of the V12 security
> > > > team. We duped on this bug with some other teams and a patch is
> > > > available so we are releasing our PoC.
> > > > 
> > > > The bug lived in the RDS zerocopy send
> > > > path. rds_message_zcopy_from_user() pins user pages one at a time. If
> > > > a later page faults, the error path drops the pages it already pinned,
> > > > and later RDS message cleanup drops them again because the scatterlist
> > > > entries and entry count remain live after the zcopy notifier is
> > > > cleared. Each failed zerocopy send can steal one reference from the first page.
> > > > 
> > > > The PoC uses io_uring to make that refcount bug useful. It registers
> > > > an anonymous page as a fixed buffer, giving the page a FOLL_PIN bias
> > > > of 1024 references. It then steals those references with failing RDS
> > > > zerocopy sends, frees the page, reclaims it as page cache for a
> > > > SUID-root binary, and uses the stale io_uring fixed-buffer page
> > > > pointer to overwrite that page cache with a small ELF
> > > > payload. Executing the SUID binary drops into a root shell.
> > > > 
> > > > Sadly, the RDS kernel module this requires is only default on Arch
> > > > Linux among the common distributions we tested.
> > 
> > While of course I can't know what distros they tested, this does
> > seem to be on in at least Fedora too? https://oracle.github.io/kconfigs/
> > seems to agree with that.
> Fedora seems "unaffected", CONFIG_RDS=m is set in Fedora unlike RHEL and the
> kernel module is packaged in kernel-modules-extra which my Fedora Cloud
> Edition does not have pre-installed. [1] [2]
> 
> After installing kernel-modules-extra, the modprobe config file still
> prevents it from being loaded:
> 
> [root@fedora-44-127-0-0-2-2201 ~]# rpm -ql kernel-modules-extra | grep rds
> /etc/modprobe.d/rds-blacklist.conf
> /lib/modules/7.0.8-200.fc44.x86_64/kernel/net/rds/rds.ko.xz
> /lib/modules/7.0.8-200.fc44.x86_64/kernel/net/rds/rds_rdma.ko.xz
> /lib/modules/7.0.8-200.fc44.x86_64/kernel/net/rds/rds_tcp.ko.xz
> 
> [root@fedora-44-127-0-0-2-2201 ~]# modprobe rds
> modprobe: FATAL: Module rds not found in directory
> /lib/modules/7.0.4-200.fc44.x86_64
> 
> [1] https://src.fedoraproject.org/rpms/kernel/blob/rawhide/f/kernel-x86_64-fedora.config#_5970
> [2] https://gitlab.com/cki-project/kernel-ark/-/blob/os-build/redhat/configs/rhel/generic/CONFIG_RDS

-- 
Marcus Meissner (he/him), Distinguished Engineer / Senior Project Manager Security
SUSE Software Solutions Germany GmbH, Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, HRB 36809, AG Nuernberg
