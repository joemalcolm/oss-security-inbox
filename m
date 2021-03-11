X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1575" "Thursday" "11" "March" "2021" "15:59:47" "+1000" "Wade Mealing" "wmealing@redhat.com" nil "52" "[oss-security] CVE-2021-20261: kernel: panic in start_motor+0x21 when /dev/fd0 is read by multiple threads." nil nil nil "3" nil nil (number mark "U       wmealing@red Mar 11   52/1575  " thread-indent "\"[oss-security] CVE-2021-20261: kernel: panic in start_motor+0x21 when /dev/fd0 is read by multiple threads.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20261: kernel: panic in start_motor+0x21 when /dev/fd0 is read by multiple threads." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24431 invoked by uid 550); 11 Mar 2021 06:00:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24407 invoked from network); 11 Mar 2021 06:00:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1615442402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=uhB/nIDys1Ed8K7dN+MVRoDFsTI3OPmjn/La5Hzi/mY=;
	b=L2oI4NIbbwgTiCPxLGINtdx4bs6hStUJ+/vyyoeu4666nUEc/zkHcE73JHvs9Ts0bsjRnl
	Ml1F9dmvyHCAGUjMWtlmWMyvcGeQJctFnVmQ/vqVB+56xoljz3YV/6EFM1E6lxYb8QPP1L
	mJRVa2p3l5yjyCiUDZi10wO1xv3ALVU=
X-MC-Unique: yQITUG8jMRGTyJrqB-YbCw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=uhB/nIDys1Ed8K7dN+MVRoDFsTI3OPmjn/La5Hzi/mY=;
        b=cYGb89/uSblagYsKKf0oFyyM97cb+WbGeVAP21T/nkKbP/hjoocX+WA4nbHZjZOfIV
         gpR0ajPEjIQYdCf1inPrWRZcA+36jH6BCQRgsAhq21kyjmJy/JVQWmufA3LDytJIJTlZ
         VHrTB2NhCyjFfCLuE2KM5EKOJme4aKhwKLcxbZEFC+uxjXiZofZtUxcaQGTAWcLkLc+O
         7BwJY3EbqfRXwBYqN6oyzfih0Dk3SkUGkv5EU+73fsVNo4D6WT+sSFTOQ0HuasMSTcRG
         EjUVZX0lZAhgBDoHp9WjPHDtPiweFNH8NWB6mejKype7bZ9Ihq7F3GtyqWX/8DAxZkTC
         3ztQ==
X-Gm-Message-State: AOAM533PdUBuuAjoVCjkSl+mRHOo2KUabgD1fPXOjVVOr+w3nf2VWw8Q
	XWN2xeA5KmsmiNp7BAC0cp5HDD4/anQuqQEcB5O8JIa71UmQHfIaDW30KNspp6Mcf0t7cQQ1v+6
	UetPwNtbEGsStplfd0o4FVZDSWEDNp1siyDmtSxlQJOQe
X-Received: by 2002:a05:6602:24cb:: with SMTP id h11mr5214646ioe.79.1615442398422;
        Wed, 10 Mar 2021 21:59:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy5+w/+sWdXxJy/Ud/UABVrzKDXjlDmmjAqTylkeq6L7z3Ql0eoFVAKraCE26j96Z32sBJZxpQ9tO4S2a7mLWE=
X-Received: by 2002:a05:6602:24cb:: with SMTP id h11mr5214632ioe.79.1615442398107;
 Wed, 10 Mar 2021 21:59:58 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Thu, 11 Mar 2021 15:59:47 +1000
Message-ID: <CALJHwhTXW8pi-7KJkkNpafM8SSiMM4edX4JbnPTFisGPV+RBjw@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=wmealing@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000004b6ae005bd3c7e9a"
Subject: [oss-security] CVE-2021-20261: kernel: panic in start_motor+0x21 when /dev/fd0 is
 read by multiple threads.

--0000000000004b6ae005bd3c7e9a
Content-Type: text/plain; charset="UTF-8"

Gday,

A race condition was found in the Linux kernels implementation of the
floppy disk drive controller driver software.  The impact of this issue is
lessened by the fact that the default permissions on the floppy device
(/dev/fd0) are restricted to root.  If the permissions on the device have
changed the impact changes greatly.  In the default configuration root (or
equivalent) permissions are required to attack this flaw.

From:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a0c80efe5956ccce9fe7ae5c78542578c07bc20a

"In case of multiple threads trying to open("/dev/fdX"), this leads to
serious corruptions all over the place, because all of a sudden there is no
critical section protection (that'd otherwise be guaranteed by locked fd)
whatsoever."

It is likely that this memory corruption will at minimum crash the system,
at worse corrupt memory and lead to possible privilege escalation.

Fixed in:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a0c80efe5956ccce9fe7ae5c78542578c07bc20a

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1932150

To answer the inevitable question that is coming: I'm reporting this
because it is my job.   ;)

Thank you

-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@redhat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

secalert@redhat.com for urgent response

--0000000000004b6ae005bd3c7e9a--

