Received: (qmail 5514 invoked by uid 550); 12 Nov 2024 16:40:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25983 invoked from network); 12 Nov 2024 15:12:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1731424352;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QC+ihCu6DucPpe7oAfOdHuqMn5stxZjB7XLOIcU8HWU=;
	b=h3piVBt1Hk/vfbvgeAKrsV0Tp7N9yE2q/E4rdot+lWeqaGfVFJQ+ULXUKx49tVePGCek19
	YFZ3veOZWRqKweQVPCtgY6ROegW2SgRvfF+hl3RqgJjXi+y2FOBvQZ0QpJPHFrqNjhoa0f
	l/bMPTtDbBgR8HHHVA8/OuszMisCj+A=
X-MC-Unique: qe6BwEjYNSqK_MrBJjnDDw-1
X-Mimecast-MFC-AGG-ID: qe6BwEjYNSqK_MrBJjnDDw
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731424350; x=1732029150;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DN53Xz1YBoAXlXPTcjRmH/dQHVkQCz07/TbTkl5AfDI=;
        b=TPrp1G1KBdmy62EgU0WdjvYnrnJl4A1l3lPMx/RP5uEWulaxJY2M2C8JRQ/o2/1v88
         y/g/TufH+xk8VG4PNRUbpLO7tL2v24OuuQxl0dDW7J+77fOm3b0+3IgIePpjuro3ktiP
         hOOdgfmKbXEyJ+YecxzY9Lcc7f7kcBKnH6xt1L1oCyO4k4bHnS2dU1rfSbDrXa0DTCoW
         jfu2a19hH57rV3Mh7XRzFyDAxrzVOCurxLh+gZpt/7/PzdxAed9+fGsQ2BlUYW9npARf
         TNnA6StXhaTKFHSKU4AuyX2302Ar9aj+NjqH1lToHIZ3hd2kNKRxROFHACgyCFfy3EJx
         o1Jg==
X-Gm-Message-State: AOJu0Yy1q1ZbMk4cpBD8DPAyRsprHs3chlnQxQtGUM6nnk23NjmjJFnE
	rw1k+URtmynbvvhpA561yRxM6Tx10IVSDgJuEeZ9n906UAUsKZ/k2XUkbnuLovAbaYWEZdV1FJX
	yeBliTgleDuZzVSkc4y4GWBmXc/GoJlKL+kKwiJ6PoyXQc5GVRuYUBz3TF82QtK2eTya7Do/EB2
	aQtS34LJz4mLg4rBvAtQ0K/sq+vVvBbLcdSgL0S2TmGVhRwAZOIQ==
X-Received: by 2002:a05:600c:3c9d:b0:430:4db0:3fef with SMTP id 5b1f17b1804b1-432cce77f66mr24118105e9.15.1731424349903;
        Tue, 12 Nov 2024 07:12:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEHrtqqQIRu24xHRkEXNDfTbg4Ig4gw7eIUeRM13mKhuZ75Y6TaN7gJ81m+/9Wjt4xjnw6sTw==
X-Received: by 2002:a05:600c:3c9d:b0:430:4db0:3fef with SMTP id 5b1f17b1804b1-432cce77f66mr24117875e9.15.1731424349423;
        Tue, 12 Nov 2024 07:12:29 -0800 (PST)
From: Clemens Lang <cllang@redhat.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.200.121\))
Date: Tue, 12 Nov 2024 16:12:18 +0100
References: <AM9P192MB13169D3C23104FC22ECCFD3AD74B2@AM9P192MB1316.EURP192.PROD.OUTLOOK.COM>
 <95ddd38e-2e23-4dee-b03c-a376d8cb9814@gmail.com>
 <20241112145853.GA6243@openwall.com>
To: oss-security@lists.openwall.com
In-Reply-To: <20241112145853.GA6243@openwall.com>
Message-Id: <D8A3DC3C-8463-4A6A-A3E6-CE3CD7D1BD4D@redhat.com>
X-Mailer: Apple Mail (2.3826.200.121)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Bkfq20hgqypzY93ywxB25rBWZCl17f7akr8t7RgMuc8_1731424350
X-Mimecast-Originator: redhat.com
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2024-36905: Linux kernel: Divide-by-zero on
 shutdown of TCP_SYN_RECV sockets

Hi,

> On 12. Nov 2024, at 15:58, Solar Designer <solar@openwall.com> wrote:
>=20
> So a question for this list/thread may be - where/how may we dispute
> CISA-ADP analysis?  Maybe someone would reply with specific contact info
> for them, and Joel would proceed with that.

I think the source for the CISA-ADP data is at [1]. For this specific CVE, =
the relevant file would be [2]. Their readme has a section at the bottom, w=
here they encourage feedback:

> We want to hear from you, the IT cybersecurity professional community, ab=
out Vulnrichment and ADP! If you see something, please feel free to say som=
ething in the Issues, or even better, open a Pull Request with your suggest=
ed fix.

I=E2=80=99m aware of at last one prior case where a similar case of (IMHO) =
overblown CVSS scores was discussed in an issue on this particular GitHub p=
roject [3].

Somebody seems to already have opened a ticket for this CVE, too: [4]


[1]: https://github.com/cisagov/vulnrichment
[2]: https://github.com/cisagov/vulnrichment/blob/develop/2024/36xxx/CVE-20=
24-36905.json
[3]: https://github.com/cisagov/vulnrichment/issues/93
[4]: https://github.com/cisagov/vulnrichment/issues/130


HTH,
Clemens
--=20
Clemens Lang
RHEL Crypto Team
Red Hat

