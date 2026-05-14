Received: (qmail 12060 invoked by uid 550); 14 May 2026 15:09:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12031 invoked from network); 14 May 2026 15:09:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778771352; x=1779376152; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ucNP2bxhqdhJmKS4hTk58+/0Gh3EgDjLd3sBD4iHWtY=;
        b=Vo2YkHnwmSgAUg4+1EtjDPZ3KoVGdnm56gyBscUeSv3fnwQP+1kq7BLPCU3C6VR8rj
         ysnb2kO2WNR7LhY1c1TF3ewUtiNcl+96jjnzyyP88X5AZAOznRWL44HqveceGWEY6Ii+
         /IDUF/cg+11C+0YJkKAL4BSbgmJKDVEsBPA1ke6bj9pngAVt5mmIRAuocFDaKI07Wqwr
         D95GAerW5INHNzB2DvMmRP5mY+5Pes9jYfA8VE08/AoXPB/tI0dPB9g/QyytnE2/I39c
         SuwRNDJHh+3ZlFyQeUvp/6LiLC7E0gZlpqLS1SgtJ6vW98H7hsevVQRkgT+P4Uv2YRVq
         /y4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778771352; x=1779376152;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ucNP2bxhqdhJmKS4hTk58+/0Gh3EgDjLd3sBD4iHWtY=;
        b=SOKBqJWugumHPKgbHNoZHN9PRgECvALkfHc2aASpg66pJVgPvE9JbT7XFwDn2l/YSI
         Q28Zd342HplaICpoYCDNer9Acmb0c/TE5fe4iVsD4WrFa2mDtdW2BiO/wBqsn13+t1wJ
         JT0IlLam71r8YP82LrA7ALdfzTjZJvbkL3wsfvU7qQax8ubYDjdZQzTnm23EJ7HAU9DW
         Qn5+Yzi/I6TAoTVKPsvG2WzrDxe5iBmmbNjjHfRdWA7ZY60QLbPHh0QvB5+VhlKrfgLY
         Fwn7A99dvCnl1C8OgI9oafU7sL/4dYd5XqxFMJ1ElgB7Wr6zthBTcP85HuF4laU3H8AL
         u00Q==
X-Gm-Message-State: AOJu0Yw8iPRrG/NpKwz0+lQqZ2xy/Bt2Hm2P4GHAg9sSe13ZdH3uxLsf
	eGd2hiZM4E1AhxfpNM2uXr4+Br7eMhAuxyYQT9rVRcTiYpyPU5fsn/6n4atVb4zq
X-Gm-Gg: Acq92OH3lVCK3THVkWJtrMksp6mXFRzcmlh48oIsmJAtVKk/eeNu8H6ctCp8LeBgHI1
	zvNt2yTgw8dqa1n3HOVmdRGkUAjJM3yaP3DXtPoAlYhHb7E4lDVf/HxetB2LHvLaqJowIRUclIq
	6cdjgQZ0LhIYyxHWgGW4Boom6pSH/kvyyKxrd5B3J2eaxefg7C1GUUCDtqmMVW6MvummfGX+tjy
	Xoje+vkDBCY8B4Nr8sR0knt4lqBvpmOeKN5pQayuDEuXmQ88zo0vmct3h99/Y0TxkDowmvcyLPM
	a2zdxZ/O1IyAcvlHv1GSrDrpOzwvsWlLIhOtNpY+TCpXDKbqOQQ+B58JipmAdtDiKmqaoSbskN2
	+StAqeBbJvYxE0k1ST2IcmEwQUjejuzkjByKSSOUNDmsNrt2xaXHEIIrQsNrgr4+FXJeq1fQYnj
	xYKiA3hzUxS7fuyOOgw5gxxeYJRi56rN/f2JThl7dXyjeecEx/Nu8XBEZJWvSLYsgKkeVeINOQv
	wW9pLxO
X-Received: by 2002:a05:6000:2481:b0:452:a209:560 with SMTP id ffacd0b85a97d-45c59bd69bamr13738344f8f.28.1778771351336;
        Thu, 14 May 2026 08:09:11 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 14 May 2026 17:09:09 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Hyunwoo Kim <imv4bel@gmail.com>
Message-ID: <agXllSDnfFBIo7xh@eldamar.lan>
References: <8733zvfucm.fsf@gentoo.org>
 <20260513173510.GA8455@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513173510.GA8455@openwall.com>
Subject: Re: [oss-security] Linux kernel LPE ("fragnesia", copyfail 3.0)

Hi,

On Wed, May 13, 2026 at 07:35:10PM +0200, Solar Designer wrote:
> Hi,
> 
> Here's analysis by the Dirty Frag researcher:
> 
> On Thu, May 14, 2026 at 12:45:31AM +0900, Hyunwoo Kim wrote:
> > I'm attaching my current analysis, so if anyone could post it to oss-security on my behalf, I would greatly appreciate it.
> > 
> > Here is the analysis:
> > 
> > This vulnerability is a path that was accidentally activated _after_ the introduction of f4c50a4034e6 (2026-05-05), the patch for CVE-2026-43284 in the Dirty Frag chain.
> > 
> > In other words, the effective vulnerability window is from f4c50a4034e6 (2026-05-05) to upstream -- approximately 9 days.
> > 
> > Exploitation requires the attacker to have permission to create user namespaces, unless chained with a separate vulnerability.
> > 
> > Another important point: the patch[1] they attached addresses the skb_try_coalesce path, but does not resolve the vulnerability because it misses other variant paths.
> > 
> > For now, a patch[2] that also covers the currently-analyzed __pskb_copy_fclone path has been submitted. Once the additional analysis is finalized, a v2 patch may be submitted.
> > 
> > At least for the time being, I recommend keeping the Dirty Frag mitigation in place:
> > ```
> > sh -c "printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf; rmmod esp4 esp6 rxrpc 2>/dev/null; echo 3 > /proc/sys/vm/drop_caches; true"
> > ```
> > 
> > [1]: https://lore.kernel.org/all/20260513041635.1289541-1-vakzz@zellic.io/
> > [2]: https://lore.kernel.org/all/agRfuVOeMI5pbHhY@v4bel/

FWIW, there was another variant posted via
https://lore.kernel.org/netdev/agVpIsaSherjHTYg@sultan-box/ for review
of the v2 patch. A v3 of the patch has in meanwhile been posted as
well as:

https://lore.kernel.org/netdev/agW4vC0r8QOUKtRT@v4bel/

Regards,
Salvatore
