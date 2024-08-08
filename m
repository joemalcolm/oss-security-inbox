Received: (qmail 18351 invoked by uid 550); 8 Aug 2024 12:53:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19809 invoked from network); 8 Aug 2024 10:46:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1723114009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uhq2MDEo+3La8x/zx5DA3KtP5L4F7kc/dcQWf7f9Ddk=;
	b=NShJU8jdtCUmmNWi2tXckzciqMKDatGuyMY9uB04PGabhS97SIfhsYbC+0Hz7HUg+OUWAz
	ixWZP6UtZEZy+11aEWxk8rKPTT/c/YpRpFUBiK0j4eOGKRIIYMZ0YyKHpzbMR0CcDkltvN
	p1RZ38rFTiQVkCUI4qzDoyJqZ7RghU0=
X-MC-Unique: xZAKSxg-NA-5Yvglq2g6iQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723114006; x=1723718806;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pivZhIeI7eDUbDbVlDL60monZzS5KewImhNaX5P5q/M=;
        b=IJzXsWpvajGijGtGrHJP1WI+3dw5mIar4LRHwnECAysL5fCJjQH2Lbj5SWt1/ZDcHa
         Tc9gNQzGm4vkO6qWSvGrkoEYumFzqwdourPbKFav1SJeY28DAo6HIEZWOz+B5Wzdi14P
         2rKLf+K90zYat7yzEwYi0hV0eAJlupQkNJztMa+eGc/zQ5OgDkWsdiDEmElXFTSyTtLd
         Mlped9oZGEsdqlaXrb0SmCBhqF7kRkaFSzKA0MITyUSeq5ep35UilwL49ITH9yj6zVHZ
         yPGCJdTd4pViejSCcgKzIqNAZUE3x0lFl0F14Pv6EOz7fmcMDrWRp7guOWHNRFXs+IpT
         DsMA==
X-Gm-Message-State: AOJu0YwjT7qiocFm32Hbv5PGDtmBsfWKP4ld666fWSVB43jj/sWFyYRK
	ACBb72Cg5CJoPzRyyGConaEmeXCK+JIGkioYoMc3MrAqLdmFJ51WA7Mp8+vwX/JQOuf/kcxrRMg
	7pZcu0gT49cvP6S8Zg3mWbkvkQ9ieXMVPJ4JhMdfspU/2MWbl3TKlPkCp/WnWGsVSb15sCAUQ56
	FuRmY/S+DuLqd1IkWFVb+PcT+onWrIsM58A9+fV5/SZjgvPAxmcg==
X-Received: by 2002:a05:600c:4e8b:b0:426:6822:5aa8 with SMTP id 5b1f17b1804b1-4290af07600mr16716915e9.18.1723114005992;
        Thu, 08 Aug 2024 03:46:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEYle+g923W5zb8ney6Wm7lqo1ygc2QVa7pG29rNs6svfw03divTGjUD/cxCs4O7Blsl/gnw==
X-Received: by 2002:a05:600c:4e8b:b0:426:6822:5aa8 with SMTP id 5b1f17b1804b1-4290af07600mr16716645e9.18.1723114005387;
        Thu, 08 Aug 2024 03:46:45 -0700 (PDT)
From: Clemens Lang <cllang@redhat.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51\))
Date: Thu, 8 Aug 2024 12:46:34 +0200
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
 <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com>
To: oss-security@lists.openwall.com
In-Reply-To: <20240807174807.GA4206@openwall.com>
Message-Id: <DA850315-DB70-489A-994A-8845695BD15B@redhat.com>
X-Mailer: Apple Mail (2.3776.700.51)
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Hi,

> On 7. Aug 2024, at 19:48, Solar Designer <solar@openwall.com> wrote:
>=20
> 1. Hosting a public server that's meant to be usable by the widest
> audience possible, including from both up-to-date and older systems.
> For example, a website should display in latest web browsers, but
> command-line downloads from the same server should also work from old
> systems (e.g., running LTS distros).

Speaking of LTS distros: RHEL 6.10 supports TLS 1.2.
At what point is a distro not LTS, but a museum piece which we can ignore?
What currently supported LTS distro does not support TLS 1.2?


> 2. Scanning or crawling a wide variety of systems, e.g. by a search
> engine indexer, an asset enumeration tool, a security scanner, or during
> a pentest.

What good is a search engine index of a webpage no modern browser will conn=
ect to?

The other use cases sound like they=E2=80=99d be done with special tooling =
anyway, in which case that can continue to ship an older version of OpenSSL=
 for this purpose.


--=20
Clemens Lang
RHEL Crypto Team
Red Hat

