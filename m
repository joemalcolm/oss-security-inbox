X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["904" "Tuesday" "30" "April" "2019" "10:40:31" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "22" nil nil nil nil "4" nil nil (number mark "U       carnil@debia Apr 30   22/904   " thread-indent "\"Re: [oss-security] Linux kernel: multiple issues\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple issues" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5748 invoked by uid 550); 30 Apr 2019 08:40:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5730 invoked from network); 30 Apr 2019 08:40:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=CQdAj0g0i5vGVPkVLNGmHubFP7P6f/CvjV7pQJ3gZHA=;
        b=FqWH5/bXimk4NUd0MbPz/C/Wy93lfXDaQE7sFsoPI3xbe0Q0PpKlh5nsJ6C3lbN13S
         3utvJVop7k/OW4WAIbvm0cEKqNRGda0JiL+Ih/2MrIykkA69oR+g2MIG4Tne4LfYHMR4
         PMLrGNKAW1F+bkLRlPWkcUyGPyz8AXNLnwvxf/8D0Jv2kgQAanbZzRmlmjQm6bKctMal
         nBwJztEeeqTADVeFl86G0YN6CwY2RjTWz4IGCAU1jVzXZw6qcV2IX0x+MiF5dzBbiV3Y
         2vPWy9NOgg4dYpNID8DN0J4fswrJ5bTz1zvDrVYLYJ2GTiDou9REzO+WNrbTqa3hRHkp
         Q+8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=CQdAj0g0i5vGVPkVLNGmHubFP7P6f/CvjV7pQJ3gZHA=;
        b=JKr2mWWuoKtmJS9Lnrs5kLfVM0rmqhO+g7mZVJwStsWTMhX/K3IFZbrDKWvIlgI30V
         JR67Ny5/03L7TR/06T+qxRyBxqchMdBAMKrcU4XUDa3u5DI2dvwwPzSJO9j0SARSD3UF
         wdONDla6Dg1StXR5l8rAD5OJr2M4aGF/6FgxGQj4VKbfYlghy/IvNfnCpOnGNKYLTM+y
         52gLgh9NMtx+ZSVi88Hww1TRikwH4RG5hQ/p/3GOPzqttzLXoJyCnI2R9xuwrowwKWPo
         +vCCgiu5TuLsUVeyV/lxKRTCNLrnfJ9Iq5RN0OaV2Eu7rK+xaUfcbkAkap/ZC+om/ZGx
         bvcw==
X-Gm-Message-State: APjAAAUieFWy457Ec2eZJvv3dj9PazGyebuDCslmKSelvFaiyDqvMqNh
	KGuEKcVj8YnSPUfqR4V0N584dyQ5PxI=
X-Google-Smtp-Source: APXvYqz4A6K0aKr5rw7nX7yVHTKUuxxUY+g5djSSChgsD8/d3red/JAMVILj7S2pA49Ab85lW/VaeA==
X-Received: by 2002:a5d:4392:: with SMTP id i18mr13352367wrq.239.1556613633611;
        Tue, 30 Apr 2019 01:40:33 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 30 Apr 2019 10:40:31 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20190430084031.uj3462xm5drpdqmk@lorien.valinor.li>
References: <CAG48ez04TXacCC8-PSw_gHofAux6tfxXBU6EMGpoqL=KzevKuw@mail.gmail.com>
 <20190429191528.GA10231@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190429191528.GA10231@eldamar.local>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] Linux kernel: multiple issues

Hi,

On Mon, Apr 29, 2019 at 09:15:28PM +0200, Salvatore Bonaccorso wrote:
> Hi Jann,
> 
> On Mon, Apr 29, 2019 at 02:56:06PM -0400, Jann Horn wrote:
> > == missing locking between ELF coredump code and userfaultfd VMA modification ==
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=04f5866e41fb70690e28397487d8bd8eea7d712a
> > https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.114
> > https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.37
> > https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.0.10
> > https://bugs.chromium.org/p/project-zero/issues/detail?id=1790
> > CVE-2019-11599
> 
> If I'm not mistaken, this was assigned already CVE-2019-3892,
> information from https://bugzilla.redhat.com/show_bug.cgi?id=1696015

FTR, CVE-2019-11599 was kept and CVE-2019-3892 REJECTed as reservation
duplicate of CVE-2019-11599.

Regards,
Salvatore
