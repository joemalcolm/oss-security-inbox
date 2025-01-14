Received: (qmail 5628 invoked by uid 550); 14 Jan 2025 18:03:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26405 invoked from network); 14 Jan 2025 16:54:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1736873657;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=YVMdnE5wGAJd3RjPJEwM9c8esfL23T6M9airmTz5uSo=;
	b=hdVHzYJiS7mu15qe/WwbhsRpcJwGhcoiZkmBxIIK5tZpH1ec3oGR/V2qUwCCFzwpVKlMbs
	asrjql94cQZTX0wvCw73zyBkYxdxOS2lUlIfkb4PRWU0i+Ued0V1XWdjVbrhRNf08X+lmm
	5Wr6U033FV3H9HG5LwkhXtU303JyLz8=
X-MC-Unique: -P8b_x9oPJ6rKq05pux1wA-1
X-Mimecast-MFC-AGG-ID: -P8b_x9oPJ6rKq05pux1wA
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736873653; x=1737478453;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YVMdnE5wGAJd3RjPJEwM9c8esfL23T6M9airmTz5uSo=;
        b=sN/MWR+sumZTcb3AJRf3Y3moOh4/mQHvnQsh+J9BxeY3lzd6VUN5KxLKCN8b94gSdZ
         Ab+aRpGr5X8hk6cuLpvmtl+2bwnX9GJJARX8KJUYqxItXPBW5VSlqnUeKPggIAG8SXNj
         2OuSizrCFZ5dDlSwlcwqW9dnPsSi5qWDVLQzTeFohhEWjEOX96lWmSN+hUmWmhSN4ySn
         q1fijuTMFU7Nj0ajPrVAm0Yle7sV0HxmC7Yalxl0UqSl19IT0fxKIkH0WkPaI8HYgZjC
         b1SyLCZwEsmhI7Y5AvsNlWS0VeFamFmiu/ZMFVoJfy8I2Vze+F3hMxprnr1TpwjwoOLd
         wBcA==
X-Gm-Message-State: AOJu0YyCrtDIDKRA8SsajNvME7rVqWango+95YFvaPgeG3mtnb1+ngRV
	C+F6gKBSCwwhrwdC2f/dVxCmBwVjB429dxoAqQ5iVY+dFxeX1JAV6U9mD+qENm+OcTFU9E91pjD
	kPiU7EvsAa5fWyg9+0eFUszus3WrI+F844aNJxZyJ/XPhcF+mZsAMoQoKwft38EITOXtdvjul2o
	Jvr+3Gd42oTTB4/Cv91moilxug4fBCs4o/qXXzSMy3tFBZa0cg/4c=
X-Gm-Gg: ASbGnctE9wGfff8Xa1ZS9cP052FFwj4G5wDgmhJOwTh8soIFy9jkJPBVktQic1LDi7V
	JJekkvvHa0z6H0M2pshGwCEAH8/xKuwBdW+a0XQ==
X-Received: by 2002:a17:90b:274e:b0:2f4:4003:f3ea with SMTP id 98e67ed59e1d1-2f5490f19c7mr39865761a91.33.1736873653598;
        Tue, 14 Jan 2025 08:54:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHiGmu1Ed8Yf0DuAuf5bdqDUODtXjLBp2l5uatOmDfUZfZfnO5di78C8RPb4eSgLINWBqzo/c0hUgyEZcVoqj8=
X-Received: by 2002:a17:90b:274e:b0:2f4:4003:f3ea with SMTP id
 98e67ed59e1d1-2f5490f19c7mr39865716a91.33.1736873652970; Tue, 14 Jan 2025
 08:54:12 -0800 (PST)
MIME-Version: 1.0
From: Nick Tait <ntait@redhat.com>
Date: Tue, 14 Jan 2025 09:53:56 -0700
X-Gm-Features: AbW1kvYQuxwk2dDD3rgCN-JhRG7kB27_RKMUW9yipV43TE_5QKr0W_wMeszvaQk
Message-ID: <CALDM2HfAOzs+zr3XLCDAKH8oOosigdaNooUANDf=Ez5mLSvQcQ@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: e-P4BsusX4sn9w9AK6lcctOLqN2QlrCATcDaQU_Y7Tg_1736873654
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000001b08bf062bad69b8"
Subject: [oss-security] RSYNC: 6 vulnerabilities

--0000000000001b08bf062bad69b8
Content-Type: text/plain; charset="UTF-8"

Hello OSS-security,

Two independent groups of researchers have identified a total of 6
vulnerabilities in rsync. In the most severe CVE, an attacker only requires
anonymous read access to a rsync server, such as a public mirror, to
execute arbitrary code on the machine the server is running on.

Upstream has prepared patches for these CVEs. These fixes will be included
in rsync 3.4.0 which is to be released shortly.

CVE Details:
[1] Heap Buffer Overflow in Rsync due to Improper Checksum Length Handling

CVE ID: CVE-2024-12084

CVSS 3.1: 9.8 - AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H

Description: A heap-based buffer overflow flaw was found in the rsync
daemon. This issue is due to improper handling of attacker-controlled
checksum lengths (s2length) in the code. When MAX_DIGEST_LEN exceeds the
fixed SUM_LENGTH (16 bytes), an attacker can write out of bounds in the
sum2 buffer.

Affected Versions: >= 3.2.7 and < 3.4.0
Reporters: Simon Scannell from Google, Pedro Gallegos from Google, Jasiel
Spelman from Google

Mitigation: Disable SHA* support by compiling with
CFLAGS=-DDISABLE_SHA512_DIGEST and CFLAGS=-DDISABLE_SHA256_DIGEST.

----------

[2] Info Leak via Uninitialized Stack Contents

CVE ID: CVE-2024-12085

CVSS 3.1: 7.5 - AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N

Description: A flaw was found in the rsync daemon which could be triggered
when rsync compares file checksums. This flaw allows an attacker to
manipulate the checksum length (s2length) to cause a comparison between a
checksum and uninitialized memory and leak one byte of uninitialized stack
data at a time.

Affected Versions: < 3.4.0

Reporters: Simon Scannell from Google, Pedro Gallegos from Google, Jasiel
Spelman from Google

Mitigation: Compile with -ftrivial-auto-var-init=zero to zero the stack
contents.

----------

[3] Rsync Server Leaks Arbitrary Client Files

CVE ID: CVE-2024-12086

CVSS 3.1: 6.1 - AV:N/AC:H/PR:N/UI:R/S:C/C:H/I:N/A:N

Description: A flaw was found in rsync. It could allow a server to
enumerate the contents of an arbitrary file from the client's machine. This
issue occurs when files are being copied from a client to a server. During
this process, the rsync server will send checksums of local data to the
client to compare with in order to determine what data needs to be sent to
the server. By sending specially constructed checksum values for arbitrary
files, an attacker may be able to reconstruct the data of those files
byte-by-byte based on the responses from the client.

Affected Versions: < 3.4.0

Reporters: Simon Scannell from Google, Pedro Gallegos from Google, Jasiel
Spelman from Google

----------

[4] Path Traversal Vulnerability in Rsync

CVE ID: CVE-2024-12087

CVSS 3.1: 6.5 - AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:H/A:N

Description: A path traversal vulnerability exists in rsync. It stems from
behavior enabled by the `--inc-recursive` option, a default-enabled option
for many client options and can be enabled by the server even if not
explicitly enabled by the client. When using the `--inc-recursive` option,
a lack of proper symlink verification coupled with deduplication checks
occurring on a per-file-list basis could allow a server to write files
outside of the client's intended destination directory. A malicious server
could write malicious files to arbitrary locations named after valid
directories/paths on the client.

Affected Versions: < 3.4.0
Reporters: Simon Scannell from Google, Pedro Gallegos from Google, Jasiel
Spelman from Google

----------

[5] --safe-links Option Bypass Leads to Path Traversal

CVE ID: CVE-2024-12088

CVSS 3.1: 6.5 - AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:H/A:N

Description: A flaw was found in rsync. When using the `--safe-links`
option, rsync fails to properly verify if a symbolic link destination
contains another symbolic link within it. This results in a path traversal
vulnerability, which may lead to arbitrary file write outside the desired
directory.

Affected Versions: < 3.4.0

Reporters: Simon Scannell from Google, Pedro Gallegos from Google, Jasiel
Spelman from Google

----------

[6] Race Condition in Rsync Handling Symbolic Links

CVE ID: CVE-2024-12747

CVSS 3.1: 5.6 - AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N

Description: A flaw was found in rsync. This vulnerability arises from a
race condition during rsync's handling of symbolic links. Rsync's default
behavior when encountering symbolic links is to skip them. If an attacker
replaced a regular file with a symbolic link at the right time, it was
possible to bypass the default behavior and traverse symbolic links.
Depending on the privileges of the rsync process, an attacker could leak
sensitive information, potentially leading to privilege escalation.

Affected Versions: < 3.4.0

Reporters: Aleksei Gorban "loqpa"

Best Regards,

Red Hat Product Security

Nick Tait

He / Him (why?
<https://medium.com/gender-inclusivit/why-i-put-pronouns-on-my-email-signature-and-linkedin-profile-and-you-should-too-d3dc942c8743>
)

Incident Commander - Product Security

<https://www.redhat.com>
<https://www.redhat.com>

secalert@redhat.com for urgent response. My working hours may not be your
working hours. Do not feel obligated to reply outside of your normal work
schedule.

--0000000000001b08bf062bad69b8--

