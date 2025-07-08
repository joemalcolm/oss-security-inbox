Received: (qmail 23766 invoked by uid 550); 8 Jul 2025 17:09:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14128 invoked from network); 8 Jul 2025 17:01:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ttaylorr.com; s=google; t=1751994078; x=1752598878; darn=lists.openwall.com;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tri25EEqYIKLD74yzMXf+eJslSNyv3oHnuRAMZBciiA=;
        b=aasahC/vPt8bMg2wgFWhI/uM6JTFQ6eT+hY9uQD9yL9X/kljSv+B38c0LBf0wsoHcp
         u42s2rUquMibWpqCI2/6XaLV0v7fc6SikfAPTRcn+bCeLwIKvcTfxzXh2/QCgvn+aaf/
         6Q4jl5TlhdRV7075j2Y7nIm1j/Z65zvq6TizuU+DyefS79+pKrNeaFRD1OJqMCUA1ruq
         RV+717Mi5qnqEabn4boYJlyoYF1to3O9sdJ8uv3j/X6BaElq1IriZS1/xqjyWVROtOuK
         a5Qxz1kXmPMiVQkuHolzBjwLPSUHePuguO6DmJ6CPZNGlMKMtWoPx6wx9cZumGVCt/Q2
         eo8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751994078; x=1752598878;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tri25EEqYIKLD74yzMXf+eJslSNyv3oHnuRAMZBciiA=;
        b=ktqV0JzX3gDxiDEKX1QeWyzJSXpxsyEs7nA1c/8WUND6D8aLKhKBHUu+3cCwjR6ANq
         T2CvslPXJlv0lKoOd9ED3tw9hoS4s+pv0dXPkgngmdr5z5b0+ZG/ucUzN6NJsF+HV58D
         /V6svUDJ6O+rHlVkypzpLCd8IBwXLU+VRnKuPaZ1edm/X7zE2zqeIU5Vx8PXKfmyKxXY
         rx56QC+6bduySgv+QUuOI5xFGPmZDLzC7wdcdboomapAmOJc4g+CEk6ClxLlMWOz4oxi
         Gz2xvY1JMIJMpDZV2UyXM4FxzLM6sMLkWDYEYu5upMFCD19y+lwjmi7coajkLt0qRTRz
         gxlQ==
X-Gm-Message-State: AOJu0Yw1RESzjsLhdUhZKoKH2zWfp5ra9du4XhrmPyBPXHB5zataDrEp
	OchidkDIqIiS+UbU+gvC2AQo5vd2I3pUcDhm1jK8TnMod8XJBqYGwK8QTVoips0SXJ6N8ZmUagm
	MVnJp2Vo=
X-Gm-Gg: ASbGncvt+FC27qA13yRN7ySFP/ap957sBGjsJCsEyEoy2/3IFOWCroSv4LTgbiI9MqQ
	H2RK5Um2Z993KPItex7TVKvo1tah6tDmCyBAVqCCqkg0PTFXMJbNnqELR0AMc7vVeEdFtdKz82m
	8YRV4ng3vKr/7bt2yj0DahPT6EDGBXugyZcOc0BX922hXv29Fx7FSBrswJksE1DxYn4CcHFcSpL
	WKMB7+oUhzHieKtxPLh9hKvdvxYyZUUpOLWPoOYt6QfJeAqx9l3UmsG3+Wg4UM2yvgOSBLTGl2f
	Y+vbDtjETpGFb/sO7i519bE84ouvTM84/1wO2YCLAk8iakb/iho5p0cj2gLRWDADLIzGdeiNIPc
	t5Flo4JNAuccpcMhk0TfefE+zqoJ2aG2qJg==
X-Google-Smtp-Source: AGHT+IE2rHIVxKA3mR2g1z+XzyUjKo7XejCN7SACLv/RfDLqIObqTqrA4hLoA1BjO9QPIPhH8Vxc8w==
X-Received: by 2002:a05:6902:1b0d:b0:e85:fd57:cac with SMTP id 3f1490d57ef6-e899e1cc148mr19898278276.41.1751994076523;
        Tue, 08 Jul 2025 10:01:16 -0700 (PDT)
Date: Tue, 8 Jul 2025 13:01:14 -0400
From: Taylor Blau <me@ttaylorr.com>
To: oss-security@lists.openwall.com
Cc: git-security@googlegroups.com, Avi Halachmi <avihpit@yahoo.com>,
	David Leadbeater <dgl@dgl.cx>, Jeff King <peff@peff.net>,
	Johannes Sixt <j6t@kdbg.org>, Junio C Hamano <gitster@pobox.com>,
	Justin Tobler <jltobler@gmail.com>,
	Mark Levedahl <mdl123@verizon.net>, Patrick Steinhardt <ps@pks.im>,
	Taylor Blau <me@ttaylorr.com>
Message-ID: <aG1O2hp7Yh4/dmt4@nand.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] Multiple vulnerabilities fixed in Git

The Git project released new versions of Git today, July 8, 2025,
addressing multiple security vulnerabilities. Those vulnerabilities
are: CVE-2025-27613, CVE-2025-27614, CVE-2025-46334, CVE-2025-46835,
CVE-2025-48384, CVE-2025-48385, and CVE-2025-48386.

The new versions are v2.43.7, v2.44.4, v2.45.4, v2.46.4, v2.47.3,
v2.48.2, and v2.49.1. Many previous versions older than <= v2.50.0 are
affected.

The announcement from the Git project's mailing list may be found at:

    https://lore.kernel.org/git/xmqq5xg2wrd1.fsf@gitster.g/

We recommend upgrading. The addressed issues are as follows:

 * CVE-2025-27613, Gitk:

   When a user clones an untrusted repository and runs Gitk without
   additional command arguments, any writable file can be created and
   truncated. The option "Support per-file encoding" must have been
   enabled. The operation "Show origin of this line" is affected as
   well, regardless of the option being enabled or not.

 * CVE-2025-27614, Gitk:

   A Git repository can be crafted in such a way that a user who has
   cloned the repository can be tricked into running any script
   supplied by the attacker by invoking `gitk filename`, where
   `filename` has a particular structure.

 * CVE-2025-46334, Git GUI (Windows only):

   A malicious repository can ship versions of sh.exe or typical
   textconv filter programs such as astextplain. On Windows, path
   lookup can find such executables in the worktree. These programs
   are invoked when the user selects "Git Bash" or "Browse Files" from
   the menu.

 * CVE-2025-46835, Git GUI:

   When a user clones an untrusted repository and is tricked into
   editing a file located in a maliciously named directory in the
   repository, then Git GUI can create and overwrite any writable
   file.

 * CVE-2025-48384, Git:

   When reading a config value, Git strips any trailing carriage
   return and line feed (CRLF). When writing a config entry, values
   with a trailing CR are not quoted, causing the CR to be lost when
   the config is later read.  When initializing a submodule, if the
   submodule path contains a trailing CR, the altered path is read
   resulting in the submodule being checked out to an incorrect
   location. If a symlink exists that points the altered path to the
   submodule hooks directory, and the submodule contains an executable
   post-checkout hook, the script may be unintentionally executed
   after checkout.

 * CVE-2025-48385, Git:

   When cloning a repository Git knows to optionally fetch a bundle
   advertised by the remote server, which allows the server-side to
   offload parts of the clone to a CDN. The Git client does not
   perform sufficient validation of the advertised bundles, which
   allows the remote side to perform protocol injection.

   This protocol injection can cause the client to write the fetched
   bundle to a location controlled by the adversary. The fetched
   content is fully controlled by the server, which can in the worst
   case lead to arbitrary code execution.

 * CVE-2025-48386, Git:

   The wincred credential helper uses a static buffer (`target`) as a
   unique key for storing and comparing against internal storage. This
   credential helper does not properly bounds check the available
   space remaining in the buffer before appending to it with
   `wcsncat()`, leading to potential buffer overflows.

Credit for discovering CVEs 2025-48384, 48385, and 48386 goes to David
Leadbeater. Credit for fixing the first two CVEs goes to Justin
Tobler, and Patrick Steinhardt, respectively. Credit for fixing the
third CVE is shared between Taylor Blau, and Jeff King.

Credit for finding and fixing CVE-2025-46835 goes to Johannes Sixt.
Mark Levedahl discovered and fixed CVE-2025-46334. Avi Halachmi
discovered both CVE-2025-27613 and CVE-2025-27614, and fixed the
latter. CVE-2025-27613 was fixed by Johannes Sixt.

Thanks,
Taylor
