X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2165" "Thursday" "27" "January" "2022" "23:20:48" "+0100" "Mathias Krause" "minipli@grsecurity.net" nil "51" "[oss-security] Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in the vmwgfx driver" nil nil nil "1" nil nil (number mark "U       minipli@grse Jan 27   51/2165  " thread-indent "\"[oss-security] Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in the vmwgfx driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in the vmwgfx driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22022 invoked by uid 550); 27 Jan 2022 22:21:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22003 invoked from network); 27 Jan 2022 22:21:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grsecurity.net; s=grsec;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:references:in-reply-to;
        bh=FUUZcqqSith31zZKUhAxJ2fgf+/x6JtPBkxTuc8NEbM=;
        b=YUAulw3KWJH499/mRrMzwnv7EZfG0ihwzd0H+pNkUc9HumBqxSCEIXoqq7aDjuSR6b
         8yQk75NdrUl68ISvbNHHeKzOUZkxGTgQGLZMlVwJJFGbvVwu+wIsHVsMV5PlzSPpYk9j
         YN2VQXrHchF5gsI3vkoTkS2wC5rUYLsB4qPeJjWMsWKswgjX7xjN09yn1AJgkCGc2BmJ
         5D0z9dO/7p6h8hr5kWQRuSfFKZsbw3C7yWPiGCBW1C30elTpFCiaWCnTrBc2RSMLsvAf
         NBo/NeOeOLPo6cLEGPWUpghJ/YxpSiwYnRJDZosCNitZKQPQfYl0mBPv1hciDM7N4AHc
         ixBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:references:in-reply-to;
        bh=FUUZcqqSith31zZKUhAxJ2fgf+/x6JtPBkxTuc8NEbM=;
        b=08pHasm1AD3qRFFa9PUFGXwhlwambizHHKHBYZ9EyjCewkCWETsqOyzt55sBu6XQsI
         Kz6bWro0S6azyEL2FTunyghD5o0z790qUU5as72BMvHTekWQNF5SLgib/d/0VlQ3pdjp
         1zljQoOokMvslIRMmbPymXszpHHNCmIECwYAXNU0du56eP4eDYCkSacfeB+R2k1tj8ft
         DwFb0GKrYmH+4A6ybmC0X2SVQRlUXMZ0HkOLAsYjz1kAQcuUPrZXtVC1G2mwznxhBwDq
         eIHl9f+Xxyx1qsoX+483nJzFs6fWWeOFn/WW/qLzwysgDbMxw2E9rbwTttSMxOVHouhE
         cdCQ==
X-Gm-Message-State: AOAM53155BWqi3vhwTM9WIioKP4rKadVd9f+M18KUsz34kyGSXPZdt5y
	B3xX3U2BEAM9whurkhlCHMdr3b6uLUJmCw==
X-Google-Smtp-Source: ABdhPJxyEwC3f6CP302ems9G1UiIpj09tMoQ9Eqa16U0cKYXuMI5hK15ASNz+K3yFNCn6fcvaD08ZQ==
X-Received: by 2002:a17:907:9716:: with SMTP id jg22mr4696616ejc.378.1643322049412;
        Thu, 27 Jan 2022 14:20:49 -0800 (PST)
Message-ID: <77daef92-54bb-4c5c-cea2-c489e46d9027@grsecurity.net>
Date: Thu, 27 Jan 2022 23:20:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Mathias Krause <minipli@grsecurity.net>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
References: <0f115734-5e21-8fa9-7e96-f8636788a0bc@grsecurity.net>
In-Reply-To: <0f115734-5e21-8fa9-7e96-f8636788a0bc@grsecurity.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------x1vXWnHlWHaszlXfhgE4q10B"
Subject: [oss-security] Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in
 the vmwgfx driver

--------------x1vXWnHlWHaszlXfhgE4q10B
Content-Type: multipart/mixed; boundary="------------eVc1auY1xDWK8AaPAtqZ8nkY";
 protected-headers="v1"
From: Mathias Krause <minipli@grsecurity.net>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <77daef92-54bb-4c5c-cea2-c489e46d9027@grsecurity.net>
Subject: Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in
 the vmwgfx driver
References: <0f115734-5e21-8fa9-7e96-f8636788a0bc@grsecurity.net>
In-Reply-To: <0f115734-5e21-8fa9-7e96-f8636788a0bc@grsecurity.net>

--------------eVc1auY1xDWK8AaPAtqZ8nkY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Am 27.01.22 um 21:00 schrieb Mathias Krause:
> Exploiting this vulnerability requires an attacker to have access to
> either /dev/dri/card0 or /dev/dri/rendererD128 and be able to issue an
> ioctl() on the resulting file descriptor.

Forgot to mention, as per linux-distros' list policy, an exploit for the
vulnerability will be provided in 7 days, as one has been shared with
the linux-distros before.

Meanwhile the patch was merged into Linux mainline:
https://git.kernel.org/linus/a0f90c881570

Thanks,
Mathias

--------------eVc1auY1xDWK8AaPAtqZ8nkY--

--------------x1vXWnHlWHaszlXfhgE4q10B
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEd7J359B9wKgGsB94J4hPxYYBGYYFAmHzGsAFAwAAAAAACgkQJ4hPxYYBGYbu
sAv+KFJX8BrVsHI7slE0ASA00dbw3wQ0lqKJnhlqjJM1JajnAl61lYBS3l2cwwbA+fEVG1LrnOwf
bp3N0vglRRJnEYtrd9ZD8zGkTAetRYCOmHEclvsiB5Ub6VYt2D9fXB+1OaStTf33tgc/PwsTFSzJ
FjMHnRSroLpIClocvEf256kryQvnffs99Fp2YKOlb7qmkbaplk4yRp+lpOXbHxpuUumk6tQBN6NV
6c/9JZ2/fwxYqS4lNOIIPobpCdtbEdSG0kh0ZA9scM18Leu6C88rEyIWWgBojlo3qbT0uJ9u/p0E
mMbL4y9sN16cx/KRdE3HoCmhWHB9s3bs7mdWRwsWMMzJ/3/IoNQwv8Cn1qPk+rXBNBWfu3h1xi4P
t60gFFxb2x6TtJgXu8AE+2+umvGzS0bvEJg4JPXN98vtISSA+57ZKlGi6ylv67bQP/DJu7WFWA/m
qftcCwFOD4qigZdK1E0gqT7STJ7GdlnVQBhC2IH/9Fpb2CZY8/tP0ECp/PfL
=xWla
-----END PGP SIGNATURE-----

--------------x1vXWnHlWHaszlXfhgE4q10B--
