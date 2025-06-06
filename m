Received: (qmail 9753 invoked by uid 550); 6 Jun 2025 16:50:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1371 invoked from network); 6 Jun 2025 05:08:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749186502; x=1749791302; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Drgw5Rb4c+26UR7Ri9/GsuUBkkdkafE42rPJF12PlXY=;
        b=jf8QCrGLjqvgqoaCzcPQ0T1rme0b6J0JISXXKomSZgssJ9g4pIOykgC6+rOl9C0fA/
         tn9zKt6SYl4cQLb9EANUywwISynxp/HwDVA7+hNMYUDMpi71G/+MZvUzg12RLHvHDx24
         93VLRgBCVOs1rimdvjf0cUV+e/l0NLwWQj86k+m1U++Ij0wTgZwMMScjTvxfU9G97L9P
         P8wU47jgJ/6Iye83raYKPMiXbsyxGCWcot59WHZelaf3TK5tilvcsS5fvfyEVLqxl7Or
         h8U5/iw204XdMZ/UG/Ob2eee4E1LiszUeup4Y2m91hqDM6MJ/aLknH/O/bNJnR8olqj/
         opcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749186502; x=1749791302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Drgw5Rb4c+26UR7Ri9/GsuUBkkdkafE42rPJF12PlXY=;
        b=BM1HpoQXjiOmpV5SfvrPGN9CGv1ZU+VtScfFLklqqLwZtcGB+bGAozRzQaUY31QtLQ
         x3Z5qqV4LKti+X6ERYFUmwNnIH9eZW90YiIYbL9myJlsZrSQ8lJZuHQqhpKxrmn/6hox
         rGOi7dEg23JWR5bRkfgj9rzr76lYs9l0hTp/AcNIYKG0nhiO04hrql/nLA37ocjuwX+j
         vnor2B6GpqLayBIxF9tTJncnKsUCdhC97nPUHKOdRWq4+YARPXeUFT3lFo5WZgPjOkmE
         T9dQzx9Re06aIWdpBnugQpFXFDe0AbcOjrGpkAdfJ0C3UqARqZGfG28GzE8eIyUEVSJ3
         IbDA==
X-Gm-Message-State: AOJu0Yx+xRx8zlM/v28BRelRNhmzkbQEVmTfKLRG6tEsIt3E9OaMhuCH
	nYT2VqPmXw5DFYn8Kq/YzpHQPgr/HYtpFtaibzBWUBy8GiFTjK5lEkT/h2+v+w==
X-Gm-Gg: ASbGncvHtEYaF7mI0bz6txPn8pWDxjy8Oe26adFqFzkySVPzldW9Wh6PBqhEnT2ftEU
	ub21WO5BgO/q4vqH3j9HnUTfAx6IjMlNjZTCgFBKRkYCPbJAemUk/LqxJw3LYIc0TgtyuHb5dHU
	3kKr2ZgPVG5OkvJC2SceEkL0wtoGw2J8tIEtKcs0Dk/p4Wlf9lmyROXJUJPlx/taKU8fyH9Qz2a
	StnlcIxo/mYAZwhw+yE3cNaf++BlBmCAlT4o/aa/E/g29TIvjwmrGJwiJlg60NQ5ZM7H1a44M3p
	3wMm0ydcROFDuM8jfdqRseERyi4cZrvtXuz2HJn1tmugkXbubV6UuWjlg48=
X-Google-Smtp-Source: AGHT+IH+rVDuh5w6x+Ar6dzm0pNPyJLz3Wj9Bk81PMj2LMgxoRzNYia9nAb2v6CSv1oiq4bmM/a/LQ==
X-Received: by 2002:a05:6808:164d:b0:407:ab7a:66d0 with SMTP id 5614622812f47-40905262d60mr1499079b6e.25.1749186502550;
        Thu, 05 Jun 2025 22:08:22 -0700 (PDT)
Message-ID: <cce70a42-3e56-42d9-b01e-9c77a63c9917@gmail.com>
Date: Fri, 6 Jun 2025 00:08:16 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
 Attila Szasz <szasza.contact@gmail.com>
Cc: =?UTF-8?Q?Muhammed_H=C3=BCsam_Alzeyyat?= <hussamalzeyyat@gmail.com>
References: <20250603025919.GA11183@openwall.com>
 <705c9747-27f1-4988-98bb-568db4e7cd74@gmail.com>
 <20250606022448.GA718@openwall.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20250606022448.GA718@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Re: Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros

On 6/5/25 21:24, Solar Designer wrote:
> On Tue, Jun 03, 2025 at 12:38:11PM +0200, Attila Szasz wrote:
>> [...]
>> Since then I checked, and 5.4 LTS (any<=5.6) had been vulnerable without
>> the need to ever mount an untrusted/malformed FS just by systematically
>> corrupting a vanilla fs's B-trees with normal operations.

This looks like another (and far more serious) problem.  Mounting a 
crafted malicious image is one thing, but being able to turn an 
already-mounted legitimate filesystem malicious is quite another.

Are those "normal operations" available to unprivileged users?

Could a Web page potentially exploit this by manipulating the browser's 
disk cache or other storage mechanisms?  (Hopefully not, but that would 
make this remotely exploitable on what is (I hope) an extremely rare 
configuration.)

Do I correctly read "(any<=5.6)" as indicating that the filesystem 
corruption bug has been fixed for a long time now?


-- Jacob

