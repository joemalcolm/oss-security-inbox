Received: (qmail 12101 invoked by uid 550); 16 Aug 2024 13:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24039 invoked from network); 16 Aug 2024 04:04:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723781042; x=1724385842; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BkTBXQkUHM6JzF0frSGUBXP65j0KI4e70rVB7QkFjpw=;
        b=T4YEThXFhiq3JeM77ToE85nGTBOm0mfGujiSdt+nxsNXU2I8NXOVNk4qIecB18xhOi
         78X37/vCn+rimG4YnMbTtMPAjZdT7IV/bbW/ZxoNTBG1g5ErwuUOo5Dmza1mXQlU2IaM
         oGt+janRle9/fb2Rakg6Dm432+LU4dVGnaQ/1iiQQpEpZ1wrJVxws+c7uGT+bvL9Pr8m
         Xu1cL4TYaAmVbbjdqRV5MdW1gQeuTZ59XPmfwOrF3FR1B1EbrDPO//ewQus15L17uR1J
         u4S7ZC28b9gqBpe7QxlL6lFM8xKoHJiaTSiY/VRGnFGPjJWI4PrvjPjFHesVmqKEHcjK
         xvzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723781042; x=1724385842;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BkTBXQkUHM6JzF0frSGUBXP65j0KI4e70rVB7QkFjpw=;
        b=urNJ9Q6vmGXiBmNNp19NxyiMLr3nbQooPtpR/bTi1K2yZx2bsZ9Sd3DE9r+IMUypC3
         L2U1pyE4DpL1jKgSgXEFYv2X3GsiXv4OSb+eATaw9ogtHy2I414C9Z/c94xK1glP1sJU
         v5AzkwCRc6mke2Lsq6zwRjtbbyaKkymL9nvwzz1oxO8Eg4t9vGPGkK7HKW+mt6VrgB+H
         lKvy2zbphuz59hDQB3H8mqnkhFb/xMg7pmG2lrcWcEFYeitxv4CoYBig3tfiI4piEqY/
         Q/mmWXn5i3MaEKoMBQkdjleX4TavR3jYj2HdsmV3yYwmEDY/nswZVnyi6rtv34mIDToD
         oCyQ==
X-Gm-Message-State: AOJu0YwNmOJBN3khdpKGYbRqy21byiYOPU6s6hxFDr7ZLCDEoO3Ixkm6
	aZyp3MFGHvgsWSYf0DA3pIW2K5NabC2RIqk4MEH+oDARQZOKeN57u6M76Q==
X-Google-Smtp-Source: AGHT+IHOcez6Z/0NPVIoZ/iyfnue8KHNbL0CiCidHHU3an8St7ShuX+9CKVKD64rsnpc8V36XZPKCg==
X-Received: by 2002:a05:6808:180e:b0:3da:a721:283 with SMTP id 5614622812f47-3dd3ad19d79mr1678092b6e.7.1723781042097;
        Thu, 15 Aug 2024 21:04:02 -0700 (PDT)
Message-ID: <66BECFB0.3080704@gmail.com>
Date: Thu, 15 Aug 2024 23:04:00 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
CC: Neil Horman <nhorman@openssl.org>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com> <20240815111847.406cf6c1@computer>
In-Reply-To: <20240815111847.406cf6c1@computer>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Hanno Böck wrote:
> Hello,
>
> I have no particular insight on the prevalence of TLS 1.0/1.1 these
> days, but I want to make a more general comment.
> My impression of OpenSSL is that it has a strong tendency to ship
> "bloat", i.e., features that either barely anyone needs, but that still
> get added (remember Heartbeat extension?), or that should've been
> deprecated long ago.
>
> If this effort to deprecate old protocols is a sign that this is
> changing, I welcome this. I'd recommend to have a look at other things
> in the OpenSSL codebase that should be trimmed.
>   

That actually raises another question:  what is actually to be gained 
from deprecating TLS1.0/1.1?  Did the protocol significantly change or 
is the only major difference new cipher suites?

In other words, what non-trivial code paths would dropping TLS1.0/1.1 
entirely allow removing?  (Concatenating SHA1+MD5 is trivial.)

> I also think there's probably potential to remove some obsolete
> ciphers (DSA?).

While DSA is definitely obsolete (advances in conventional computing 
have begun to approach the ability to plausibly solve 1024-bit keys, and 
DSA keys *MUST* be 1024-bit, supposedly to facilitate smartcard 
implementations), OpenSSL is also a general cryptographic library and 
applications can use its primitives for other purposes.  In particular, 
this means that dropping TLS1.0/1.1 cipher suites does *not* mean you 
can drop the ciphers that were used in those suites.



-- Jacob
