Received: (qmail 26079 invoked by uid 550); 11 Apr 2024 13:43:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11577 invoked from network); 11 Apr 2024 08:22:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712823766; x=1713428566; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HeZDSb53o3G20EDpBt0V5eNDb9AvRlhgvD401/qIb/o=;
        b=KvsIxeAK7WBhKZHRTaIQC/RAwnYnvgDDIeougA6WH1SQkuR/HYypj8SiZBz1ntACTV
         amRbJO8ir6pK5zkNhJSMKdDmASyurFpR2+wZUgYuq7pUHhHOS97KOxc8rI7ixsMrj5s2
         YfVuD51HQ/NrLUt/GLJy4n2t5gn67EGzde7OoT3esAHv/gViYxiIg5FEArmSK9OOceKM
         cX+tR5xsWX49+qOh7W9jmuZiUPeyfJc9dClmr2fX8SWjNDjSNAl7VEoFoIAiy17J71Oo
         krr927fSeGRVkoSGqfa81yZr4uKHaOYeW4hlhRu87XSzOJ4wS8cn/Cg27ymyoJ9tco6O
         AWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712823766; x=1713428566;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HeZDSb53o3G20EDpBt0V5eNDb9AvRlhgvD401/qIb/o=;
        b=nL1jPO0lkUwACR0ZDxzp7yVbwmypA3SoLG968HxZQ8nhRpj0sb1+tkWvcLCc/QW5JM
         T8/gC0RJMnxhKVtKJyAw3nbAv5mcBWaFDl2B2BqMhMOSDsl58RXoWhD5w46tbpJoMuGF
         WwFQ9z/7MMJSnvD3YjeeyrkWfjypO441kUpSyVrImIXLjYx280wX3diSbdPzKGXR6Yzv
         6964EOhfwbc2zjTjlxI9lE+pbJXDwCH5XcrJ/OatYudskdnmUEcnCTAkFJ0PZre9yyXS
         e+YiGFhRK/lz75PJ2rl3+PQNafm5yFbM9d5WywgbXPVgTCT+XJgeVkSnTP0DTGS+iLQn
         D2QA==
X-Gm-Message-State: AOJu0YxVEGFwC3TGBQ6rvQnPmgARjOD2lSJho7J2vr4LagY5oz2tz2/2
	0wjD2fqsmy7FKcN93yLAqR2TN0biqHuggpWhPqPXdrU8EZjamOCIOyc/OvXGtxi37gHRg6xc6BI
	KmbG6bku0FSohFbfQnQchUYvtEGc=
X-Google-Smtp-Source: AGHT+IHVhBxRWDnxVeFfpH8C7diH/966A8ZrglOtauWcJAPeHXxJX8WdJ4c5EyNrT8yZDwTZXCSz3tDcuOBLyADlKGg=
X-Received: by 2002:a81:778a:0:b0:615:4e88:c029 with SMTP id
 s132-20020a81778a000000b006154e88c029mr4982131ywc.51.1712823765980; Thu, 11
 Apr 2024 01:22:45 -0700 (PDT)
MIME-Version: 1.0
From: Tianyu Chen <billchenchina2001@gmail.com>
Date: Thu, 11 Apr 2024 16:22:35 +0800
Message-ID: <CAG-20GTcXSo3=1UxEbRf7Ut_2j_g=Ru4yGHUQOxNSLMvvR-Umg@mail.gmail.com>
To: oss-sec@mknap.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000022614e0615cddc4d"
Subject: [oss-security] Re: CWE-121, CWE-122: libfreeimage 3.40-3.18/19+ buffer overflow

--00000000000022614e0615cddc4d
Content-Type: text/plain; charset="UTF-8"

Hi Michael,

I believe there may be a duplicate report for freeimage that you should be
aware of. You can find it at the following link:

https://github.com/Ruanxingzhi/vul-report/tree/master/freeimage-r1909

The linked report includes CVE-2024-28562, CVE-2024-28563, CVE-2024-28564,
CVE-2024-28565, and more up to CVE-2024-28584.

Best regards,
Tianyu Chen

--00000000000022614e0615cddc4d--
