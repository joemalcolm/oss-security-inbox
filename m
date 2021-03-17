X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["725" "Thursday" "18" "March" "2021" "01:20:18" "+0530" "Rohit Keshri" "rkeshri@redhat.com" nil "24" "[oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read" nil nil nil "3" nil nil (number mark "U       rkeshri@redh Mar 18   24/725   " thread-indent "\"[oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26355 invoked by uid 550); 17 Mar 2021 19:54:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25686 invoked from network); 17 Mar 2021 19:50:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616010633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=hEJtqgSLnsy5Lxcb9cF2MWNlwWl1duTYl2fCjw8GBeg=;
	b=NB31d2uaNjlftp9OiH5b2FcPN4AE8DR1VOeS0RKW1PlXzOQ3Id5tpda+RYfJRrM6N8e+DX
	bSxMPBJjY4RaIvAr2MI4MYCxvPFVtB2d4t9qzEPfg63ujY6rOYnIchkIpVdpgUPDe+0eit
	QH1aUPaz22bV+/nlRFTb+wYUS6vANKM=
X-MC-Unique: ZFg-0mNwNzWV-p_XZoFyKg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hEJtqgSLnsy5Lxcb9cF2MWNlwWl1duTYl2fCjw8GBeg=;
        b=oB0cQh15IqEwsEs5YYON+NLy8uDzZWTPYkDBEWlCet+3zT+a09X+VO1OxhojNSDpEk
         mKwN74bsjT42wdmRNRk53ZVNMhzgyTSIsk9C8/bwhcr70DmODL0QQ4H4ER1XIu/9mU4o
         ZY3HbPw8yIbb62Ps0ImpANm+AUr/Rox+knbAidVOxgLPHNGeVaZFa8ZRsmlyZFcEDrdC
         SXLbsDHTMdU+SazySdpTLEirTHiGb76Gp9T4AEUZ1cEFYClkMVeTXBPKR9rr2ZwRTgc1
         9MM58jrf4UesaymFDT1ddM+xzkqU8HeowwFTUdCrEy8Ozb6D7F4zx1SP7txNnnbE28x6
         s3RQ==
X-Gm-Message-State: AOAM530SxBGwtwRs3tPTlFACpqc/FbgS6RN/RMLkUxc8++eXfRfgI6nx
	U3dK35iYNDMutXi2ZhNAuEkah3wi1ME6PiJyWuKRi6Rt66yEevBePR+Iyj6CRKtd9xfaaPj/FLZ
	5GEpxQqCjtxmQdmhRb1+d6xiwG7NHc6IFej1epTFybQ1+
X-Received: by 2002:a92:540d:: with SMTP id i13mr8849385ilb.8.1616010629936;
        Wed, 17 Mar 2021 12:50:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBSqSQJYqiSxJXEJ1Cub/tZlPJ0wpzertQ/tnk8d7E88VqQ96rWlqsCQ3BULN+/OUw42tuxVBINajnKYJDDgI=
X-Received: by 2002:a92:540d:: with SMTP id i13mr8849371ilb.8.1616010629616;
 Wed, 17 Mar 2021 12:50:29 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Thu, 18 Mar 2021 01:20:18 +0530
Message-ID: <CAKx+4-qm94y68oc4fT20OpYjs1kXn6mTMem7WD18DtAyFsWzdw@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000008834d505bdc0cb22"
Subject: [oss-security] CVE-2020-35519 Linux kernel: x25_bind out-of-bounds read

--0000000000008834d505bdc0cb22
Content-Type: text/plain; charset="UTF-8"

Hello Team,

An out-of-bounds (OOB) memory access flaw was found in x25_bind in
net/x25/af_x25.c in the Linux kernel. A bounds check failure allows a local
attacker with a user account on the system to gain access to out-of-bounds
memory, leading to a system crash or a leak of internal kernel information.
The highest threat from this vulnerability is to confidentiality,
integrity, as well as system availability.

'CVE-2020-35519' was assigned by Red Hat.


Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response

--0000000000008834d505bdc0cb22--

