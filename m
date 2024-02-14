Received: (qmail 18035 invoked by uid 550); 14 Feb 2024 14:48:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1467 invoked from network); 14 Feb 2024 14:38:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1707921655;
	bh=nUMrKzdCBjMrk/WjxoYPqTtsXrG9xbIf0saYYla3RJQ=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
	b=UQamtnPQJCrUTcKhZX35hz6Kdr+eMv8t57Jfcgk4nzjWaWx0jc6pdEp5qbuiUvFzl
	 1c7sGxN007iaa0d3PLJ97s00wjLaqtkmWElbj656ctqSzzzfT0xEYhyAy/A2r2eAiZ
	 YowDzFA2UTefN+BxA9ZIdZMAGAIHzUN21X0ECOSFNNnrIRqRbcvCZWlTcYRMIT7FDu
	 U3W4nzRsFjutjRBwFx01u6KvyWTRDaUHMfjfFBFHL2he11++vqhSRKhFsFlCcqEurD
	 jTwGoJAQ2j7I0Uofdm3BaZ46fYLs1txNZk57q94wuBuUGFGIaPClmu5C9rVe7TCuyl
	 iwdrhGsEC9zgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707921654; x=1708526454;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nUMrKzdCBjMrk/WjxoYPqTtsXrG9xbIf0saYYla3RJQ=;
        b=bjwwoAfFvNVb0WdAiOlFXk+DXX+WuS4xX2QSmluW+2XCOdOdfubkYDuMG4BCE9NOxQ
         jpPlx/PdOogsuBVmrD/uBtmsM5tF7Dv/BwYy8oyO9ZCoxaltm5AqbgHSr/zf0HBB37aZ
         EVOatXmGk/62eFQ+EA6Q7s69cbvbLdyhpOKPIUKskVd6gubhWKnGft7tlKXWO0X0Pg6m
         Wof5aoEo/TBwAdoo7ogWnfG1b8/dQe7oK4nRHdIKSv4PnSgHN6G7OTF577GcL67zHLFT
         S+KQ4U99Y3enyREy6PRMTk1Oesf7x8aRdsaDPRmNRJmajJlOcbp+f27SJEQNvfCBN2NX
         6+yg==
X-Gm-Message-State: AOJu0YxHwC/Uyc30b+Rwqf1wUqjht79ugFoSYUzQKxDOTk5RXSoKjJBZ
	ThdKeNywXJR7s7FIPjW+8EdeSwlHjCnCsT/MEkuKE2FmpyW1zONhKIp5AVb7Ip4MIkgDrrjuof7
	HcjXqQ4LxCqx9uGtJ8B/DB6e6aMirjCrR03OZfv/AlC8A/ePudFBxl+FzwdKg9onbxNjhufTMlb
	M2MFGZ+StPGEhmcAW3jEdrBOLeQghMPLdB7FgvK/IWdbukthVC6uOV0QzqxZ2utY8B4tM=
X-Received: by 2002:a4a:7618:0:b0:59a:e669:a37c with SMTP id t24-20020a4a7618000000b0059ae669a37cmr3543094ooc.1.1707921654007;
        Wed, 14 Feb 2024 06:40:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEOha6ijSi5Hg5HtbwBiWrB4MRk7V/M4twUkxs4bhyyzl/6DK4BMbADZASl+CPF5F+0WdsHG+QzLWgxbVwYLoE=
X-Received: by 2002:a4a:7618:0:b0:59a:e669:a37c with SMTP id
 t24-20020a4a7618000000b0059ae669a37cmr3543063ooc.1.1707921653638; Wed, 14 Feb
 2024 06:40:53 -0800 (PST)
MIME-Version: 1.0
From: Mate Kukri <mate.kukri@canonical.com>
Date: Wed, 14 Feb 2024 14:40:43 +0000
Message-ID: <CAAfJHtpMWco6y_wRRzrgQfJZmwzsMG6P8D5FFWLMAOihuc2dZw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Secure Boot bypass in EDK2 based Virtual Machine firmware

Hello,

We have identified a vulnerability resulting from an insecure default
configuration of OVMF/AAVMF
and similar firmware as used in Ubuntu's edk2 package, the firmware
used by LXD, and potentially other similar software.

Said EDK2 based firmwares implement UEFI Secure Boot functionality but
also contain a copy of the UEFI Shell,
this gives an OS resident attacker (without physical access or
pseudo-physical access) the ability to execute arbitrary
code at system level, and thus the ability bypass UEFI Secure Boot.

While no proof of concept was developed, the above conclusion was
drawn from a theoretical attack along the lines of:
1. The UEFI Shell has built-in functionality for unattended scripting,
and a command (`mm`) for writing directly to physical memory, PCI
config space, etc.
2. An OS resident attacker can manipulate the boot order to execute an
arbitrary UEFI Shell script containing any Shell commands upon reboot.
3. These commands can then write an arbitrary unsigned executable
payload to physical memory, and take control of the instruction
pointer by overwriting a return address or some other pointer
resulting in unsigned code execution.

We have developed a patch to disable the UEFI Shell
when Secure Boot is active, and in future, we plan on removing the
UEFI Shell from such firmware images.

The Ubuntu edk2 and LXD issue are also known as CVE-2023-48733 and
CVE-2023-49721.

The issue is tracked on Launchpad as
https://bugs.launchpad.net/ubuntu/+source/edk2/+bug/2040137 and
https://bugs.launchpad.net/ubuntu/+source/lxd/+bug/2040139.

The TianoCore project does not consider this a vulnerability in edk2
as the configuration option to disable the UEFI Shell is available, and
deciding this policy is up to downstream vendors and distributors.

Best regards,
Mate Kukri
