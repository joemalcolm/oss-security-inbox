Received: (qmail 30222 invoked by uid 550); 20 May 2026 00:01:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27757 invoked from network); 19 May 2026 23:46:10 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1779234361; cv=none;
        d=google.com; s=arc-20240605;
        b=ZBOCj5xYH50+uzbIgYuPt0E4aqXKJgxLOHRI0N+VQ17A1jlRz8QWO5g1yPLfZrWxNu
         6MtSi9vbXM7uzPHCYyCoqKM4L7Vd1/cVC7rFh9Zq67TeyLCvCBJiSqDEUax6S4O0eyp3
         OIm0sfopXDcbj0bBcsa4w7RwLxzOQ1MhEne3nwmveZ0ZVA9g7AdfgkKPs3/Nz3Xrq82s
         4PGWWvhg5imScqwYq0vo85klbV0Hkn61xqQRiDQRKy7K3/tglX47VFrHZHdT51mHHBUA
         e5RzDE4gKWqE+1iWxSaiYOvdcNUgp0bU3IjW6AMBbBbYwtvgzlbEpLc/w0cQswg0dcMM
         vN8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=7JYPogB6e6Mb3rTx0nxgiiq3JFFe/CgSkK2ELDvIJig=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=ExeACS1X/H6n39+W3CcvNBqeonCDiTZXXXVpwMkqbzwQIulEaatyCs/GzGt6HPC8zc
         YKZWubsh2ZZcKg/ol8m6Zw1r9JgJIluUlkaYmZLCPMjdCyD4h8yj2bCd2dt0KILEUSZd
         ZzoIExYP+JgSjd9W1KQ2Y6jilbbWngX6kx8hHNDI+6ibaZ8gbjCaeIQwbcJgdoIDZT1C
         bVSG9in3P1fEvmcWIApxDUDTr0sl6sbf6/LVWmg6eXpUPIJwzjGJtZZnIcMopbUS4mUO
         yzkpBrxNllihWneUD86h0WuWQcni4pNBT2bfQjeRCrmIb8roOKcu9tMUe4cHRCz7JtgU
         RLpQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779234361; x=1779839161; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7JYPogB6e6Mb3rTx0nxgiiq3JFFe/CgSkK2ELDvIJig=;
        b=OxGLDCucB4lmtauIJHxYBsQCO8ArW8Q0G3++v/xy575hpc4DIhnw6fUyGgiLawwTlU
         nkVTZsh2yppxH+6mtOKmaQbGDhkDYvpT0Qkoge709GZ1IhLX/e4XbbxHvkwV4iwLrTah
         3gD4TXgiNhiJg1q4Z/HmGvUCo7BV2KKOCDoQzq4om8r5mI2nBZs5NBH/HGRxdmY8Nbgn
         OUw5H0nLZMBt3TDAF48AED0bKCDl/o9a0YtSNF5wdccRQbhZzokzK3dvxKxB4vhzbYbJ
         Ynjdk+vp2DO9ofc0V7Y+jrQSjS6pNlf7ardlyiqPyRM1yGBfaOLrZN8GHGlABBd9brgJ
         1pHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779234361; x=1779839161;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7JYPogB6e6Mb3rTx0nxgiiq3JFFe/CgSkK2ELDvIJig=;
        b=GzCuOqLX2rJ3vbYs6OtsM1YY/zZTiAQWIvnjvAFWrJyy17GGUo2LHve2eQqY+Z7KxR
         ewru3jT3O7poUc4mTpoQhbwkPk02tsVwDeuzLcyBnnHRVrofjFNVbyiAa1Tu+CabFAT/
         QsYf3ukx0KvpXqPqJX9sxwGufyKmEGe4pde9c8Aio5iIQg2Ce0ps5IqtkMm+2cGhXK+w
         T54FWy7uJui0wmk9gLYzQqnHI3JX8yVmCNh5bl2m9Cq9PlYYaGCliQ0gpbxHGgc9pxv0
         31p/BQGv8iYrnh1AJ+b5abK7/z3/rB7Q35MkDT+ZZkkqCgQXzWj9cPBOq2W2ItWQOQPK
         nlSQ==
X-Gm-Message-State: AOJu0Yzs6zN4um9vdkv5ddbLPFbUFqwL70JQs0moOpxnBOzotZTgkGHl
	B9K5SThpg0VqWlJ2hCRpVluuFbIrQcMB/R/ME4VMs34kTXmI0sfhku5cCmkz+Yc0wwjqrBWdSYS
	i6jplOoVE6MStsCFB+NyiViqcpOZvmL17p5TjN9w=
X-Gm-Gg: Acq92OGxMutUeu5BzrHtKKsOwhqpymj+/hiMbUjQz3IsiGiUgc+lorymqYASmPVpP6z
	ShbNiLQx+W+TgzQ45Zc4O9ucIcpRca1Y7554jamivmXpMQdNS5seOJCYN2Py2bVMeCBeFvU3Mbr
	dq74sCIGw1WlqvdLrp7Fe0xrmj21EC9vlspyC65a5ScXH5pfYd2nctrnV4+JHpmj3bZZRmOPs/M
	sYoMQ2FIhXWVL8oGIscHFAkey2yj3zj7asgg5iDxjeCf7kNMPQA/Mp8nl/6kG1tWjcXbiZG/ID5
	6vDSpmHCFY4f/tfcoGAa0nJdeQ==
X-Received: by 2002:a17:906:6185:b0:bd0:6dbe:22b1 with SMTP id
 a640c23a62f3a-bd5177ec5dfmr1205673766b.12.1779234360827; Tue, 19 May 2026
 16:46:00 -0700 (PDT)
MIME-Version: 1.0
From: Jiri Hladky <hladky.jiri@gmail.com>
Date: Wed, 20 May 2026 01:45:48 +0200
X-Gm-Features: AVHnY4Imeu6-9HeICp1GtTBpmMBcFCb_du9BGnO6IyTSkh4gaOO3xqsrnhleDX4
Message-ID: <CALT_uBTUqWwg4uUgPj4Ax3TV1Hhk4qfwvb8RHvti84C6nyCkyQ@mail.gmail.com>
In-Reply-To: <agxXF1J53iSJIrP6@suse.de>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] =?UTF-8?Q?CVE=2D2026=2D41054=3A_haveged_=E2=80=94_privilege_escalation_via?=
	=?UTF-8?Q?_command_socket?=

Hello,

A privilege escalation vulnerability was found in haveged, the Linux
entropy daemon.

CVE: CVE-2026-41054
Affected versions: All versions with command socket support (1.9.14+)
Fixed in: 1.9.21

Description:

The socket_handler() function in src/havegecmd.c checks the connecting
peer's uid via SO_PEERCRED and sends a NAK response to non-root
callers. However, after sending the NAK, execution continued into the
command switch instead of returning. This allowed unprivileged local
users to send commands (MAGIC_CHROOT, MAGIC_CLOSE) to the root-running
daemon via the abstract UNIX socket.

Impact:

A local unprivileged user could force the daemon to chroot to an
attacker-controlled directory or close the daemon's command socket.

Fix:

- Add goto out after the NAK response to properly reject non-root connectio=
ns
- Move the credential check before command parsing as defense in depth

Links:

- Release: https://github.com/jirka-h/haveged/releases/tag/v1.9.21
- Fix commit: https://github.com/jirka-h/haveged/commit/3870de0
- Hardening commit: https://github.com/jirka-h/haveged/commit/bcd7e52
- Bug report: https://bugzilla.suse.com/show_bug.cgi?id=3D1264086

Credit:
Reported by Dirk M=C3=BCller (SUSE).

Thank you,
Jirka Hladky
