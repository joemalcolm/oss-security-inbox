Received: (qmail 26276 invoked by uid 550); 4 May 2026 22:35:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11796 invoked from network); 4 May 2026 21:26:53 -0000
Message-ID: <fbbaf5ed-23ad-4d45-92a6-1f620e422be4@linuxlounge.net>
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linuxlounge.net;
	s=e202603; t=1777930003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=N+5EOL0acmKPFHUWaPbw3oX5i0YlETBrZ7OT9H0/eXM=;
	b=luRlAk6fYm4YdSB3Az3x71hWyJyI7LyoJbpld46F5QJGV2RTG4+Q50sfIMN5qlok2KzbZv
	ujY8yIjmUxBjMOCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxlounge.net;
	s=r202603; t=1777930003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=N+5EOL0acmKPFHUWaPbw3oX5i0YlETBrZ7OT9H0/eXM=;
	b=CftwR2ASBIkgATAAh4uG9lS6Dzi9Ld6VvZt2xGyGADYEjr6qcKofVYTW4OWJ6Kbfzww/82
	ISuh+vkpYlXWR+7cectdn4gxY2p98XSyb3L297PvVhSNM21vC4SLF4b4VR+19hPgxNmcUd
	peYAnShKf0AwkCI/HezObyYhiKibFPLbpGd1wXLNAAA2wnVGNDSJvXSdRb/ZJUqYoQMYd1
	oD93e3EF2FuoSukM6acdiUxZNn9kQ6zs20OIsM60iyvu2Fiq6KL0wJxuFoTcrxZXmKHmEA
	OrIRwgztqTpWxm9aIQAj3IcpvbuNU+he6HBjtjh+r0zOFBLWxmc+58PKisso2w==
Date: Mon, 4 May 2026 23:26:38 +0200
MIME-Version: 1.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Martin Weinelt <martin@linuxlounge.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Nix/Lix: local privilege escalation in daemon process

Nix is a package manager and build system for Unix-like systems. Lix is 
a community-maintained fork of Nix. Both provide a daemon used in 
multi-user installations to perform privileged build and store operations.

The Nix and Lix projects are issuing a coordinated security advisory for 
vulnerabilities in their daemon implementations.

A buffer overflow in the daemon may allow a local attacker with access 
to the daemon interface to achieve arbitrary code execution as the 
daemon user (root in typical multi-user installations).

CVE assignment is pending.

Fixes are available, and users are strongly encouraged to upgrade.

For full details (affected versions, fixed releases, mitigations), see:

https://discourse.nixos.org/t/security-advisory-local-privilege-escalation-in-lix-and-nix/77407


Martin
