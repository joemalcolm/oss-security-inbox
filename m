X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["504" "Wednesday" "1" "August" "2018" "10:38:34" "-0400" "Tim Graham" "timograham@gmail.com" "<CAD-rxRD5+AiEA_qgNh0AWuz7VU8ALGgL2Quowz5sfVzvP6FhjA@mail.gmail.com>" "10" "[oss-security] Django security releases issued: 1.11.15 and 2.0.8" nil nil nil "8" "2018080114:38:34" "[oss-security] Django security releases issued: 1.11.15 and 2.0.8" (number mark "U       timograham@g Aug  1   10/504   " thread-indent "\"[oss-security] Django security releases issued: 1.11.15 and 2.0.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7760 invoked by uid 550); 1 Aug 2018 14:38:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7725 invoked from network); 1 Aug 2018 14:38:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=s1v2E27AiC7Ns6Q9ti/dlSTIRWu9rzCaiCZIQ0AFleI=;
        b=On3gDw3Z8rM6VJQdzOnoz6yGLTJb/fdTcrJs3gfAsxxaTOAoEsgOI0IpIoPV0dyr7w
         gcj2mleF5mPYl+WV322rhcWVX+NcwOhrGz8ReGFiqcINtBd/i1PtAW84r0E/DDpAsstH
         /SqbI2FnCBG+UeWApxdkYNpxKlbbK/GH+GuuXsYN+fPTM3hQAA5udaa0y2CtxuEaHycX
         Uz7CM+SYjgnQMA6B5bDw5Dutq6o3KCUHogMi29qh9RELy9dLgV1i7/s1XDH5K7sc4Qb0
         VTfIiMCUZc/Zcol7vC+/mXgNE6KLuAf0UWSLHKqsKyP9kK3Gqe3fFV+62Pf+/zGxxgKJ
         I4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=s1v2E27AiC7Ns6Q9ti/dlSTIRWu9rzCaiCZIQ0AFleI=;
        b=Grlz9IEDZAvLPDhTyaLsxI3iRgFnvReXSfqCCU/+7sBQdYGAm1FFIzn28Vb87OxJ7C
         yODBqZCsjO3gIJgSHQgdnYv3RoYY6BNwEoWZFY/+CFwkghjj6q/Jouip4jeLg7lbAKxW
         1FQQglbkxBoV6q7QXOnSnB2PvFmyQivpMmX6aOqa/+t+yrDivim1+wrJkajR7JLpdO07
         ZO2jq6QjrDm5QCQXVEFvnIMjoXIlxuaaSgHZ7Gbpll22Pz5mxs01cF95R0LP5GZ0dPG9
         hvg5LZuGFGLK7RE8+VLsAc7Z/4AEqs+NPgkm2pez+1/bs9sifGsQ5saBhNyhaOwQVpj+
         4yAw==
X-Gm-Message-State: AOUpUlH0c3By1wiX/bbNk1sL2QzMfrp/wUcBqJib8DGRedOuAXaGjuLH
	N5jnLuuxcXOeq9SC2ip6fCWzfU1s0MsM5EkGPJM=
X-Google-Smtp-Source: AAOMgpfFtzWMS16iEpU5mTD3qDjev3iekqjWx+2JWPtOXj/zdi3Ucp2I+ILKFlRcQAgtJAdo1Esxaj+mQyrbss9T6kc=
X-Received: by 2002:a6b:c693:: with SMTP id w141-v6mr3538351iof.79.1533134326451;
 Wed, 01 Aug 2018 07:38:46 -0700 (PDT)
MIME-Version: 1.0
From: Tim Graham <timograham@gmail.com>
Date: Wed, 1 Aug 2018 10:38:34 -0400
Message-ID: <CAD-rxRD5+AiEA_qgNh0AWuz7VU8ALGgL2Quowz5sfVzvP6FhjA@mail.gmail.com>
To: django-announce@googlegroups.com
Cc: django-users@googlegroups.com, 
	"Django developers (Contributions to Django itself)" <django-developers@googlegroups.com>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Django security releases issued: 1.11.15 and 2.0.8

Today the Django team issued 1.11.15 and 2.0.8 as part of our security
process. These releases address a security issue, and we encourage all
users to upgrade as soon as possible:

https://www.djangoproject.com/weblog/2018/aug/01/security-releases/

As a reminder, we ask that potential security issues be reported via
private email to security@djangoproject.com and not via Django's Trac
instance or the django-developers list. Please see
https://www.djangoproject.com/security for further information.
