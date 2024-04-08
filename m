Received: (qmail 22006 invoked by uid 550); 8 Apr 2024 12:42:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1822 invoked from network); 8 Apr 2024 11:38:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=References:Subject:In-Reply-To:To:From:Date:
	mime-version; bh=4y/B4caoSDOYMgyU0RgD6+hiNbjvvqChqVRLSLLe228=; b=OK0L097wmAiT
	9meqfgBBA9zhtLdUwqG4g0QNhSZEjArmf3Y8e3PQr9y+CG9LXbgLtbgPvbGS+qlIXZA50GmqNaIRD
	6JlS8v/COMuc0sU9yZ5CXHb+vviJdMawphPhbczcA5tSG3ZORjGn4uu4MX7whyEd0HzoRI6hpS4Mq
	f7r04XZ8PIB6TxSBuNefQVUjx3sHXXqe9K852PfpuXt0soqJLGzas2GyY003wdkE+eUGJ/k021WWo
	jALKumvKRD6PuL/m0lhWOuUl7878kXKok3fHV6GdxGw3sLhFcU2Ncm2W7UMTK/CHXYYmcuBlm/h7x
	z0lDvjN8bFNNR1/flap+qQ==;
Date: Mon, 08 Apr 2024 14:38:35 +0300
Message-Id: <865xwsythg.fsf@gnu.org>
From: Eli Zaretskii <eliz@gnu.org>
To: Sean Whitton <spwhitton@spwhitton.name>
Cc: yantar92@posteo.net, emacs@packages.debian.org,
	emacs-devel@gnu.org, oss-security@lists.openwall.com
In-Reply-To: <874jccjpvy.fsf@melete.silentflame.com> (message from Sean
	Whitton on Mon, 08 Apr 2024 15:05:21 +0800)
References: <874jccjpvy.fsf@melete.silentflame.com>
Subject: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

> From: Sean Whitton <spwhitton@spwhitton.name>
> Cc: emacs@packages.debian.org, emacs-devel@gnu.org,
>  oss-security@lists.openwall.com
> Date: Mon, 08 Apr 2024 15:05:21 +0800
> 
> 
> The description for CVE-2024-30203 is
> 
>     In Emacs before 29.3, Gnus treats inline MIME contents as trusted.
> 
> and for CVE-2024-30204 is
> 
>     In Emacs before 29.3, LaTeX preview is enabled by default for e-mail
>     attachments.
> 
> but I think these commits
> 
> * ccc188fcf98..: Ihor Radchenko 2024-02-20 * lisp/files.el
>   (untrusted-content): New variable.
> * 937b9042ad7..: Ihor Radchenko 2024-02-20 * lisp/gnus/mm-view.el
>   (mm-display-inline-fontify): Mark contents untrusted.
> * 6f9ea396f49..: Ihor Radchenko 2024-02-20 org-latex-preview: Add
>   protection when `untrusted-content' is non-nil
> 
> fix only a single problem, right?  But we have two CVEs.
> 
> It seems to me that either
> 
> - CVE-2024-30203 is just bogus, based on a misunderstanding by the CVEs
>   assigner of exactly what the vulnerabilities were
> 
> - CVE-2024-30203 is legitimate, and we have only fixed one possible way
>   in which Gnus treats inline MIME content as trusted.
> 
> I think it's the first one -- can you confirm?

I'm not Ihor, but I cannot agree with you.  Those changes fixed two
problems, not one: both the fact that by default MIME attachments are
treated in a way that can execute arbitrary code, and the fact that
maliciously-constructed LaTeX attachment could exhaust all free space
on your disk.
