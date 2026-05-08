Received: (qmail 25857 invoked by uid 550); 8 May 2026 04:28:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32661 invoked from network); 8 May 2026 04:19:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778213977; x=1778818777; darn=lists.openwall.com;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=VP3qzqzHx5D1S3EW2kftPSZGZb/ECx4DKoOMB3Q+sXE=;
        b=IS2Lj1XKSMk+tcxDHF/WCJY6E5/ZgokfbcxUShT2ZieU1gKbROme20FvSYQ+gqyi8q
         rgDUN3FzJSkIgHffufQB5jq6hFqrmXK3QtndxN8HlGjX6FM0nchkMuOi0mSuVYhDv2eC
         EUH1T3x05V3LNJI1XzzyJItfi9ZquvKDIKJzWZSjjaVQxOg0JaC2SLO/GF3MFaw4qZFC
         tV6QsWtpwzEuJDOT/u/uBOziHBNhkw62xUhxWAGowEkf5gd/kS4jWMfisLLZWgM2Fjxe
         TWRAyTjAGN0tdf85zvPkOZsUawz9Juo4SlRnXKuFBPZL6EoTAPJ6wk6T76sozz8em23C
         MQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778213977; x=1778818777;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VP3qzqzHx5D1S3EW2kftPSZGZb/ECx4DKoOMB3Q+sXE=;
        b=GZ/xmG9DUsRk6Cng29mtxsPYRDOAV4Hvk2VCDKrLPk9cpb/i83ZFNXa7BlnfYSknaU
         jtEYQQQNFw9LTvq6TReqb/6p4iQl4XpE6B5MSysOGzaLN1MUxuTIgHJyPXJZQXER6Rri
         NZtbANH5bLkpokQk3MTHy8TKaemeQZ4kVcmat1AcPUwnq/tNUyMHiWnyZ1LajTszN9ag
         KFXYdlp5PmrGZaEHX0vtYvFbh7WIrMuXsj8ufcWveq6lXDFfJ0yRGb05VG7POvjdWZAX
         7Jo4wmd0eoR46qlG4isvAbzITNHN436M/hW5Siss3C4inisrNMnGWyEja3ll0/x2ohDP
         3TJg==
X-Gm-Message-State: AOJu0YwW6buC/JnLNUl5Q1gXHp9Op5+b9P+n/sxfvxzFfw6WgWD8vN/i
	VXNLw9H8Ah4pl4sjLxyWH504irrOPnTu4ASVxHWw5nErmy/OMYxrH+YPaVLzNQ==
X-Gm-Gg: AeBDiev4DUHQd6qLGY6RyVK9CRvLeSGgfqHW6LAqg8yeSiq9+bBqtbRIC+pgGUcCT+P
	i1rBG/p53nEAxqPJaXtwrO/DO2MmdStYD534FyQ50M+Pl9p0P7gFEWqJhx2g9Zl3DdlwT2zXY5P
	xzmwroUVoFXu0dJj9hh4rboINVrv2JknPCSngmiMQJtNgMZ/VEdEfWmdxuUiPxN8zu2tER12MoO
	Vs9k16YcfSwEebEwJpYxLAAUE9pjKZmDJEauJ6sfae9OixtBKojjFrZpVzgKqOdMhltWr1+yIUy
	9ovRg5XlWzkquDaHIcaxJRenx0LgjiKIE3pSF1BAV8780XLzgM/ayckk+vSAhgOFuypdMdDtXmm
	HR/+9/0hCIgLtKSm8tBAmePCWLoDZDhNsW+LIuhTjHo4lN3dqiWyLN6o2lf8Se0D5w8xP0511tk
	7ZCBC5aIcAnBQzjb7s+b1AAevCIbH3PHZfkukitPMAs9NBdtIc72+D
X-Received: by 2002:a05:622a:5a11:b0:50e:601a:217f with SMTP id d75a77b69052e-51461e29a72mr145962911cf.25.1778213977035;
        Thu, 07 May 2026 21:19:37 -0700 (PDT)
From: Daniel Tang <danielzgtg.opensource@gmail.com>
To: oss-security@lists.openwall.com
Date: Fri, 08 May 2026 00:19:33 -0400
Message-ID: <5098645.GXAFRqVoOG@daniel-desktop3>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] Re: Dirty Frag: Universal Linux LPE

> no patches [...] exist

Please say whether or not the following patchset is sufficient to
fix the dirty flag vulnerability:

* https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=f4c50a4034e62ab75f1d5cdd191dd5f9c77fdff4
* https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=cac2661c53f3
* https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=03e2a30f6a27
* https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=7da0dde68486
* https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=6d8192bd69bb
* https://lore.kernel.org/all/afKV2zGR6rrelPC7@v4bel/

Additionally, at
https://bugs.launchpad.net/ubuntu/+source/kmod/+bug/2151831 , I
additionally suggested disabling modules xfrm_interface and xfrm_user
worried about the commit message of the first kernel patch. This is a
combination of Hyunwoo Kim and SiCk's strategies. Is this mix
necessary for the mitigation?


