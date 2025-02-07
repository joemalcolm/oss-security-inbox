Received: (qmail 21822 invoked by uid 550); 7 Feb 2025 17:42:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11665 invoked from network); 7 Feb 2025 04:49:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738903737; x=1739508537; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=FTdQCOGtzpiWZgvyND9/04cXwuR4onGzSNtwzKx5Hqw=;
        b=lZlCWJ3qhFc+EOGL1XaqDmHs7aP4YaQYRD+KDs4R5fuJO0nYORXULUtx6Vp16wZFJJ
         Habv8IXjEfuYoFEfkWOVx+raZ+fstaMx8extYvVjMAYaTCvupzZusPO2/AkOmT8kp6ON
         y5xcdcoQxrscVnHrEXX+QJ3xSrJYgJhq5tt9KKLu8YkidwAcAdm+r/UCxh6GPHALIH8j
         XSfdMqGdHHSghMUsLQhMW1pdDGpcTjQOD4InTxFuDww460FoxbZkdc8d8FjkT7KYmh1q
         DTMcnPsOuD5s7pp8cnoKv+qKwFr/G49drIbD9y6hJiAHmMrdZ5SF+RxqUKq684M29DSk
         QaSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738903737; x=1739508537;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FTdQCOGtzpiWZgvyND9/04cXwuR4onGzSNtwzKx5Hqw=;
        b=aFbZ8t8/6No146+51gSPu7ABZJcjPb7q0SiRnha+dE2Ik0gMeG6+DuS5B3cR+Fx8Io
         QC/RPliDva3ThA42jsHJt7pdYpTbGPBdaR+9A8pJrqX6vWmnizSXpG+4eocCWWwUZU+V
         wStfLJ3HWUzNLxudapyeZ+TmYpd0DwIiYNzflBH7JCVqJPR2kqnDO+bIrgW06ltSucPC
         ZWz/18fPifqEecVkxr4O+WxhFdqWb5sUcEWf7NOgie2XQM6JWAErRN9SIlpwlLm0+qMZ
         Dn2ZE86gy/K/G+b5J+eCyRF6xy1Wnn8HYHY8TmX9Bs6W0krmpkVAYhiYNL/lLicJCzeb
         fhPg==
X-Gm-Message-State: AOJu0Yy+zxohJYACpqJeeTkSECly+Vqx/AuAVCWG+6rgjw5vGfB9yXP0
	n0kLczgT83sZ8Dv1u7m3fs3jaNIzFvPGRqdQgPzU5th/UGB1HY+WffHityOx
X-Gm-Gg: ASbGncvT6PsiNC2WYXuwTDZb53a2HzhLsNdtD4BcvFMIIO7qppIDMXMB97WXydPahD8
	emSc3V6L4A8yJn7Twrj3oTBJEdqpfESs5sK81zOzRpg0V6QLpJTDSgoO3tFJoVtNMIPX1j+mJsb
	Qj0DwhRxgm5Yxw41M3jNH2EdKXQ72SAY9SBuJRees3or71pE1Vix8ScnGGZGl7w3X1JQH3w88yQ
	LlecM1iupT790nGPB9GwqXZh6XoRHGsMQoQLKCIhE5/Ik5kl51EaJAJMasoKfXBXfCEE4Oyy311
	RqA6dVJsjRTa
X-Google-Smtp-Source: AGHT+IHdJlBXhUiMucG+mT905guaT/OBIyPQUge3J3zixk2qT+sgaqO93j1kSclClKFO4wr76GR1dQ==
X-Received: by 2002:a05:6830:3c0f:b0:71d:f97a:7b with SMTP id 46e09a7af769-726b88957acmr1337628a34.20.1738903736981;
        Thu, 06 Feb 2025 20:48:56 -0800 (PST)
Message-ID: <643e3e53-6d68-4a16-9933-cdb13aecea42@gmail.com>
Date: Thu, 6 Feb 2025 22:48:53 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Matthias Gerstner <mgerstner@suse.de>
References: <Z6TNVqmdQvyPUnFY@kasco.suse.de>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <Z6TNVqmdQvyPUnFY@kasco.suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: pam_pkcs11: Possible Authentication Bypass in Error Situations
 (CVE-2025-24531)

On 2/6/25 08:55, Matthias Gerstner wrote:
> [...]
>
> On the use of `PAM_SUCCESS`
> ---------------------------
>
> PAM modules that only serve utility functions but do not actually
> authenticate could consider not returning `PAM_SUCCESS` but `PAM_IGNORE`
> instead. This would avoid unintended successful authentication in a
> situation like described in this report. It seems natural to PAM module
> authors to return `PAM_SUCCESS` if nothing in their module failed,
> however. A lot of modules work this way and changing them all would be a
> big effort.

I have pruned the entire quote down to that paragraph because that is 
the root cause of this and other issues.  A similar issue occurred two 
weeks ago with pam-u2f (CVE-2025-23013) and the same problem of utility 
modules returning PAM_SUCCESS despite not actually authenticating anything.

These problems are going to keep happening as long as utility modules 
continue to misuse PAM_SUCCESS.

There might be a possible workaround of adding a new keyword "utility" 
or "hook" to PAM that ignores success but fails on actual failure and 
using that with utility modules.


-- Jacob

