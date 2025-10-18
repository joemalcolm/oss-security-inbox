Received: (qmail 23677 invoked by uid 550); 18 Oct 2025 02:55:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11782 invoked from network); 18 Oct 2025 02:47:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760755658; x=1761360458; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qv5LTExXseoQ7BJW1gbqr8XBfWhRTTqUyELCDIpiiIE=;
        b=Wh7iEo73Yl6NAyRSHxbG/CUwf44ZvKoZ0xgVe+f/JwkFuKmD0iM0PyLsLHQdcaR04G
         jIpmn3whuL+/Sa8ceq/PzS7oL6ufbEFtGKugnT56tHvXt6gQpZjhY6OGijM1K9EYcAvz
         LetmKAyL1aMgolz7M2d53TRDyczrlXjM8lxcBluAbhEUI49ZAIc9WgSRJlVCGrsHZvC4
         3OlycswzXtood6H9ZtGys4uf1By62+zTkRhG8TBEHsUmoiyCKDOEA8jFfvil/MpefK2j
         /I1O5LI2BGbULQWJ6fmmMzY8tI64Nl+osoAhWT4kKVhp0rL/h+uRzWO7rHBxmwtIxzLS
         KMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760755658; x=1761360458;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qv5LTExXseoQ7BJW1gbqr8XBfWhRTTqUyELCDIpiiIE=;
        b=pirntBagQQPz4xuy+6ef6eHSBmEba0NQ8026WHjYZ0r9wVy41WuXgWZVeGJNQ6JQZH
         b78aPhDYXGyQrX/dlDGMm1IBpPVUH2ejE95jt5kpRaZ2xwfq+3wphnCncYkFvuIF9P0k
         dEQ/BIlNdpxMdBM/XaKGKvT3DbOVESKialziEATpfLfPeANQ7ZPzTQ+UDmGx1kk4hb3Z
         9h8nlhoyrvCRSdrsl4p4IuEL5RI4iKPUvj/endWr412xIjOAYYAR2434+dV/b09Br52o
         lMWV5bfoM289ZwiY+FcNqg9oG3gZmgo2zWzY2AdDrZeV/loMkl1Gtm+QKvhfaOtpj01d
         KHcA==
X-Gm-Message-State: AOJu0YzreQOCmNe+aT9yfGdqHQM3v4wLndU2RuenPl1aeeJaNVcpgyYx
	yQZ0xdRnoQbSb/vTrD0nZdmMsaaUHFGhSGZDQRwXWLeUDhf5s5Y/gFPiyaspyuIb
X-Gm-Gg: ASbGncu+ROSrzD3sGcOwWWnSTjJSu2Dinh2GZ4r/B8eZM5LjEmjws20babJCVBUBKol
	LAuc7+ODEHWM61axW5gXQ8q1RwpX3tdvW63xlqvzYEbacGVNt8KhXbD7mJ7th7HJHqivUjLaSrh
	mgmJ2w7emOZDoxfY1K01Hb1WUsfjPyz1hRq8fAFoMhe6o7aUwIK9fUNgLVNJEqOIV+0dCQvNL3W
	MpdO2LZRH3uGwCPIfAUKOB0QKHe/UH5VC4waW52Qb2wdTdYEMYufPiZvL3h+ncGyEtygaNNYOEY
	mZj7/fkUO3lkc6r7Eiwq8yIpofZppz+6wr3ohMQkHC4xg/IgeXkP84cvNejvlbwYVQc0xjnJJlG
	KMqA3gfPYFLRshfIykIZWiM8KD8pUcJEQLKgYuScQ2Z2IdU7bjT0fz1urfjcBuQzIOX6Ojdyhdy
	P3hk07FTybaZIJ7B03Qw==
X-Google-Smtp-Source: AGHT+IFtveXLMgxlBhTtQr0v2fl/iak4iy84EQdfsJ5fabD43+515iFtQ/setitZ3iW4U9PmCkuR3w==
X-Received: by 2002:a05:690e:1409:b0:63e:19d0:f2c2 with SMTP id 956f58d0204a3-63e19d0f40emr3695412d50.17.1760755658477;
        Fri, 17 Oct 2025 19:47:38 -0700 (PDT)
Message-ID: <0a71a355-09d8-4e17-b6f6-0253f221b568@gmail.com>
Date: Fri, 17 Oct 2025 21:47:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20251017231636.GC2696@qaa.vinc17.org>
 <20251017235023.GA23530@openwall.com> <20251017235949.GD2696@qaa.vinc17.org>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20251017235949.GD2696@qaa.vinc17.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] rplay (Mark R. Boyns) potential security issues
 (unsanitized data, unchecked malloc...)

On 10/17/25 18:59, Vincent Lefevre wrote:
> On 2025-10-18 01:50:23 +0200, Solar Designer wrote:
>
> [...]
>
> Some of them may be minor, but ones in librplay may be a major
> issue. For instance, in Debian, /usr/libexec/fvwm2/2.7.0/FvwmEvent
> is linked against this library:
>
> qaa:~> ldd /usr/libexec/fvwm2/2.7.0/FvwmEvent
> [...]
>          librplay.so.3 => /lib/librplay.so.3 (0x00007f25461f4000)
> [...]
>
> meaning that this could make the window manager crash (unless it
> has some protection for modules).

When I last checked, FVWM "modules" actually run in separate processes, 
connected by pairs of pipes to the main FVWM process. A crashing module 
simply goes "poof" and can be restarted at the user's discretion, if the 
configuration provides a means to do so.


-- Jacob

