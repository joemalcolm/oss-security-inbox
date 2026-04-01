Received: (qmail 23583 invoked by uid 550); 1 Apr 2026 07:21:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22525 invoked from network); 1 Apr 2026 07:21:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775028097; x=1775632897; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lx8wwfZoVovru9KaikLLsMM03/j9Kq4fRI0tTVYLLH0=;
        b=ZsnzKWST3Gz9xo7QmX5nwhI3iXAxMJZf1rxJbx9YGzUsWYcUfqNNwaJDfA3tgqRgXK
         tIxNGwFSi+UtDyKs+QTmIi9EjX9D9gqzWY/vnbAeEssEmR0Idqd3a431R/jApXJ3Dley
         cCQu/ONQkc6xplWrB0aBXiwV2Y4YrrGktQY8t5ilgLqD5hsr/3Rx3lCS8qsmQQtltc0G
         dorQUTa8LCJRCNjeNN5mGq7acmM9ZDzdfG1JuNc/fdm6SrkY49G72EPWzOfbAK/HrZQN
         0LMD29MD6Ehga+GWo21Qs/YVGKIKt+AFNQUWev5vPbgKoVIDqIW7pYHktEk1dr3+woVW
         ygJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775028097; x=1775632897;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lx8wwfZoVovru9KaikLLsMM03/j9Kq4fRI0tTVYLLH0=;
        b=Wol/dPLA+8BOOASmnjH1LsHgOLhjhRpFgD3YarphFH0SX/hSdKbN1mA4zJJliirENj
         zBORMRwN8eVTRiAshtv3gUnbIIXEudaSCCNJ+xC+r4WT/hAtaO3n44TykOPGu3xFygiL
         wNcXU7ozUf0AZl9WTpeB8dBgseKLJYt0dFEYvZTNQfAEIgpK91GC0esEjY7vOHv8Rues
         L3+BVrLS7t6J8D7dIKPiK3UAQzp98nMwbcz5zkXaG0NtYuYI4iX1OJnvvqiSrXjI/Z2T
         R5sV60dnOquTZvvXzFBhFMKOgPmqYAFqp/G34iH/PIWix/Ft1PobjhU8e3PmF2hRidPH
         H2pw==
X-Gm-Message-State: AOJu0Yys+x/k4t9SohZXTnJUn0F87RipsIJffVLgzS8B/q45Qz/aF67g
	Erz1nxY7i/SMoH/kHw/UClJPUPq8t0afTKadruVqQgeMJe7d7VrMaHksgs88qvku
X-Gm-Gg: ATEYQzwrHV4sO9YPHHT8aiDzvS7SZZmMUlxv72qFELGMCugqCE7INy8t3JR/ELqBy7x
	XTmxo3D91JGZL2ZqBlJAi05vU1BR8S29K6o0ldt0w9XHUql1Iy6cmWpaP89NO6BSn98+6XLRebN
	3zaJkh36q6gM60ohhxmrmx/IZigDzDeM5jdu6un3BPvcwEr46jYa2oa9tdVtFmJoz3+30vSfY3q
	FTdWB7PHHqc7AzetVV9zTUFBxBPP1+0scPTJEmmFhyUDG6EphOm39AilmR0+LfdTjhffN7FIaia
	P4MU0g/89/o/OFEo35whWakk9fJd33ZGG2tvfzv+Tk+Ba7JK/pqIbF7EE50kRbVygZ8lGq+jJEF
	BZC6HsUXWbqsf2FGSJIuxoHN0ds39YAFPU+feCofMaWPSORRg+5nBKuWF2t6yjV9JIEyIghdNJS
	xde4qOR9EwLidtSaJ/GUENNloH3Rn6IkTVTYJtTJaUT5EPYJAdgFivIp2Kq6E=
X-Received: by 2002:a05:6000:2483:b0:43b:4f86:e985 with SMTP id ffacd0b85a97d-43d150e2f1cmr4683091f8f.33.1775028097131;
        Wed, 01 Apr 2026 00:21:37 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 1 Apr 2026 09:21:35 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aczHf2yl_hYHnnlh@eldamar.lan>
References: <acwUUpdAhrOoJu0H@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acwUUpdAhrOoJu0H@256bit.org>
Subject: Re: [oss-security] [vim-security] Vim modeline bypass via various
 options affects Vim < 9.2.0276

Hi,

On Tue, Mar 31, 2026 at 08:37:06PM +0200, Christian Brabandt wrote:
> Vim modeline bypass via various options affects Vim < 9.2.0276
> ==============================================================
> Date: 31.03.2026
> Severity: High
> CVE: *not yet assigned*
> CWE: Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') (CWE-78)
> 
> ## Summary
> A modeline sandbox bypass in Vim allows arbitrary OS command execution 
> when a user opens a crafted file. The `complete`, `guitabtooltip` and 
> `printheader` options are missing the `P_MLE` flag, allowing a modeline 
> to be executed. Additionally, the `mapset()` function lacks a 
> `check_secure()` call, allowing it to be abused from sandboxed 
> expressions.
> 
> ## Description
> The `complete` option (`src/optiondefs.h:684`) accepts `F{func}` syntax 
> to register completion callbacks (added in patch 9.1.1178), similar to 
> how `completefunc` works. However, unlike `completefunc` which has 
> `P_SECURE`, `complete` has neither `P_SECURE` nor `P_MLE`, so the 
> modeline security check at `src/option.c:1565-1571` is bypassed and 
> arbitrary lambda expressions are accepted from modelines.
> 
> Similar effects can be achieved by setting the `guitabtooltip` and
> `printheader` options via a modeline and abusing the `mapset()` function 
> to execute arbitrary code on random key mappings.
> 
> ## Impact
> An attacker who can deliver a crafted file to a victim achieves 
> arbitrary command execution with the privileges of the user running Vim.
> 
> ## Acknowledgements
> The Vim project would like to thank "dfwjj x" and "Avishay Matayev" for 
> identifying the vulnerability chain, providing a detailed root cause 
> analysis and reproduction steps
> 
> ## References
> The issue has been fixed as of Vim patch 
> [v9.2.0276](https://github.com/vim/vim/releases/tag/v9.2.0276)
> 
> - [Commit](https://github.com/vim/vim/commit/75661a66a1db1e1f3f1245c615f13a7)
> - [GitHub Advisory](https://github.com/vim/vim/security/advisories/GHSA-8h6p-m6gr-mpw9)

CVE-2026-34982  is now assigned for this issue according to the GHSA,
so following up with that information here.

Regards,
Salvatore
