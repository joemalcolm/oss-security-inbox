X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["741" "Wednesday" "4" "April" "2018" "19:15:16" "+0300" "Alexander Popov" "alex.popov@linux.com" "<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>" "21" "[oss-security] Linux Kernel Defence Map" "^Cc:" nil nil "4" "2018040416:15:16" "[oss-security] Linux Kernel Defence Map" (number mark "        alex.popov@l Apr  4   21/741   " thread-indent "\"[oss-security] Linux Kernel Defence Map\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29846 invoked by uid 550); 4 Apr 2018 16:15:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29812 invoked from network); 4 Apr 2018 16:15:30 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=bWS/YOBha2dn4Bm4hXYZzKmzPfyp7WC+g6OkiWDGavE=;
        b=Pyyxi11CSRJeaG8aCJJlbAOf52OsV912yJKbZw+ZdNEXdThyRWgx24iChRNrvJXT9O
         Qk8CSkIiyhZ2oxL0SdIq8MWABOVy1M34KpLZ3VFs+Jf/a+ZRaeMBgwnbBgY5FhJO/d0V
         l58IUk+rVAMrBK70CBnbqlhXw5rsXMbScVCsQ1OE1g0dECw4TlPpDFlzBfgUrQ/Y1liF
         YkZsb19u1TMzNDyCcWZC8eWvuA+kwCnQJn0YJYIpqnuVhIE//bhc0a6UWG+wcMawwqFG
         ET8Rm6cC7GSFFQu/DHwpqpb9R6lp5VnYTiXeyD2vLV1s3F1uq8MGbE6n/oM3gv3cvOYO
         ww7g==
X-Gm-Message-State: ALQs6tDmzgmNInl6oDw+MtcHLHhwfxaI8DouhOQFAptGbi4TIoE1WbAi
	VaFMNXdZ7beMBbGD82cqL4Q=
X-Google-Smtp-Source: AIpwx4+C47Mm4unkxqEaA6V3cpomIXL0hsJqYyRlfPiKFgofKcCxo9V5BPImf9zzHyqCebBHrvaYAA==
X-Received: by 10.46.155.204 with SMTP id w12mr9712262ljj.76.1522858519500;
        Wed, 04 Apr 2018 09:15:19 -0700 (PDT)
Message-ID: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Kees Cook <keescook@chromium.org>, James Morris <jmorris@namei.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, Brad Spengler
 <spender@grsecurity.net>, PaX Team <pageexec@freemail.hu>
Date: Wed, 4 Apr 2018 19:15:16 +0300
From: Alexander Popov <alex.popov@linux.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux Kernel Defence Map
To: oss-security@lists.openwall.com

Linux kernel security is a very complex area. It would be nice to have some
graphical representation of its current state. So I've created a Linux Kernel
Defence Map showing the relations between:
 - vulnerability classes / exploitation techniques,
 - kernel defences,
 - bug detection means.

Link:
   https://github.com/a13xp0p0v/linux-kernel-defence-map

N.B. The node connections don't mean "full mitigation". These connections
represent some kind of relation. So ideally, this map should help to navigate in
documentation and Linux kernel sources.

I wrote it in DOT language and generated the picture using GraphViz. So it is
very pleasant to maintain this map with git.

I would be grateful for any feedback.

Best regards,
Alexander
