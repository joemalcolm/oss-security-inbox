Received: (qmail 9901 invoked by uid 550); 27 Mar 2025 00:28:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24175 invoked from network); 27 Mar 2025 00:22:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743034955; x=1743639755; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i0U1trqe408QuW9wLdfltDMnXpvVUaH/6oR1oaarPds=;
        b=dz8DgxT+qWwMwT+aU6Dqc2U6pBvd4n8w9VKhO3izhLpXTSTJSJkSqxYHK4C33xQ3Xv
         QWwgUS5Hadu+ipLAi9ndOfGb7wEZPq53dVi0UfXDj5zK3XYNK/Hwm1eNm6ccGUXwzq9Q
         B13p60IFQtljRK9vgd6Z6ePzHquKBehtLspgnIyhZALfrUXOsBZmTYZ/olIF2E9tYc7A
         NuwWjZ56/8ivcWw4YsOxxGCXUMc6W1KL+yxBnkf5jMQ81Gg0oPKZWsBxQVcEEZKHl1t6
         UuYWTt1miHQpQfSNdRHG2meIfnG8il+Nk88EUUKxbwOSALtRDFaWuBSk2R2qzBHAM3fx
         2TEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743034955; x=1743639755;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i0U1trqe408QuW9wLdfltDMnXpvVUaH/6oR1oaarPds=;
        b=Pe2rH3TPRBFndR1oyW4pWfPcmabVXpXBevpw9a4U7cRgf0aH/VJqpfrGWvE8/FxcJk
         E/KUh8bsfm8IimUHGDaBdXvV0kaRVmce6a9L+WM0h/QM2PB/BYu+GGac1Q8MvrnpQdcp
         UTW+vCeBHxzB5wV9RYX4NpeZruCEHs3dmavvTjEGVZcMQxXNQiYsBxjr0IxC8CKffOLk
         H4B7BzZjYsqfLq3Taifqm8NyLWXiwNA6uxcoacX7UuwzqSwZrmqXQ4bN1UUHWWzsVbRK
         yCT+598Hend+MFaghm5XFBwwtSRqxA5SEI8AYh2aA1IMaYGpJAh9ro7Bi+AyfSAN3kvj
         Ke2g==
X-Gm-Message-State: AOJu0Yzey+YR1dJ52rLvy03xJ35SZDb0iIJuAnY3Hu2wirh0xA0gedVw
	8xKsWIfE7lIFeCaaXcKx4OW9OGO+prVJnbOfOmdsUEHNdbjC15/2kR5bhv4d/5pP7baWF1iw7rz
	tQGllfu1maQE9NXa50LmFxRSlYqIabcqy+zA=
X-Gm-Gg: ASbGncup8FBNDSA2GfcSrO0Ees9Kvu+UhkXDvyRFrFXDy+4aCQ5eYh9BgHCTQtCh8OY
	uT5sYu7f4nzAd1EKuF9g736YlxMJKKoNBRAA4Qnth6ZxkfeZ6mSyEAVBVwyihH/xvvN3lHaqdWh
	qDluIyvauhaflFuM97AuKwpStoozPTC1Ht2HGBRAuLNZZ4GRASdTgNGrky3CCQ
X-Google-Smtp-Source: AGHT+IHsta8NS83Gol/6mF7igZWalsVVzjcWAdXdRnVApA67gI1HmYfvuzIfxt6mPjAUzoOxqRrDFLrwZ2ruWTJ/vEo=
X-Received: by 2002:a17:907:2dac:b0:ac2:1c64:b26 with SMTP id
 a640c23a62f3a-ac6faf0a6b4mr117005266b.32.1743034954631; Wed, 26 Mar 2025
 17:22:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250326230703.GA7131@openwall.com> <d33e63e7-0b29-44b6-ba50-e53f1958d2f7@oracle.com>
 <833e90b2-db52-4939-b529-7d1ae411e867@thomas-ward.net>
In-Reply-To: <833e90b2-db52-4939-b529-7d1ae411e867@thomas-ward.net>
From: Mark Steward <marksteward@gmail.com>
Date: Thu, 27 Mar 2025 00:22:23 +0000
X-Gm-Features: AQ5f1JoOSA5dIPk2MdO3feAja-EqvmoJlLoBXrS6NrSFoOo7BjiLiVFeSVHC_ZQ
Message-ID: <CAPyX2necsCT8t5st6y0MwAncSDcLF-5ZR5s+i3Sy_=FKNB4urw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Thomas Ward <teward@thomas-ward.net>
Content-Type: multipart/alternative; boundary="0000000000004d520e063147f394"
Subject: Re: [oss-security] atop: Heap corruption

--0000000000004d520e063147f394
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 27, 2025 at 12:17=E2=80=AFAM Thomas Ward <teward@thomas-ward.ne=
t> wrote:

> Not sure if MITRE is on this list, but...
>
> On 2025-03-26 19:56, Alan Coopersmith wrote:
> >
> > CVE-2025-31160 appears to have been issued by Mitre to track this:
> >
> > https://www.cve.org/CVERecord?id=3DCVE-2025-31160
> >
> > but only listing the above blog and the ycombinator threads for details.
> >
> ... this should include a link to
> https://github.com/Atoptool/atop/issues/330 which is a tracker for the
> issue in this CVE.  It looks like a munmap patch has been provided but
> it looks also that this may be one of multiple 'suspicious' commits on
> the radar (if you read the issue thread).
>

Have you linked the wrong issue? This is the premature accusation that
doesn't match the symptoms and isn't likely to be in any distros. So it's
probably not worth linking to the CVE.


Mark

--0000000000004d520e063147f394--
