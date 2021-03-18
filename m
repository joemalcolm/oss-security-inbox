X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1101" "Thursday" "18" "March" "2021" "17:03:53" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "47" "[oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       rkeshri@redh Mar 18   47/1101  " thread-indent "\"[oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13921 invoked by uid 550); 18 Mar 2021 11:52:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6036 invoked from network); 18 Mar 2021 11:34:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616067248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=FPtgLMTWWuaReAIpiwKZuv/cmLjvDpTP7F2srGUS65Y=;
	b=GsgZEPmLfDyCJZlkOUKvlaO2fIMfOeusQD3aIFl/0jYB6t6kLYb9PStcXs6Ydi/yT01wG/
	Pbx5ZSYaTC09mqh9NAHcGz4anHC0cMRwh1t/dOV8Kvvtqm6jkTDHIJEdwsxOc4/zixgm13
	jfo7e20vmBW/bJJn9cVZOmqiOweah0g=
X-MC-Unique: 3s_GPvrsO7WDEoa-mKzGPg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FPtgLMTWWuaReAIpiwKZuv/cmLjvDpTP7F2srGUS65Y=;
        b=T6Qomcz0kHk4mx4rFhgghZWDzmMs0u1vDniu1rVdKBjGCajexAv5VI9raNj42nswYq
         +UJvuyNJoz4CV3K1ZMUab0weGeliXmHAaPRDBNyo2/ezFZkbBOGxlyQG2JISrYXXUCIw
         Ew16ZvWeTRt4I1PMka0eiYI1rPYTL4Zx79dc4NRXjdjbUkOQSimMNfTCicCvuBuikACv
         S9tfTXHksm27e4i3mzeG+HNEYgGs8TkaVIgcnpDxOV8oJiX+mc1ZCOjdh3SAvDUOpQxh
         iBogenlGGkxUfF99GzdTlnvPCsyKh6TFHr7ytUjdIbfUSTRaCn0bnlJhvuCQhOqPiKBD
         kSFg==
X-Gm-Message-State: AOAM533goIf4TEoyfJf8dYeuXZYBTZyDSNtiPows1g6ass6o4SK8sAnJ
	XbRzpuq1l9yr39U9o/9T8kQgfb4oI5VSxz+jRErkYwYzTkjws1KYTnKxC2AQSMG8/I+/Aj2GN8y
	lA0VOwf28GH06TiXJrMtFBEcehdYrNpWUUslVzHbOiqkB
X-Received: by 2002:a19:e12:: with SMTP id 18mr5314826lfo.296.1616067244156;
        Thu, 18 Mar 2021 04:34:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwW+D73DTs+gTAv4OVLC1CD1Mo0fI08+FCHr4gxcnxiih+na88nHGmOJZHpP1lhhNVDB128IUra/9R2wa30A4U=
X-Received: by 2002:a19:e12:: with SMTP id 18mr5314817lfo.296.1616067244004;
 Thu, 18 Mar 2021 04:34:04 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Thu, 18 Mar 2021 17:03:53 +0530
Message-ID: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000003281d05bdcdfa3a"
Subject: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in
 flush_to_ldisc() can lead to DoS

--00000000000003281d05bdcdfa3a
Content-Type: text/plain; charset="UTF-8"

Hello Team,

> Given that the above CVE is not public in any database that I can find,
> one can only hope that the text will reflect what really is happening
> here.  Rohit, why was this even published?

> Again, stuff like this is just causing extra work by everyone else for
> no good reason that I can see.


I understand and apologize for the confusion.


This issue was reported for rhel7 to us (which was not seen in rhel8
or later versions),  but it also  applies to  kernel before this
('3d63b7e4ae0dc') patch or kernel without this patch.


$ git tag --contains  3d63b7e4ae0dc
v4.18
v4.18-rc3
v4.18-rc4
v4.18-rc5
v4.18-rc6
v4.18-rc7
v4.18-rc8

..


Since this issue was reported to us,  identified as a security flaw,
and was fixed in the upstream, we decided to assign a CVE.


We appreciate and value your feedback and co-operation.

..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--00000000000003281d05bdcdfa3a--

