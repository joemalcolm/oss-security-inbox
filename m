Received: (qmail 22369 invoked by uid 550); 23 Jul 2025 20:34:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7916 invoked from network); 23 Jul 2025 20:01:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753300852; x=1753905652; darn=lists.openwall.com;
        h=content-transfer-encoding:organization:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o5jReurx09f0kjd5NdgPjG7OUc5MvOK9QfJehdu/Vcc=;
        b=H8I4XON5w2soLmnolcSmL8Yb/Trt0h3e4NL8WAPQoDkQ7Ju7De9yxzDKsTuxpK2+yD
         ckhGCaFgsZdhFbJzjT/QW3goM4kINhGUzc9Ln3/tyEp+8HMII8nnGcGGB+LMc+Re91ot
         w9IZO0rmBLIoTVF5/SbUHyUN3SHzAk2nO5zYbSqZKodXAhF+8hususLLkKa0PfwEk1tu
         0nbbJlCcAjizGOUSJjgjQLXh67x0r3xmBBp2AjAxT/tL2m5wt8PhuoQ22AiWs+Xb45Fe
         c7luqK8E4P6+iUHaeeSND/wdbauarnkWCNKS+VllYko5wEtoSLB3xCEAbUVynaW6u7x0
         6Qtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753300852; x=1753905652;
        h=content-transfer-encoding:organization:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o5jReurx09f0kjd5NdgPjG7OUc5MvOK9QfJehdu/Vcc=;
        b=LpeYrtviP6442jMuXZgGNJmf0nPO/9Vq0ijcU7zzRqGBKkTs2WrylBvtJGxiunvErh
         6CBPhkh0RGzEcUOMeyanpBrIwAr9lMLUtefKhZcPlnPeIe6zzAXpHppuExL9K6+r+GuN
         U+G4QCO+QLAfhhgRYL2x63cc6ADeNijC1ZYoXGAd/IIqwPOhOyRN/3yyODZ4vTaTGomi
         4lML7cv5MKpvpv9Z4kWhwsiumeBj9IL9B51J4euTpJEguATydtRSdyOJdv6EeJSOCT3t
         r5u7kwB4/lW0iZhPV/p8MNyPoOqC9HtDBKe5AYhWZlOh0Jx//XMsjo5yPdKuxuCrJ7aA
         NtzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxlfMbM876CWaxDwxiZ6W297Dy89RKSrqoIGuQWotyvMwEPvEDu6z4sjVNTjNRXQZVTurH5Yyc75qyBuM=@lists.openwall.com
X-Gm-Message-State: AOJu0YyYQN9+lMmOnQnCYo9fTEdEnpk9Nw2xFG4kkql46lQ+zyMhbsV9
	VBW0hKUISHqQEJazesS8sd3LkUbVo5SF0jXorF0/ZKDIaa8or0iH6a4fgQ8murWFvdQ=
X-Gm-Gg: ASbGncsfBhm5m9nI6FA+qHS8Fdk9eiWXYx5lYiJZjKapAsL8JLYScEVaqQyELHdPtao
	8toXpKbuphAs8OxUQ3+cfKaMrXS9NvYB8vHNU+0ShMr/YOP+8dfEa0PTTUsjslKP5bO4ZSSczG0
	rBlm139sy37xnBUadbtT26B9MPZS5kqTyLUl44AfE1RHD33MVGkgqGLc/B8pfst+7Q3TP/bkwCQ
	Sgt2231LfYYKZcEHe1qYXbY0b7F1lwlM+KQ5NAbWycDKEkVN/1aoQL5cP8XHZ1+WE4y7Rb6goL8
	Fz5h7qiWWJY1vPOIaI+ticfWhk9bhR1oIUIAqzmobYR2IWxYP5MTePLKgn12OOMniyyhmwdn4eO
	l5U9cUlbzOrlyGWrzvh9N0DfP/2Lr4oi2o87etpCUvhnLz08f8e88+W5fpRcXEnwMcQhknWw08d
	m3VLqXnaYuaWLWLaKjbeH/61sJ
X-Google-Smtp-Source: AGHT+IHljP58jSHQTFMNuZVa05Z6UTZaKzhUIVMqaHGJUy9TXgViKagjtbH+I55cezwkmfDc09LIZw==
X-Received: by 2002:a17:902:e84e:b0:234:c8f6:1b17 with SMTP id d9443c01a7336-23f981b3991mr70859765ad.38.1753300852173;
        Wed, 23 Jul 2025 13:00:52 -0700 (PDT)
Message-ID: <9336f29a-d372-4c6a-93cb-a6a9eb41e317@linaro.org>
Date: Wed, 23 Jul 2025 17:00:49 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: libc-announce@sourceware.org, oss-security@lists.openwall.com
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2025-07-23

The following security advisories have been published:

GLIBC-SA-2025-0005:
===================
posix: Fix double-free after allocation failure in regcomp

The regcomp function in the GNU C library version from 2.4 to 2.41 is
subject to a double free if some previous allocation fails. It can be
accomplished either by a malloc failure or by using an interposed
malloc that injects random malloc failures. The double free can allow
buffer manipulation depending of how the regex is constructed.
This issue affects all architectures and ABIs supported by the GNU C
library.

CVE-Id: CVE-2025-8058
Public-Date: 2025-07-22
Vulnerable-Commit: 963d8d782fc98fb6dc3a66f0068795f9920c269d (2.3.3-1596)
Fix-Commit: 7ea06e994093fa0bcca0d0ee2c1db271d8d7885d (2.42)

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
