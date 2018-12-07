X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["673" "Friday" "7" "December" "2018" "11:19:43" "-0600" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1544203183.3826.2@mail.igalia.com>" "18" "[oss-security] Invalid free in cairo_ft_apply_variations" nil nil nil "12" "2018120717:19:43" "[oss-security] Invalid free in cairo_ft_apply_variations" (number mark "U       mcatanzaro@i Dec  7   18/673   " thread-indent "\"[oss-security] Invalid free in cairo_ft_apply_variations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22259 invoked by uid 550); 7 Dec 2018 17:25:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17572 invoked from network); 7 Dec 2018 17:20:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Message-Id:To:Subject:From:Date; bh=C/BMTSw6eQS//74AC0ju3f3dS+lm2DND3sXzPuqv/O8=;
	b=nuP4o0Rgz26Xxltj5qnxZwqrkGJQ7/533VjjZVsZr35S/zfNPx63Ysybbzu8l/IVF6nRf+whAipfx4nkC/xPn+2iU+zO0W0IzdcYwUYyam2nAQjasyV1TRwDWe0IDnnn66/q9mmphreHfRuZNTIGuaaAmDC0GifdYkCn6o2ca/r2aNBjIqxMIWKy9IGReSGwO4ZPKOgrEjJ/CL6NsvaqVX4CvIkktMXB2TSB/RiJ0PFXNowdzPyWLyYzfyFbbJeQrE9p9vghDUO//gT9AT/UjkTfiNGkDkFQ9+1dSyWYeyzitqtSJbjDBEHj6uilF3mcnpG7/BsSgT9vhnrH3KOmCw==;
Date: Fri, 07 Dec 2018 11:19:43 -0600
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: oss-security@lists.openwall.com
Message-Id: <1544203183.3826.2@mail.igalia.com>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Subject: [oss-security] Invalid free in cairo_ft_apply_variations

Hi,

cairo 1.16.0, in cairo_ft_apply_variations() in cairo-ft-font.c frees 
memory using the wrong free function, leading to memory corruption. 
Because cairo is used by WebKitGTK+, WPE WebKit, and the WinCairo port 
of WebKit, this issue can be triggered by web content. CVE-2018-19876 
has been allocated by MITRE. For details, see:

https://gitlab.freedesktop.org/cairo/cairo/merge_requests/5

We recommend Linux distros should patch cairo because the fix has not 
yet been integrated into the upstream source code repository:

https://gitlab.freedesktop.org/cairo/cairo/merge_requests/5.patch
(warning: link provided for convenience, it is not a stable link)

Michael

