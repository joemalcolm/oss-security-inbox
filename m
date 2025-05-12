Received: (qmail 24062 invoked by uid 550); 12 May 2025 16:30:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25723 invoked from network); 12 May 2025 13:28:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1747056478; x=1747661278; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fJq9MMxCNCySUwInTtE73ViqBVVtm86wJ9No6MLAYk0=;
        b=Q7xLSfJlFX8enPUqTQ7bRDNm079QfDdY8idXa35HT8aoLGNiuHX1pP3NbryE/KZaYh
         2aTa3baSnKatUArCtuAJsq/W+6ZWXraSHxQASSVpnzE4EKrSSwTkW1dO4TcxAVzowkP2
         N1UqND1JNg3l6w2NkPF7SC5RtPpWvPq1ILCNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747056478; x=1747661278;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fJq9MMxCNCySUwInTtE73ViqBVVtm86wJ9No6MLAYk0=;
        b=J5q/U1pi6gz+pK5+ghcAODXxdzejNCuFWS/tauE6GV27YLoKZxnl/2JE9fwe4PL0YS
         MLE8lWNvIVGngrcGu0240eTrWYFWJafweFu88ATA78J2/IzqBbAEIGw/fgYonmZOYb03
         FLpDokd29Ccmza8nPr6dKE+zPsvug2fo5ifT+A+Dc7Rw+uRUxNH+b3KbSR9872l9E1L/
         2hrfVqajl3AqUps3dUlsllBMNQHPnTZ3smLufhcFJyk5bm+Kbu2x6eTT27lXf5VTBfVB
         RoV0KSjBf5EJVlsyEh1OU+nxHB8RJn2DvPdIxmBjw39U3fYouOUiPWEUANb815CZmMZj
         Pmyw==
X-Gm-Message-State: AOJu0Ywfr+ahcYxmUvUqgxtAF3rSJLqghbRwXwJvHwGKxzd+4rxJDyLG
	zUOum+kj43SGPqJR2xHERm78QedXEqRVOjsTTpX40qbUGW3iFxd7gn2/rH3cajTIv17Be1N7Sm4
	Vxf4vg3BPp549De7F1dfy1BLo/EOfstFH2vGc966QbItInIOOwPUclTL+ZGGb1uxXqL2HGOAmKK
	WrGkkQ5ZckkesAZuxRLy5ykNuO96INhJp6BfC06vCXLLoeNQ==
X-Gm-Gg: ASbGnct0k/Xo5Z2KydMHCXfwb6GdP9vyLthoD53ovXkRtb6oqTIQ6JTEJ3Dth37uAW4
	h6XQheF+22Xk6L5EWy2BYlY++P46fO4aCg00ALYYjR3VrH6HWEvN3VqXcAj36LaqdyKrMTkRAfW
	GyMzBR3ZaTDkxJZ23/tbylfZVnDnC7mAF+jiVQCdeaRkeW/FYuuBmwz2nA5U/LIXJZ3w==
X-Google-Smtp-Source: AGHT+IEa9+s+2VpuPefYNTSuF0FF2kMI/icldhr7m0EHdJ0mOTWCDfS8LRIrOPGknW1PqLo4cpHWUgX30XKLQ5mUcJs=
X-Received: by 2002:a17:906:e097:b0:ad2:25a3:2ccd with SMTP id
 a640c23a62f3a-ad225a32d67mr657256266b.37.1747056477791; Mon, 12 May 2025
 06:27:57 -0700 (PDT)
MIME-Version: 1.0
From: VMware PSIRT <vmware.psirt@broadcom.com>
Date: Mon, 12 May 2025 18:57:46 +0530
X-Gm-Features: AX0GCFsoF-w631kHsUHQODQBLn_NEPF1QlAU2CPoEvjM8tRBH1plMcYe7DUUGTs
Message-ID: <CADOAh9cRx64wR8a7X7918ma_nkYDXzQ8uK6Jsp0q4oe-ECr3Eg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c315fa0634f04800"
Subject: [oss-security] CVE-2025-22247 - Insecure file handling vulnerability in open-vm-tools

--000000000000c315fa0634f04800
Content-Type: text/plain; charset="UTF-8"

Description

==============================================================

CVE-2025-22247: open-vm-tools contains an insecure file handling
vulnerability. VMware has evaluated the severity of this issue to be in the
Moderate severity range with a maximum CVSSv3 base score of 6.1 -
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:H/A:N.


Known Attack Vectors

==============================================================

A malicious actor with non-administrative privileges on a guest VM may
tamper the local files to trigger insecure file operations within that VM.



Remediation

==============================================================

The following patches are provided for released versions of open-vm-tools:

https://github.com/vmware/open-vm-tools/tree/CVE-2025-22247.patch


The patches have been tested against the above open-vm-tools releases. Each
applies cleanly with:


    git am         for a git repository.

    patch -p2     in the top directory of an open-vm-tools source tree.

==============================================================


------
Thanks,
Praveen Singh
Broadcom PSIRT - VCF Division
vmware.psirt@broadcom.com

-- 
This electronic communication and the information and any files transmitted 
with it, or attached to it, are confidential and are intended solely for 
the use of the individual or entity to whom it is addressed and may contain 
information that is confidential, legally privileged, protected by privacy 
laws, or otherwise restricted from disclosure to anyone else. If you are 
not the intended recipient or the person responsible for delivering the 
e-mail to the intended recipient, you are hereby notified that any use, 
copying, distributing, dissemination, forwarding, printing, or copying of 
this e-mail is strictly prohibited. If you received this e-mail in error, 
please return the e-mail to the sender, delete it from your computer, and 
destroy any printed copy of it.

--000000000000c315fa0634f04800--
