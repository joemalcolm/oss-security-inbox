Received: (qmail 1768 invoked by uid 550); 16 Jan 2025 06:04:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14083 invoked from network); 16 Jan 2025 05:58:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737007092; x=1737611892; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2g7aLuh7vfvWlbD+cAvNRzkWnbG5BJBfndBKz77FhEs=;
        b=N0OG6fjm/qyflqh0uxr9J4vuSMcazFYk3c7NRnIEXUtobAO43IRsiTsifaV7YYhHc6
         L5O9QzM1npAHGyOO8MhIUZMA82ct/kA6EyOf2Q62CJHFWdHIUKqE1AE+WUeyYxl50Sr7
         i5cpERImBZhtFAvtFVgMLTVSnjfgDCXbT/pMOTn+uoEDSvMT9XhhNkaCoCoh0hNJUuaP
         p1AwZOBQ1kH1qSNwrCAhap+KMuwEF7KGSe26INAgmS31kWW/80Qh+CAbw0aMO4yDaZvG
         TDwuDkh7vYHIZ7+mn1/0iNO4l//bZiOO70WRIRPmCKcJO8FcK+WvdGIZlKqpM5h4nA+K
         Qwpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737007092; x=1737611892;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2g7aLuh7vfvWlbD+cAvNRzkWnbG5BJBfndBKz77FhEs=;
        b=R+gRWWY640dk8ei+HxVDlcIF9yOgrYxHM0iItPtqlKwpEBYhlLFbB8E2qmkor2X8K8
         Vf4C9N7ypvyocze77OgLuFzamv/HqAe2NnlTRdOZUNPMeGI95Dlf7toA9LygfIGiK1Li
         rQHdLH4pfvHt49LOe4qeCYLMdN7o13f5kDJRtDaeQCEKIEfiCOJyJU1Fr2MxJfeQpwPc
         ECxDyB6Xf7KMEPBIAxeJ+3CkivdPQ96IUfY102FoLMpDXaoObU+rxa3kVwDF6GJcQC70
         0eM1V1juyfdUJ+RMaibUeBBxMJTSgOVSm3/H0RycdqJ0lIWr5rVEqpHCox6Ib6tEK+fw
         gehg==
X-Gm-Message-State: AOJu0Yyf9yyUXHgel6C6rJg4NhIyagPVDHahMlfZ/lu5APSZl/T3dx2R
	vglrkU9SQy3HVCJZh3IWJK4gyp37WURpfptBWYVsbS53xrBYmXRfm4phj/aP
X-Gm-Gg: ASbGnctp0YD013D/YMcjnVnWYNx0sP2xB4rFALDq83dnMu0zKh37bXETonTS9GNZfXP
	2IuJ4+ERdXtkIJRKn72WbEWzoltFe/E93vVgTg89G6w0yOIBt16pzNy4AzMjoGxvvCiqtfG2/3C
	XE/POwGPPhKLp+7xWqb3WWyC/+G8xIkQ8Ai2+8LQXHojcywwtz4oyS1meQIGM/PkcvtEhUXs/hq
	r2GAp5gS/MFaTJXNkUMr1IjwkaO/45Ic3lCVF9dVvxeJpeml4rvkw==
X-Google-Smtp-Source: AGHT+IE2ADSqMXdLQLdFIo6LsUJg3sKs2XRXpo0JfFs7LzrmUQ577seDrn6SuM7slMbax44HAODkSg==
X-Received: by 2002:a05:6830:6712:b0:70f:7375:e2b5 with SMTP id 46e09a7af769-7248590f27emr2973784a34.6.1737007092108;
        Wed, 15 Jan 2025 21:58:12 -0800 (PST)
Message-ID: <5124504d-3d37-42ad-8bf7-fbbb7f8d0317@gmail.com>
Date: Wed, 15 Jan 2025 23:58:00 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Matthias Gerstner <mgerstner@suse.de>
References: <Z4ekKFlPfkdWqeW2@kasco.suse.de>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <Z4ekKFlPfkdWqeW2@kasco.suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: pam-u2f: problematic PAM_IGNORE return values in
 pam_sm_authenticate() (CVE-2025-23013)

On 1/15/25 06:03, Matthias Gerstner wrote:
> There exist utility modules that don't
> actually authenticate but perform helper functions or enforce policy. An
> example is the pam_faillock [8] module, which can be added to the
> `auth` management group to record failed authentication attempts and
> lock the account for a certain time if too many failed attempts occur.
> This module will return `PAM_SUCCESS` when running in "preauth" mode and
> if the maximum number of failed attempts has not been reached yet. In
> such a case `PAM_SUCCESS` would become the overall authentication result
> when pam-u2f returns `PAM_IGNORE`.

This looks to me like a logic error in PAM.  Why are utility modules 
that do not actually perform authentication returning PAM_SUCCESS 
(indicating successful authentication(!)) instead of PAM_IGNORE or some 
other "neutral" code?

Is this a widespread misconfiguration?  Is there a keyword that causes 
PAM to treat failure as failure but ignore PAM_SUCCESS that should be 
used with those utility modules?


-- Jacob

