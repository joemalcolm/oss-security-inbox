Received: (qmail 18171 invoked by uid 550); 28 Jul 2025 23:35:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28455 invoked from network); 28 Jul 2025 23:00:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wichmann.us; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1753743632;
	 x=1753830032; bh=C16TOcWxIIh6Pk+5RmLubp0M0/E+bNm8tD7bge2uOLw=; b=
	Omzt7Oi6Wg2BPxdo09eW0kOaS3K03nDgN/GAsZDaKY515FhTb/H5fOoCKYj2qOge
	bsuYVwLi0TZPiO6U0fOytV1DE+vXyPeC9ND6bB6tqPsf9WGEh2dRB6/v2n9nEuye
	HBzhPURalHzrZrUp0OWlERWYQgh2+6H7Vf9bwS+fAPFLHie2v/Y4A/9TfaS4AF4N
	Q5NoGI5ASkOrQdaxH2wplsj8GF75wzMEaiQ+yx1FT587xJQgjzrTzTsCb4gOiZJL
	whfyovZPMZ1urXe1Pn6Aos59y98W4/+wilnfdC/zV4qwGqDNrFWrpG8Yh+6xkgYc
	7iIe8vD2DGWaoAPsbW/xuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1753743632; x=1753830032; bh=C
	16TOcWxIIh6Pk+5RmLubp0M0/E+bNm8tD7bge2uOLw=; b=nzjmQpXScTtquRGYF
	zNrvUZ7DFxYMR0DILB+GbuHKZ6/gWLcSep6+kMYcndtyKGprHpF6Z0DD8BnPxKsj
	rbJ73kHo74gQBM5NBRwLo6/g/BcJcUQE5PSm5FAlbJ0iMURIIBqd8O4cwwnjCvwl
	vDFAzZv9Cs85PJ/+P8Sw/FQk/Iz/V2gMS/BKvLieIhN7ldiVrX1nnXRKL6/I4Vqx
	X1dKnoYumIhE4D5UuIjpQ5OPGieDHN3wgAUAF4m3sIQ+seVaRcemqpS3DIsNZBE7
	6bapO/xFOXTcgkvumf316sG/MDt9bq+qZmlEFAEm+a9tJ2V9uWOhIcpCOo/wBA3d
	KnhaA==
X-ME-Sender: <xms:DwGIaPQEOOR73-M1k036m_wMOILyr8OVxFHZmbYdw6nmrfMn3Nsv4g>
    <xme:DwGIaA9Kht0rof1weRpc248m2RviQgezYerrmG1URbemRHRmyo9URZ-EKjlkslqB1
    eQCWJkilzwpkUqdM54>
X-ME-Received: <xmr:DwGIaGpLZWjWUogl-bQ4jQae6Hw_CtT7kywEaIKLcFkV82LPMgDpYXCCMDlIPyivn1_ZvKdNsU1z8SC317aC-nrgy4DrKV2ahA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdelfeeggecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkfffgggfuffvfhfhjggtgfesthejredttd
    dvjeenucfhrhhomhepofgrthhsucghihgthhhmrghnnhcuoehmrghtshesfihitghhmhgr
    nhhnrdhusheqnecuggftrfgrthhtvghrnhepteejvefhfeelffeiveduuddvheekheehud
    elhfevtedvheehveeuffeukedvvdetnecuffhomhgrihhnpegtvhgvrdhorhhgnecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhsseifih
    gthhhmrghnnhdruhhspdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdp
    rhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrd
    gtohhmpdhrtghpthhtohepshgvtghurhhithihsehphihthhhonhdrohhrgh
X-ME-Proxy: <xmx:DwGIaNnVYNDaVYITM8W6Hw58v4y0CHWRAgSw2qz40yzg3YQJgykhcg>
    <xmx:DwGIaNLu_6jEmTtex4GpgBHHYCIUw-ZBnUudeAmV7IdYoXH5sySAqw>
    <xmx:DwGIaCwOtgbQAumo50vD6ldKM9YU3RTuiUZ-uqS94wad1M4r2nshKg>
    <xmx:DwGIaFuIoVYE6PL-1ilInrTg6daYnnwU9fV8RHpwnjnKH_slz37LOQ>
    <xmx:EAGIaDCaWTaumK4THPi1NiLvVfw2u1DvUdxgSbYB7dsoRYx8xoDf88Bl>
Feedback-ID: i387144f0:Fastmail
Message-ID: <94d43c9f-1280-4247-bef2-556190620d84@wichmann.us>
Date: Mon, 28 Jul 2025 17:00:29 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAADqWPT33dBPg2cba1h39veP-_C4bpmsn-On8mEXio0Nz_gcEg@mail.gmail.com>
 <c1d8d50a-9e67-411e-8f1e-cb2de457a637@oracle.com>
From: Mats Wichmann <mats@wichmann.us>
Content-Language: en-US
Autocrypt: addr=mats@wichmann.us;
 keydata= xsDiBD9xp6oRBAC1vd3YI8Gcr1CxpV1gldNQu0uQsNaICDk+Ai3+R163s/P83JOYG+SBEA3P
 v7iZx70qpQ3RzP7KrjF1Nm6j0em9ccUX2fPQUCAxXw5Hiq7CSMiwQQZRI6shcnyMh9XTKViT
 WK5MrKDyvjDEn7epjKzKwPS5SG039l6XaOKU0A4uGwCgsNqUQqC0gMMcbKlJV8ql58iKmbMD
 /ii8FPQrXmyS/FnsPs7UddV5qMHKm7NUH5oiKuMVyakInRyq9iIxuu3D4Ec6mWRKcGsjmIkW
 HXCSz0aefs6dsqNqpU54cYioJ3wP5LzHK7oclgJPryVt5Qezbdutf8SQf8gVkaNIlkxwGUzi
 bKTZ6CHzwlz9nNgeel0XPUcZzFxGA/4paeCg2rMSVuAhUQbsLYHu4XzTs9P16zaXkrtxc4m5
 b+BF5xsLgTpyO5l859XudS2Gp+7/Y37dAU4QlyGGOboWmF1y9U5DnzBwG8ghsnym+ga58MJh
 LdRdQQ6xQolCpEXOuzm40f2r5uMxF3KOJ7WpIPuGAkeCPru9BmlATH+zOs0gTWF0cyBXaWNo
 bWFubiA8bWF0c0B3aWNobWFubi51cz7CYQQTEQIAIQIbAwYLCQgHAwIDFQIDAxYCAQIeAQIX
 gAUCT0VyZwIZAQAKCRDAMaCQc9hUxiZBAJ9cWziGp7hVfsu5T+cQptc3rLNndQCgrZh8u5LW
 BfJ5e/Y+3PwZ8UEm+ELOwE0EP5is8BAEAMtwzcA8TYf5UTjDMgwcSNoErTc9ag+IX05QFgL8
 aF8sfJRv5atcitqQy0gSIsOzI+L/AFdPN/+QQI3dL1tCq14t32KPDtigDhzm6jVPXX5z+V9u
 xnD8XTp+ZvNcWoHXjViM8aXeLLEiCpiVCho307h3XShvqoKINWRQWeAsKKDDAAMFA/48zaey
 wiiEyvI0meJ1KkNHxdLP0yLODr1WV6j9xkPkLWOaIDw7dlwEOlF1N1YtZ2wa0p1wsttdIbIx
 ffgwXmcH4zrdxUIMz3U0BqYzk5H+5cYFXECXTFVOmweS+JECYMj80PjRoKCO1eVO1N30zksB
 36NnhZWPRWIhjK3ZarIYH8JGBBgRAgAGBQI/mKzwAAoJEMAxoJBz2FTG6VEAoKDYHfDp5Q3q
 PuPvPahCE9HsXMgAAJ9INTqcLSJrOfyJ8q95nBO1T26H2Q==
In-Reply-To: <c1d8d50a-9e67-411e-8f1e-cb2de457a637@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Fwd:[CVE-2025-8194] Cpython Tarfile infinite loop
 during parsing with negative member offset

On 7/28/25 13:55, Alan Coopersmith forwarded a cPython security issue:

some unfortunate glitches here. first, a template failure:

> There is a HIGH severity vulnerability affecting {project}.

second and third:

> Please see the linked CVE ID for the latest information on affected 
> versions:
> 
> * https://www.cve.org/CVERecord?id=CVE-2025-8194
The CVE contents suggest nothing is broken:

 > affected

 >    affected from 0 before 3.14.0

(3.14 still being unreleased).  But patches for this were backported to 
all supported cPython versions, so the effect must be a bit wider than that.


And in the cve record itself, the patch suggestion comes out mangled.
