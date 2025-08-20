Received: (qmail 22360 invoked by uid 550); 20 Aug 2025 05:00:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22334 invoked from network); 20 Aug 2025 05:00:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1755666015;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=o/VxSM6V6CSbIk5u+rZRXiYfDcW3XuKsonSdSbyunxQ=;
	b=QW2h3bOTtT1HwzabGCL0t9jOY1p2BL7oStEb3WMUFrzEegJCIcL/gqlh3FCFxxR6qjjw+W
	gkiT5mOESo2IhmIkM0sNvILGJK+FV0VwRI8JBxAYIbEnKDbuKX70GAr5+YcZ/gCOvYk1xJ
	8MzWAVoAvMIvnZImH5koBO7Ol6QeSm0=
X-MC-Unique: 9jjHC1V3Mw6rTlrRv_ByrA-1
X-Mimecast-MFC-AGG-ID: 9jjHC1V3Mw6rTlrRv_ByrA_1755666012
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755666011; x=1756270811;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o/VxSM6V6CSbIk5u+rZRXiYfDcW3XuKsonSdSbyunxQ=;
        b=mTbmUDDm4hNrtVckj+qJaM1NIW0gE0ggR0tnS4zY2hT1xGTR68AJ40XnyE00A15Ukn
         N4zqRKvZz7W+5ZaEzak0meY5dCK0MBd/jvb5mlxg5qgpCDkonNLnNHunIbTdHoJ8VKTk
         n085oiw/vPdHxOdU59YDKK1CCrnWx2XKGc14J4XiTY6TdF6eQaQxasXEmWyXrYwIm6kn
         o9ab76VXAryBcQovl2+cm6VeRlq5sPObjdJBtJBx+x1F8tv/fpGCLukrNPOg54izsnrc
         RFNM1vtLvVFvAjsRuluP6kKmUNZ1D1zMVjUnZxzp0YE17LD11jGUGQxiwVN/QMGPIdHk
         G6zQ==
X-Gm-Message-State: AOJu0Ywzjj14XDsLi/JAIWjnv/3S4Wa2m3WfHFjAHNQVHrWIILs/rUka
	3XTcgXkDpzbTSQpT4rxQnbDxpQ7BYQv76GhMfzXNlOtX8GE+5InpkUgI3xpv4zeCAZPr9omAVOY
	gQJSwpDo8E7+6kPl5I6jj9EP8FRdtzTpTuhnvvLNAXrNAth+11dsnr3PfRyHRPniwYBqfNCCrI0
	M8z8/7qnHIpqxEUHLFndM6vuSDqnXHKvvie4Y/aZCJP1ZoRwzR3PP6UCX3Sg==
X-Gm-Gg: ASbGnct/CS+G+q99ybVVwEqNlk+MUkFUUjgfzrIRMtNp5ZBmUw9u8wykSJcCiBGnJAn
	tK0TBaIMj+Bs5hkrW0mHlPEiZo8syU093RzlXsjQlchTuNkDZdKKCKulWCbGi0lwRGjVxUyeWD5
	lYQniQjf9mq9XfwA7VY4IBAaRbF7jIT9StY9qzbgyQRUthAva0vxKP
X-Received: by 2002:a05:6402:51d3:b0:61a:a0d1:209a with SMTP id 4fb4d7f45d1cf-61aa0d12336mr249359a12.19.1755666011615;
        Tue, 19 Aug 2025 22:00:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0jCGo9zz4mNw2b1y+OhKQ3Lq9tf7Flg+K5impnw32oO8DygXp/mnfMI9mwrfoevtPteAPV+F+f6I6+sxPgk8=
X-Received: by 2002:a05:6402:51d3:b0:61a:a0d1:209a with SMTP id
 4fb4d7f45d1cf-61aa0d12336mr249333a12.19.1755666011226; Tue, 19 Aug 2025
 22:00:11 -0700 (PDT)
MIME-Version: 1.0
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Date: Wed, 20 Aug 2025 08:59:59 +0400
X-Gm-Features: Ac12FXyFtZpQsS8ThGvIVR2BgdJUx_JxgtvykYyasRtaWn1mg7vioYPobvf9E2g
Message-ID: <CALtw-angTJFE281fStgcABvHicqbL5c0UY-BSGugoiaByOL6WQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Russell Bryant <rbryant@redhat.com>, simon.mo@hey.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: g9dv2mYNe30t0_bBpQom0C7vyp75v2_bfHr778CDBik_1755666012
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Security pre-notification policy for vLLM project

Hello all,

The vLLM project has introduced a security pre-notification policy.
Details are available at:
https://github.com/vllm-project/vllm/blob/main/SECURITY.md

Currently this is open only to open source operating system distributors.

-- 
Regards,

Huzaifa Sidhpurwala
vLLM Security Team

