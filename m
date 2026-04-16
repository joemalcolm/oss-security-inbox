Received: (qmail 1031 invoked by uid 550); 16 Apr 2026 19:25:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19472 invoked from network); 16 Apr 2026 19:23:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776367380; x=1776972180; darn=lists.openwall.com;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :subject:cc:to:from:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3DxHgAFutbnYRNcUrr2WsJRJ4+XYrXaBTHdSuYmauGI=;
        b=GMMJV26eOfiS7OJlZ9C8xYZzyZ8Dh8KK9IC08cSY5KX5SogCXV+ctbXgqHmfqT/07U
         AaViVuT4QJtgr2koXwL4uGb0eUQ0aPKdzWqo4LZlup00QRCUR0m5yVAEPFKMBwvgJJg7
         o0ZAq4QaUjkCKT+QIHwq0hqUZHPHxfLrMhDONprRa2PFu9twBsK4wJoq3FLEjfVGx702
         o0iLSWzVbKhsjT2lYXqIkQONPB0/Ieh0ylawoBP/RN7fSc3QNOPI021HNc4Dq+R7N0r0
         jaYklujd9g5xSHDJ8uUV9+xSCKNOyHDvoSG37NwsVA5U7NhhQmZXFBkO8tHV7cuMljUf
         Rhlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776367380; x=1776972180;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :subject:cc:to:from:date:message-id:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3DxHgAFutbnYRNcUrr2WsJRJ4+XYrXaBTHdSuYmauGI=;
        b=F3id4soRvZb3oEsEYmOaopEb9XNneADdTrHakUTxg+Nw3NPo7hjy0uGje2N1J64WQi
         uZU4rpKPO9APWIJU19NJOgVSyH0OMUpA/mY1X+7oiym50Uj2R+Xxskn4sbar7apPOMLh
         omJswzRifq/HRCd5Q/I00p0mXe6Q4Wh46Cg54OLdMaS9u6L8faRjm4SZEeuoj+QaseRw
         9OP/m28gCKSwyAuS8Yrx8ptX8VKNuMQZRcLLGkUe7Fvnmykx66YNw8jVUFVmhF2CZ+TA
         fNm/TiMzH6n7S4Ue63E2g2gMvtqjbNZccEDKMUIMbYxLVgKqKqTbtk5L8ZdJBfpPxjnF
         +GOQ==
X-Gm-Message-State: AOJu0Yw+VSE4cNZb/OAey8RvmwNIponKHc206JIS5T3WT8Pj4i5RYToS
	pEhPYsEDXFoIWy65ri682CAASjCr4kNbkXZKFhrMPfo+pKSZmFlD57Hgn82Cu4Qr
X-Gm-Gg: AeBDieveL4VihpFQ4IuOeiFZGNJHVl+nzAuspP9fK+CWJ9OrF602ifGbRPPie/2G4VA
	vKYg/v6UTh0jBNMuYvgfPAE8Wh6JLhW7y+Dhs0xWQf4u8O349WDCKuVk2SvbsZmRZmMadLXPwkq
	PtFaoH+48iglqRG6GgseVXxIab/JdjGfEI4XoL6HBKNrjSnRmqAc4WLj2DaH48KJKRxPLStFiyu
	AXz6OUG7glUlDIz4Vtrrr0Zdtcp4oTzLIoIOm4ObcHxQPu9fu7YW7CwBIwCAiLmL37C3qImbk1s
	Ch0p/pnY45tFmfP//74FudrRQyRl5+U04ztQyvpO+dC3HDYWHjyCsEZbMsI+8hW0l8NltOxXFfS
	65IIBZ6VKlU7HhQuOwrNau+LQzTxJ5/cLrFSdaBFjJEgCnDJL3DhvGZcMly0dpEUTZmCSZysz/K
	53EB2NM5Go3UDa4firpkduUnetBvtnIuyOfbwunxLZFVkb8kmjji2n9njvGG9Rk6xmUAw=
X-Received: by 2002:a17:90a:d2d0:b0:35d:a542:2dbf with SMTP id 98e67ed59e1d1-3613e006955mr703502a91.20.1776367379805;
        Thu, 16 Apr 2026 12:22:59 -0700 (PDT)
Message-ID: <69e13713.170a0220.289f9f.6db1@mx.google.com>
Date: Thu, 16 Apr 2026 12:22:59 -0700 (PDT)
From: yangjincheng1998@gmail.com
To: oss-security@lists.openwall.com
Cc: alan.coopersmith@oracle.com
In-Reply-To: <7ddbe893-6bf2-4142-bbcd-c382a21dbed8@oracle.com>
References: <69e0d549.170a0220.2844e6.1a9b@mx.google.com>
 <7ddbe893-6bf2-4142-bbcd-c382a21dbed8@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
Subject: Re: [oss-security] Apache Kvrocks affected by CVE-2024-31449 and
 CVE-2025-49844 (Redis Lua); fixed but no formal advisory

Hi Alan,

Good catch -- sorry for the confusion. The "Duplicate - please ignore"
titles on #3433 and #3434 are my own housekeeping rename, done on
2026-04-11, AFTER the Kvrocks maintainers had already closed both
issues on 2026-04-09 via a single fix PR. The original bodies were
the actual vulnerability reports.

The authoritative, non-renamed evidence on the Kvrocks side is:

  https://github.com/apache/kvrocks/pull/3435
  Title: "fix(script): upgrade Lua version to fix CVE-2024-31449
         and CVE-2025-49844"
  Author: jihuayu (Kvrocks committer)
  Merged: 2026-04-09 03:57 UTC
  Auto-closed #3433 and #3434.

So the Kvrocks project itself, in its own fix PR title, names both
CVEs as applicable to apache/kvrocks. The downstream impact is not
in doubt -- what remains pending is a formal ASF advisory / GHSA /
Kvrocks-specific CVE ID, which was the original subject of my post.

Off-list update: ASF Security has since confirmed they plan to
coordinate with Kvrocks to publish CVEs for these issues.

Best,
Jincheng Yang
Xidian University
