X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1330" "Sunday" "7" "October" "2018" "08:04:51" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20181007060451.GA28781@eldamar.local>" "38" "Re: [oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor" "^Cc:" nil nil "10" "2018100706:04:51" "[oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor" (number mark "U       carnil@debia Oct  7   38/1330  " thread-indent "\"Re: [oss-security] arm64 Linux kernel: Privilege escalation by taking control of the KVM hypervisor\"\n") "<20181002160713.GE23872@arm.com>" ("<20181002160713.GE23872@arm.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14103 invoked by uid 550); 7 Oct 2018 06:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14080 invoked from network); 7 Oct 2018 06:05:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+F5dY569PriqBCTD3MbJHY/+JvufBrqZQyXuFMlPQ6M=;
        b=vLVL3HoUS49tRPDeIY8Y8fufthGe/N28YCF0DWWFDijJf5nddZjqCSlarxQg3oj8yE
         2CC1UTUY91NnPENy5y8MnBPQHKftMV7ZTzrWGXxwrAUVDQEa05Khg0VFLWzmIPQ9Ehjl
         em0V8mQD6XtFpO0bQyqQ+6LBkRoWni3CMXK2bgtvI9aNMJR+fZpg3b2PWAG7W79Z86jH
         CK2+eOCzYh82WWqw252RIhjqbA8qYCzfHcoeaklhQoJb8WIlEXBdcE7YUjOiphUhb72n
         10Re0NUvkWZsqjahUw0Jp6LY9gFXYhi+T6D9Dz9J0OlJ85Zc6x6pGG9NEEBJV0yk1NG9
         +7mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=+F5dY569PriqBCTD3MbJHY/+JvufBrqZQyXuFMlPQ6M=;
        b=Z+FKfPjlO4WZ8wc7PtQTedGJYg9rod5DqAEZpt0gR4agAF409lbTxH4nLD5+77U33K
         w9JYgE0x490YxOxLXtzMds0IQH5AAm9eSQcOomQwEaqzhdzHBgzJ07UveBNL9v43pYrb
         TNIyA6DFNraS3rTQyOF7uFVVsMzoU1p7/LMeJLov7xWNGkqsgBSVq7oFoC78slINDWyv
         jeWzX/SmdMzD20BbsP4Nz1AOHjsBktt6TSCnGtOfQ1sC+x66bIzBD9hT6LowlSyqA5AP
         KZKlg75p/oDcqnjI7TCNvfayMcYb/V5CABG4PESesJH05HB6IsQkSJIHi7K+c+UMeo9K
         ORHg==
X-Gm-Message-State: ABuFfohRBdn2rid7ZtoLEej5QGRYRfEbwNNt3pUtaHQwDEVIUiR7VZF9
	dAbIIM9cEOrIS7kTDZIrDlc=
X-Google-Smtp-Source: ACcGV60AjObwXkMNVdkKZRyGe1+SYzyxaacjBDNptCX8zfUzuStvn8d/sGyutggGl+CrSI0pbTTXTQ==
X-Received: by 2002:a1c:88c6:: with SMTP id k189-v6mr11595950wmd.32.1538892293900;
        Sat, 06 Oct 2018 23:04:53 -0700 (PDT)
Message-ID: <20181007060451.GA28781@eldamar.local>
References: <20181002160713.GE23872@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181002160713.GE23872@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Will Deacon <will.deacon@arm.com>, marc.zyngier@arm.com
Date: Sun, 7 Oct 2018 08:04:51 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] arm64 Linux kernel: Privilege escalation by
 taking control of the KVM hypervisor
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi,

On Tue, Oct 02, 2018 at 05:07:14PM +0100, Will Deacon wrote:
> Hi all,
> 
> Whilst reviewing some proposed arm64 KVM changes, it became apparent that
> the sanity checking for the KVM_SET_ON_REG ioctl() on arm64 does not
> correctly handle a number of cases:
> 
> 	- Unaligned register accesses and accesses that span multiple
> 	  registers can bypass PSTATE sanity checking
> 
> 	- The PSTATE sanity checking fails to take into account the
> 	  capabilities of the physical CPU, or the configuration of
> 	  the virtual CPU
> 
> This allows an attacker with permission to create KVM-based virtual machines
> to both panic the hypervisor by triggering an illegal exception return
> (resulting in a DoS) and to redirect execution elsewhere within the
> hypervisor with full register control, instead of causing a return to the
> guest.
> 
> This has been fixed by upstream commits:
> 
> d26c25a9d19b ("arm64: KVM: Tighten guest core register access from userspace")
> 2a3f93459d68 ("arm64: KVM: Sanitize PSTATE.M when being set from userspace")
> 
> which are being backported and applied to all active -stable kernels.
> 
> 32-bit Arm is unaffected by this issue.
> 
> There has not yet been a CVE requested for this (mainly because I don't know
> how to do it).

This issue got CVE-2018-18021 assigned.

Regards,
Salvatore
