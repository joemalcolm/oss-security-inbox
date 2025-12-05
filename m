Received: (qmail 14141 invoked by uid 550); 5 Dec 2025 11:42:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9732 invoked from network); 5 Dec 2025 11:22:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1764933754;
	bh=P7/SNAvxehwVySP+J4NNT2Hdq+hxaMMqD0lo7cddUcc=;
	h=Date:From:To:Cc:Subject:From;
	b=vqE0mVUnSM4UZCPZcgCu2F4xkyPs5mQT0Y/VaW24U024sffblrIcwmoPed7J0jh3y
	 VpxN9jqrBz2Z2qQDQUOquhBhALXPsG+T8lmDhiu9JOkKQ/naYc7StSj3Z2i8m3/29a
	 z/Bm+nXLgFKydnOHNr6NbmvV9PQz1bk1rNveBxxE=
Date: Fri, 5 Dec 2025 12:22:28 +0100
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: landlock@lists.linux.dev
Cc: oss-security@lists.openwall.com, linux-security-module@vger.kernel.org, 
	lwn@lwn.net
Message-ID: <20251205.saiZ2Pauleew@digikod.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
Subject: [oss-security] Island: Sandboxing tool powered by Landlock

Hi,

I just released Island, a sandboxing tool powered by Landlock:
https://github.com/landlock-lsm/island

Island makes Landlock practical for everyday workflows by acting as a
high-level wrapper and policy manager.  Developed alongside the kernel
feature and its Rust libraries, it bridges the gap between raw security
mechanisms and user activity through:
- Zero-code integration: Runs existing binaries without modification.
- Declarative policies: Uses TOML profiles instead of code-based rules.
- Context-aware activation: Automatically applies security profiles
  based on your current working directory.
- Full environment isolation: Manages isolated workspaces (XDG
  directories, TMPDIR) in addition to access control.
- Transparent shell integration: Automatically sandboxes commands in
  your shell without changing your workflow.
- Zero-privilege operation: No root access or special capabilities
  required.
- Layered protection: Multiple profiles compose cleanly with
  deterministic ordering.

It's a work in progress, so be careful.

Feedback welcome!

Regards,
 Mickaël
