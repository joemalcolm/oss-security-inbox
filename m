Received: (qmail 6025 invoked by uid 550); 23 Feb 2024 12:40:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17571 invoked from network); 23 Feb 2024 12:29:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brad-house.com; s=google; t=1708691552; x=1709296352; darn=lists.openwall.com;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=iKcAq8RcDlGGMUjSfFpwpG8/ehKx84BWDJZINZc8Gvg=;
        b=ewY/U07Pm/r2ECMeAtZZk00+AYuq91LqySOs8m0kIU9ynXBPhNDu4XrVpgXQyAmfd3
         ENqWqyayg9yH/dDhDgk4GQCOmhgWtS+YckPBQ9F2hnt8M1hqekiQPYztQn3Xycwc3Pdw
         pazAxe969lWwlc/xs0aYlBZwkYVl3dxuMHeUo2ID+ioAkQ1P3KsqustbQH5qzXs2tafi
         wTFcMkMDPhUj9XL71oo3pg5TlgiDuVQaEAI6hq+ZoynosnneXQ/wquT0bZ9N+Qp1Oqsr
         23dRljlnBbpJQdn1d7WJ+bX4oK2Ch00GcH1+PrDfvJcLs/Kphnv8ynwhnFnIgKQWw3Io
         CfwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708691552; x=1709296352;
        h=subject:from:content-language:to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iKcAq8RcDlGGMUjSfFpwpG8/ehKx84BWDJZINZc8Gvg=;
        b=mrlpuzW8JB/7Iw+hTjxrR75mel9PV6x0U6fZQkacLdCWxGIcL3FA1GtU+dbOVTF8AY
         FalsHT/NqOK3qiz/O1xFJB09Qm89QcfWQQohg82DMwJgYnaFaGM5pnEbCMGa/Uxv224v
         2Xcoun9OVVSxichcY9I6u4k3N1YCfGpnALHyYLROQ2yKL6AehUWpwz5f+kPsPL1fsST4
         Qk4vXNVAixNArwJDhSXLJEbpQWWq/WbjbSlrLB3kv2BPkJWouVDX5o78GJS7DA9aONG0
         wLxnvJHnOpW4SVzdvfg3yHI7QgvMUQg+XynsZUkfCdHLRo/01xt+E9s4yUuK+0ADpcrk
         p5AA==
X-Gm-Message-State: AOJu0YyBUtV2GjqxOXXzV1Uh+BlSze7OEa+CdkJOcDzq9ruLpsqeOvfu
	dBLyEvGE9RpEfwRAUsVH1D0rfETXS483oL6/G+6vH0CyJ8f6shHbK3U1ipJo+nR2CZoO5avzfhh
	5
X-Google-Smtp-Source: AGHT+IGMexk1ZxsTVFHzt4CelpEZ53wBX94i31Na1PFAmrrdwbmr5f7V36dnQRH076OWq3oX0EBNqg==
X-Received: by 2002:a25:a2d1:0:b0:dc6:17d2:3b89 with SMTP id c17-20020a25a2d1000000b00dc617d23b89mr1616991ybn.61.1708691552155;
        Fri, 23 Feb 2024 04:32:32 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------aLbgZxD8QGviYVG0iHnJ9lj1"
Message-ID: <b65aad61-048f-406c-afa3-3254748c0504@brad-house.com>
Date: Fri, 23 Feb 2024 07:32:30 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Content-Language: en-US
From: Brad House <brad@brad-house.com>
Subject: [oss-security] c-ares CVE-2024-25629

--------------aLbgZxD8QGviYVG0iHnJ9lj1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

There is a single security vulnerability in c-ares that has been 
released with c-ares 1.27.0.

*CVE-2024-25629 *


      Impact

|ares__read_line()|is used to parse local configuration files such 
as|/etc/resolv.conf|,|/etc/nsswitch.conf|, the|HOSTALIASES|file, and if 
using a c-ares version prior to 1.22.0, the|/etc/hosts|file. If any of 
these configuration files has an embedded|NULL|character as the first 
character in a new line, it can lead to attempting to read memory prior 
to the start of the given buffer which may result in a crash.


      Patches

Fixed in c-ares 1.27.0


      Workarounds

No workarounds exist.


      Credit

Vojtěch Vobr

--------------aLbgZxD8QGviYVG0iHnJ9lj1--
