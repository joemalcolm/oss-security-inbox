X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["759" "Wednesday" "17" "March" "2021" "17:14:57" "-0400" "Sasha Levin" "sashal@kernel.org" nil "22" "Re: [oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read" nil nil nil "3" nil nil (number mark "U       sashal@kerne Mar 17   22/759   " thread-indent "\"Re: [oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5627 invoked by uid 550); 17 Mar 2021 21:15:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5607 invoked from network); 17 Mar 2021 21:15:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1616015699;
	bh=evZ3QVKg+62oVqtnm2HQqcrl0oyJaZP7RQ9LImH4+TI=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=CwrK8nuVAaalAEWHIGV+1tyykG6y2WFbgE/h74XEhgyZzvdIXoD7niRr7mmR9lnBP
	 mDz/SJouRmzQqe6QsP8m28bTdLQ/4S5hFb73aNFbQaigBjKj7i0CzrX2ogQkul6evi
	 RllYTIK3c4X3qMjEKXt1nyiIybNuMSjQ2zGlkDorldJe8tvwenwsTwm/Nu1KB55ob3
	 UyZny8CK1gFuPVl6QCTguusWdVMzBqLZYWc2xnZ4INbt99zjTw9oOIQko224QK6gGj
	 vA2FQBbOq0IkIuupOAi4WBw0bWLL78G3405TYLGJhk7ZTqNonuPRGsWICCmB5g4AnU
	 PVCuWzm3ojwrw==
Date: Wed, 17 Mar 2021 17:14:57 -0400
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <YFJxUTwEHsaHhO7/@sashalap>
References: <CAKx+4-qm94y68oc4fT20OpYjs1kXn6mTMem7WD18DtAyFsWzdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKx+4-qm94y68oc4fT20OpYjs1kXn6mTMem7WD18DtAyFsWzdw@mail.gmail.com>
Subject: Re: [oss-security] CVE-2020-35519 Linux kernel: x25_bind
 out-of-bounds read

On Thu, Mar 18, 2021 at 01:20:18AM +0530, Rohit Keshri wrote:
>Hello Team,
>
>An out-of-bounds (OOB) memory access flaw was found in x25_bind in
>net/x25/af_x25.c in the Linux kernel. A bounds check failure allows a local
>attacker with a user account on the system to gain access to out-of-bounds
>memory, leading to a system crash or a leak of internal kernel information.
>The highest threat from this vulnerability is to confidentiality,
>integrity, as well as system availability.
>
>'CVE-2020-35519' was assigned by Red Hat.

This mail doesn't even mention where/how this is fixed. Is this
6ee50c8e262a ("net/x25: prevent a couple of overflows")?

If so, it's already fixed in all stable kernels.

How can the issue cause a leak btw?

-- 
Thanks,
Sasha
