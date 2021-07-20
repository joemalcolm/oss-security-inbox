X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["429" "Tuesday" "20" "July" "2021" "14:52:19" "+0200" "Petr Matousek" "pmatouse@redhat.com" nil "15" "Re: [oss-security] CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer" nil nil nil "7" nil nil (number mark "U       pmatouse@red Jul 20   15/429   " thread-indent "\"Re: [oss-security] CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-33909: size_t-to-int vulnerability in Linux's filesystem layer" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13979 invoked by uid 550); 20 Jul 2021 12:52:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13957 invoked from network); 20 Jul 2021 12:52:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626785543;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2nyPKGHcZvmOIzqdyRW6FIoqo11+JD9QZynsxOh7G8U=;
	b=eY+7teCXa5xlfAQJwQwXkokmLR+6qeHt3yG5wVpg9zdH/wi9LzKqzDiXb+k8olKngh7uWy
	exaWGi9MkWHAfCiiuLouOi0HifGfdCgN+ZP0USBGSdMX3rgrvJSiGLyPCBGRrWRjGA9KlM
	EfuH7dueTa4zX6CDwqZWjKYC6bGXr2A=
X-MC-Unique: wotAsPHsMGa-TWfKdta-2w-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2nyPKGHcZvmOIzqdyRW6FIoqo11+JD9QZynsxOh7G8U=;
        b=aVpRddg6vQ1bXCb5BMK1DKsh0shzajFLKRQ8Wty+3dLY4lYQsBEOAfRrVIBgcmSIey
         T6jqkoZxDz0Psoo7IHhC2FgMmkBBig9kMRoLq2b5c/JZwE88S4uQs65/11+1yexo+WLN
         kFJ6CUyjKfki6xwEYISvTkvSFgu9Cio0vdtcltusa0/dqstk8CeipgeK5hBSfLDPohLK
         WStrBFL5vx2Y/ySLBhOsxui9wxakxPW/lI+t+xT78LwZWS4kWCQgqFuv6n9USlqSG5UN
         7++CNsr0IoE6GXes1QowXVVK8SRV/GwSbNit/kg82E7Ks93ghVU7ssQIhF/CuqwwW9an
         HQ0g==
X-Gm-Message-State: AOAM5325Vu8XwgvYJAHhJL/s34Xo05y+mo1zOKHvRI8fXilVC6fNrHLA
	F2mE63I7wehEFYy8tmvSJUHGtELWeU9vejoejYtJ3+Nmg5L9wA8saf1I0vSvWP0LcmU75tn9ksG
	pQbVyswLqwEqSiep048P8XRJVKb8gM0rzIFyS8FYljPPDgUbohXsrkw6BNBhX8ubuIJNfzSmuyA
	vFoLt6
X-Received: by 2002:a05:6402:34c:: with SMTP id r12mr40055574edw.278.1626785541351;
        Tue, 20 Jul 2021 05:52:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJya2ttfTWB96sV5OiDwEsehNYM+4nt7ogX0E8n6UxZAp03bd8ksRkBjfVRekAcNrKGBcjg6Zg==
X-Received: by 2002:a05:6402:34c:: with SMTP id r12mr40055560edw.278.1626785541196;
        Tue, 20 Jul 2021 05:52:21 -0700 (PDT)
Date: Tue, 20 Jul 2021 14:52:19 +0200
From: Petr Matousek <pmatouse@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <YPbHA3xDqvcwPFLQ@nada-new>
References: <20210720123335.GA19170@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <20210720123335.GA19170@localhost.localdomain>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pmatouse@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: Re: [oss-security] CVE-2021-33909: size_t-to-int vulnerability in
 Linux's filesystem layer

On Tue, Jul 20, 2021 at 12:36:11PM +0000, Qualys Security Advisory wrote:
> 
> Qualys Security Advisory
> 
> Sequoia: A deep root in Linux's filesystem layer (CVE-2021-33909)
> 

upstream patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8cae8cd89f05f6de223d63e6d15e31c8ba9cf53b

-- 
Petr Matousek / Red Hat Product Security
PGP: 0xC44977CA 8107 AF16 A416 F9AF 18F3  D874 3E78 6F42 C449 77CA

