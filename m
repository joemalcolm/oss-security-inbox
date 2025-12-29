Received: (qmail 25921 invoked by uid 550); 29 Dec 2025 04:13:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13826 invoked from network); 29 Dec 2025 04:11:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766981503; x=1767586303; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rNa5fpEyhNXFX3uQ73I6umjvfRgp3GpcBmSSBo51WHs=;
        b=IEGan4QmNoy7TZpj0/XDQm/1gsAA0OrlwKN0L3AxRODNvsKZiN6jJLmv0RBkA0QQ9o
         pz3pXwRRtsn3PiFsGYPTVFAKJSeAfLH7PJnOlqM9oHqjyHHanmpIGt4NU9KuGPW9yJzd
         LL/5CRMNcp4vyiUmvCspnwl9olkm05/u8qiuWGmd9tfflQOxQn1lDqlq1oCBCgziiHvC
         SAu4LdDwxohBGemS9LMxhnhuZzSnADYQ7L9550I5/K3MMvxHY7b16QlJ7GpsvQx6ODdG
         lhWlusNG1tudYIFy7UGRq0OnOFe/5MJSvuovkgQeQeggi037nbz1vL7zm3qOhC3+a4lW
         cz5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766981503; x=1767586303;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rNa5fpEyhNXFX3uQ73I6umjvfRgp3GpcBmSSBo51WHs=;
        b=scayxXvOkhbB6ZXQbDUBV5Aom07pOZb1sRgMrS3EbBOnknJMSRKnnNTIT0AC+40koF
         PrHvzFHGgm2rLVBCgCg2SqJb59ln3TgPb+PiUuPAzXsgU09/yamEEi1X/+qu5OmPeK/0
         f/l5YZJ5qsrRm7ZrmBfLsKrKVKVH0+OyL3PmAabbI1mK/SDqOJmwolo1Jqoa7VhDwxn1
         9Vk6ifKXbUnM6CvVGdCBvD2VWZj025ZYL1CcEQVYZStqBlDSNcz8Ng2TtrvvPl15r1Gq
         G3YpTMMr05P0nS8sd07fpB1ELSLHNb/weKYppAhFnKaTDzNhrI0ypXva5s5G70ic14dW
         snOA==
X-Gm-Message-State: AOJu0Yw3MxRu4KP51lHuTtElZFJngg62Se99ccfekznGSdvoBqyWECyC
	JjRmubXXzvEkiiwivdUW/mWYGNLE0IJj35TZoDlQm+ldjfY4sqmbpu00NiFd2j4Y
X-Gm-Gg: AY/fxX4yFFEOrvqVK/lOcFBhL5I/5XDc9u02+43AeGZgYXYs35MkMDVUIzSzQY7OeAj
	Nd72sBRpI3TvfMq2Gg3WzAt3r94zgpToeADeWGppoQo2PKU1R9UoU/2jtZQKjms7hicUWKjU62v
	xh5kFKA/TEOJedBRggPwwBbz0c8hv7rwOsjgVhvYpF7+FpqqUGqnVe8n2QvEBemxclmAuML3mcC
	JSArbrZIpFAisr0+ExiSOaxb5+TNIcB+zYTlovFPCN+Fq0odzet0OaTgkyxG3gCpYaEwYPpFH4D
	eUojN1C+DiZvTRVpsfyM73pHZj3XJEOELkt3B7Imww0xGmXBwaNYY0NfQka5PBZhqezXKILbJXh
	ViCfEaXSn+tZm0gvaiYMcjrcmQD/jVniFukogqjKnp61+gI7urEmSJnV+bUcaBtZvA60Maw2/np
	8iudBT8VY=
X-Google-Smtp-Source: AGHT+IGMkFTnmeJgDyVbtRakhZ5KO0bLRsMZL+b/qs6KOvI/iDK7FE0fUQSThVyEfd0t2fgksmIlJA==
X-Received: by 2002:a05:6830:2646:b0:7c7:1c87:4f95 with SMTP id 46e09a7af769-7cc668e9548mr14226830a34.4.1766981503399;
        Sun, 28 Dec 2025 20:11:43 -0800 (PST)
Message-ID: <974a2abd-7449-4cf7-bbe6-e329aa4af59e@gmail.com>
Date: Sun, 28 Dec 2025 22:11:35 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Greg Dahlman <dahlman@gmail.com>
References: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAM=PXV50+jaVYFueXFbZpioBX3PMrUG2Ey8WoQ5NT89J9gFwCA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Systemd vsock sshd

On 12/27/25 21:46, Greg Dahlman wrote:
> [...]
>
>   **Systemd v256 change** - When the *openssh-server* package is
>   installed on a VM with vsock support, systemd now automatically
>   starts an *sshd* instance that listens on the **af_vsock** socket in
>   the **global network namespace** without any manual configuration.

Obvious question:  what manual configuration is required to kill that 
listener?


-- Jacob

