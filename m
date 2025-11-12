Received: (qmail 3241 invoked by uid 550); 12 Nov 2025 16:36:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23803 invoked from network); 12 Nov 2025 14:09:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762956549;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3XipXBFu6PgMm5jtRb03YB34UvX0V5a7BENxn2lTvfE=;
	b=gKw1JZ5gT0EnOSjzG/gnz3qWMCd7AbMYk3Z7KZ27FdSp1UPWA8V4ho/AH02ZJHXfGH+CI6
	h05IJMSg5FVSCxQ5QUcBPUcjLqmtNt+cLr5G6scAbs54TKXKYN/v0pB22FJkv5Vf09rGQE
	F8cSRXq1r6cvDOgdFiC0hYAtKZ6jJRo=
X-MC-Unique: 6lHFWpauP4OKzqliAlNSuw-1
X-Mimecast-MFC-AGG-ID: 6lHFWpauP4OKzqliAlNSuw_1762956547
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762956545; x=1763561345;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3XipXBFu6PgMm5jtRb03YB34UvX0V5a7BENxn2lTvfE=;
        b=vn2ZCIc9f86oFo3caoFiqH9cdMEtVXq7JFdsBvH4+Iq6J6CkAZlHDa/evAO6QUIcw/
         o0MyZTmR8Frt39TZcn5fn8uunC67lCuADGxwIujEDKIVhYjw3S5fNKf5fgcaWM2ayzhl
         UuSxknZozhYJ/08aXm6pzlfeYKhhj2B71Ylp7hF85cD34RRcraYJ+Im2bkPfp7z3Er5N
         gDtMPhMZJoI5HASe8WyCQwz4mD7FtYaqnxMrqj2DRB0nZwBXDthUo8wPXrD2QXkmZDaP
         oek4YoAcdUfUPFUPVVEuoHBW0tqqi50xVmga2jnGhutM2+H/MkEQb2N2uDXZJzTtNVfy
         bMPg==
X-Gm-Message-State: AOJu0Yz/czo4416bTO/N21Od77FFTthqleVNPgDUK909aFx7UlLvAFtL
	2Evf2H99n3LdAXT7Z/Zclm9mMLl2bl2mVYb5PBcFZOPHH2nUJm5z/KW2UIWT4VOLenfUkY8/dc/
	WIkxxdqJsgCE59f621HdBQbVyVa49LD2QmsowdVi7u0la2HAOOTJam0LxlfedIJ5RdBBoOW569I
	FXS7v4yDJ7K2tpqyH0Nzmnayi3rV+UXppS5Zc/S3qKzgWN7zETSWIu
X-Gm-Gg: ASbGncuojKtRZTDWr1c7DstQHwdb+3OKXFha6fWz73tCrECPvekTSyzCe+LJ8MxIB7v
	cg931sD/WnoTK4r5Pra8DPeA88szD6zENTUe4WF+diFKsfCrjx+MjXYISUAmyPtE58VJpFc23Zu
	w9ef6GoEIAb1NXbW632TPGN1BBP25UIjvgpI+Fqu7dxx7Of3S9Xzv4emT0GsdaF5FwHM7DE2xy3
	ak3acBaF27tIL8O9eDSngloJ5xgMcbouUPmDnvnJIhEA7qhYF50YypQN5I482JNV4HmetitCPR6
	Q+tMWNDd/W5JEsyly4pVBFYeKjbExxYrSacTo6F2PJomF4Ch+8borARTWFKKheJtj9c1Mgf8
X-Received: by 2002:a05:6000:2306:b0:42b:38de:f00b with SMTP id ffacd0b85a97d-42b4bdb2bf7mr2466924f8f.35.1762956545359;
        Wed, 12 Nov 2025 06:09:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQKZ4bxqnHGNBQPcOlH33a0WWryre+7MsDTkhya/exg+WmNIPpfl1pMT2wyCQxdEMgITjqiQ==
X-Received: by 2002:a05:6000:2306:b0:42b:38de:f00b with SMTP id ffacd0b85a97d-42b4bdb2bf7mr2466895f8f.35.1762956544876;
        Wed, 12 Nov 2025 06:09:04 -0800 (PST)
Message-ID: <12c38708-e5b8-4901-b0e2-b662bd8c3190@redhat.com>
Date: Wed, 12 Nov 2025 15:09:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Cc: Red Hat Product Security <secalert@redhat.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gqcU4L4J6l8o3dxd5U3INhA3tXWNhKTvRZiicJk7Lj0_1762956547
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-64503 libcupsfilters, cups-filters 1.x: out of bounds write
 in pdftoraster

Hi all,

we have moderate CVE-2025-64503 in libcupsfilters and cups-filters 1.x 
projects about out of bounds write in functions related to pdftoraster 
filtering reported by big-sleep-vuln-reports.

The CVSS score is 4.0 with CVSS v3 base 
metrics CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L

The fix lies in libcupsfilters:

https://github.com/OpenPrinting/cups-filters/commit/50d94ca0f2fa6177613c97c59791bde568631865

and in cups-filters 1.x (which contains libcupsfilters library before 2.x):

https://github.com/OpenPrinting/libcupsfilters/commit/fd01543f372ca3ba1f1c27bd3427110fa0094e3f

The detailed description of vulnerability is present at

https://github.com/OpenPrinting/cups-filters/security/advisories/GHSA-893j-2wr2-wrh9


Have a nice day,


Zdenek Dohnal

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

