Received: (qmail 14277 invoked by uid 550); 29 Sep 2025 16:24:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3843 invoked from network); 29 Sep 2025 16:17:56 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759162666; x=1759767466;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z9U18imO3264zGr8LZ4hWwUeR5iJyUr7HD8eBVb9a+0=;
        b=kFUdUGYhba4JLqMCTlLBi6VjZDvQ2kqzRRMQ57RuyDw1Sl9t/HQP3EA61IBFVjRAAE
         NwRuv6xIcCIrAg8SjxZBSF2jW9yi9Q2VlwE2cFJHCn0jsE71+GvlosuI4CvNIdqAL2ck
         qve8L4tHZ8le2P6SZnmYzYuH9vUe/OAmgVLPEvQnhe0Sbq07qc8KrCiRN3m1hLRMsENM
         4EWVJWrfC0dW5f2cEj4UArAf4+O9nhbhSsz2ZcjYRM09mx7AeedSUdWhSmv3uu7Hvk4t
         MT8RYcUgJfvx0iMybWVWWJaBX1HNUe7mJuvSpsfxaqtEyr2kpWT3APs66pBYh435dnnP
         rAdA==
X-Gm-Message-State: AOJu0YwwvDjCKmIA45Bgg9Y2f8yAil2wozJQbPb0vEyKnzErqyjLzEKx
	70CkxWseOVc+Thbti4Go2DbjPdWP8+v09Kz6Ui9bSAhG3wnxgih5KwNSsgF5a14IAbQgsMPitNf
	BiQcC3pPIRVNpnQx76sv465DdCZTFRIdxakwaDE0RUZM6RLyasXTELtynUw0g6T3rvrWyGgOpw0
	Lbsc2ch03IHs/LdIarK/gcPs7hVJq5dxsUgvKCv6k0yfUl0W2euFhNjHYUXt5WL8kb06gEScBVg
	qkG9P5QbrjWzpKME6lCApkhmyTN1N5X4DZ+4kfZB3G1isf+JmvInYSIKJ0aagHIzs16cItrDq6r
	oKiYYHBj
X-Gm-Gg: ASbGncsI1uIouPh1qHNoGYdcM3tvDOmU4IezGhHwu92sgeNe899oloiID+QbeibHvbS
	kkRdhZIxq/ARW1AUTz/BQt5jzmPHwh0jFC3Z+YXWk4QZmOLHn7o56XWDX81aRJU+vOj7VORsEWZ
	9vScDaShC4G34IYAEHRHwo2bpNLwmaTk4hRvRHt9vR55paLyPjHfAr+5flv0kthXZ6GmN1mHZRu
	9pgL9T1Jnw8pp/+/lpznIUKBe1xBSe+ViyQ1w/oAm5I5cJxIUxTJ8zR2eyfzW8bdrJNxBoLerOe
	e+ESBR2Y5qkUwctiYRTUIbCmBVj5mvkXeTYA5fCxvDeU3GR3SS9jczeKR9yElmzi/cNYfaRnFY4
	vbANVqXyHuMIoQLDTwr1IMwRHBTLdAxyIq2S1hK6pqYjCWYQ7o+a+9oV48jcLLP3kFkQClro61T
	kK5o4=
X-Google-Smtp-Source: AGHT+IFuEMImeZugmzQRs3hAxYbg89F+1b8Lwj2Ffmni+UkMDrn4N+EGmXTJ17fmcAcGtTLA6QxF8HkeTZAR
X-Received: by 2002:ad4:5be6:0:b0:78f:62ef:5a64 with SMTP id 6a1803df08f44-7fc443d9dedmr207351056d6.65.1759162665973;
        Mon, 29 Sep 2025 09:17:45 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759162664; x=1759767464; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z9U18imO3264zGr8LZ4hWwUeR5iJyUr7HD8eBVb9a+0=;
        b=SP3Tzo+Po18oGVM5XLd1Tf2d186VokFdYkQi4BXZvkiuwIO9RF0GUViLPTHsdH17yC
         4oyPl6/m9Db4Xbg0frOsovjsF8B1TKo3I3+r7HHEfT53ZhRMTdtDilUMF4Z8vm3qxta/
         oJddGZGQI4kTdDdGeshJ+BI+UIAa8y8NMvLFs=
X-Received: by 2002:a17:906:dc89:b0:b3d:b251:cdec with SMTP id a640c23a62f3a-b3db251db82mr592304566b.37.1759162663591;
        Mon, 29 Sep 2025 09:17:43 -0700 (PDT)
X-Received: by 2002:a17:906:dc89:b0:b3d:b251:cdec with SMTP id
 a640c23a62f3a-b3db251db82mr592301166b.37.1759162662767; Mon, 29 Sep 2025
 09:17:42 -0700 (PDT)
MIME-Version: 1.0
From: VMware PSIRT <vmware.psirt@broadcom.com>
Date: Mon, 29 Sep 2025 21:47:31 +0530
X-Gm-Features: AS18NWDcOk_rGqkj0IL80YxosyWqN0w27pOAN0h-kOGu8yLLMAWRzoFyQXibI4w
Message-ID: <CADOAh9e8bn-dbtCzLfMG26AXG_H_=sNVeocFiWLO2H2iEE4PyA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Subject: [oss-security] [Security Advisory] open-vm-tools: Local privilege escalation (CVE-2025-41244)

Description
==============================================================
CVE-2025-41244: open-vm-tools contains a local privilege escalation
vulnerability. VMware has evaluated the severity of this issue to be
in the Important severity range with a maximum CVSSv3 base score of
7.8 - CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

Known Attack Vectors
==============================================================
A malicious actor with non-administrative privileges on a guest VM may
exploit this vulnerability to escalate privileges to root on the same
VM.

Security Advisory
==============================================================
 VMSA-2025-0015 -
https://support.broadcom.com/web/ecx/support-content-notification/-/external/content/SecurityAdvisories/0/36149

Upstream fix for CVE-2025-41244
==============================================================
https://github.com/vmware/open-vm-tools/tree/CVE-2025-41244.patch

The following patches are provided for released versions of open-vm-tools:
- For all open-vm-tools versions 12.4.0, 12.4.5. 12.5.0, 13.0.0:
CVE-2025-41244-1240-1300-SDMP.patch
- For all open-vm-tools versions 12.3.0, 12.3.5:
CVE-2025-41244-1230-1235-SDMP.patch
- For all open-vm-tools versions 12.0.0, 12.0.5, 12.1.0, 12.1.5,
12.2.0, 12.2.5: CVE-2025-41244-1200-1225-SDMP.patch
- For all open-vm-tools versions 11.2.0, 11.2.5, 11.3.0, 11.3.5:
CVE-2025-41244-1120-1135-SDMP.patch

Thanks,
Praveen Singh
VMware Cloud Foundation PSIRT
Email: vmware.psirt@broadcom.com
