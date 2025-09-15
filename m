Received: (qmail 7959 invoked by uid 550); 15 Sep 2025 14:20:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28314 invoked from network); 15 Sep 2025 09:13:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757927596; x=1758532396; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C+RVsURbcxKX9H37jbgD9C3LZMtkrcRXC2ca155xFYw=;
        b=Mo1pvQlzBkGX7iTHT9teB7c1/TGG0dxR8Pw4x+80Isfssiq7HiFmG339OyxD/oa88x
         RYLsGXuBkMpSHJrcY/qcqBsfjpt7FQD2JbdnnTtYeEx2u4ip9OLkCmYKqmGOE4L+zEjo
         FNUFBHfAGcOuGnnDqMCjyOUxUQ5l+Hme0xG5r44F/MgnsdB0GvZj/T4eo7U+QU+jKsZw
         HXktiqNJgZnmaJ0nmkqTA9V0npB4xJvtcMoUCZ+KgBJOiaaKuZr7hR1WYsRBTyzjfXpG
         USiT86jGaZgunr6Nip6BIZAoHtBWwH8xkVwiRP9muGYX8NfIcTF5lHLHOSQV+ApmBW9n
         aKvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757927596; x=1758532396;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C+RVsURbcxKX9H37jbgD9C3LZMtkrcRXC2ca155xFYw=;
        b=u9hl3QS5Ds8E6KoIoKiswbQwv10RlblRUOcveyaXl2cvXYAkiIrI3LMbLnl37xvXGc
         1UtbQGT0uK8hkduJcqrhJ0NsjMbtl86n9O1I+MzPjGoGmAs9m1zB0sIFTDKSZlqBsVuw
         n7LJXAA7itgbohxEWSVdylwvNjl1droOsH2eKnG6rjKJkoyslSLPy3CjEG25GKvSfu4l
         Gnuo6jzQpgsPkuPzPIsahgoC50M0mnMeROXW4nkP8TarUMrDSG4M3cWg/SJqTqqBScb5
         AZozACPfUbQ9JAXw5FBkigW+dIwaJ1xUW+Ye9VVqJjDiYANiDk5xK0byz0VtGI/MSRVH
         oitA==
X-Gm-Message-State: AOJu0Yz2OnMY+B1fU8t7nLqwbC84/4Qgh/zE3TfmOHRJdfnR9iQKy50a
	lvwhZSqx2hot+iR4y4eOEG5N4Ni9xZPPOoitx+55ZqBqCKGU/LFdr+ARUZbVH5n9hwebniVRtn7
	YmTIXi+o1TD9sDaIi+7Z1/VxjToWDPoYFn4C4CDI=
X-Gm-Gg: ASbGncsg3p4niRApZ30X+HK6Z8MHnIeLfMmbueMDCbntEmI26Z2lnk4rppdFDLgzaXC
	97UvrFLzuiaf7RrvZov02K34ug4TwDMw9bR5ym0ABDZ92ZcKn/r9vQDx1HD3pyoSeJN5AeKvtUM
	8PuaXLZUhWIUpcCt5Kco3XI7xHerl9cNFEBKeiK1YHeGHqROHfJPYNY3/oOHBrhsKZKs3L6w+Ij
	fcpITn5rcHsr6Kjjg==
X-Google-Smtp-Source: AGHT+IH/tzwXOePhYZLgX0FlFFboDt9TBAp5cbHrFPdsHzuL706B++8tYQpNhpNdO/lMAPg5jbcZ2Af2fPRd2B+dn1k=
X-Received: by 2002:a05:6a21:7e8b:b0:263:375b:885e with SMTP id
 adf61e73a8af0-263375bddfamr3613674637.26.1757927595929; Mon, 15 Sep 2025
 02:13:15 -0700 (PDT)
MIME-Version: 1.0
From: tianshuo han <hantianshuo233@gmail.com>
Date: Mon, 15 Sep 2025 17:13:04 +0800
X-Gm-Features: Ac12FXwC0HR96rVzb8EBJHwz2tu1toFhIRrywXbTefwrmvpIz-BzYMw9naO31O8
Message-ID: <CAG=tWCQzAE6rdBztTBiGvhuLoCMLbMqdkSU5UgXVe7ZcNRS6Mw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [CVE-2025-38501] Linux kernel: KSMBD service DoS by TCP handshake

Hello,

A security vulnerability in the Linux kernel KSMBD subsystem has been
assigned CVE-2025-38501. This issue allows a remote attacker to exhaust
the KSMBD server's TCP connection limit and prevent other normal client
connections.

Details:
- CVE: CVE-2025-38501
- Subsystem: KSMBD
- Impact: Remote Denial of Service (exhaust KSMBD server's max
connections)
- Affected versions: Since KSMBD merged into kernel main line in 5.15
- Fixed in: Upstream commit e6bb9193974059ddbb0ce7763fa3882bd60d4dc3

Description:
A remote attacker can exhaust a KSMBD server=E2=80=99s maximum connection
limit by performing a TCP 3-way handshake and then not responding to
further packets. By default, the KSMBD server will hold such
connections indefinitely, allowing an attacker to consume all available
connections. While a timeout can be configured in the user-space
configuration file (with a minimum of 1 minute), an attacker from a
single IP address can still cause a DoS to the SMB service by
repeatedly initiating such connections.

Reproducer:
A public proof-of-concept (PoC) is available at:
https://github.com/keymaker-arch/KSMBDrain

Timeline:
- Reported to Linux kernel community: 2025-08-01
- Patch merged upstream: 2025-08-08
- CVE assigned and public: 2025-08-18

Best regards,
Tianshuo Han
