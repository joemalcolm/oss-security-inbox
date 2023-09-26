Received: (qmail 28041 invoked by uid 550); 26 Sep 2023 09:43:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27953 invoked from network); 26 Sep 2023 09:43:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695721427; x=1696326227; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s/z63DkiPDYKk+fE7M3qIsl/t2RJyoMqg2ZPWaYlKBE=;
        b=fSziiT/ZdOrV93Bt9KlT6/M9avKDnJz4i6VwtRn/92qB1OHeckImsZ/StpQUTCO7kr
         fyDpydCD0VXQfZmYB6vNrpDMNcfpnD8MsiH2GzZUZUxLX9q65NUZN9nnnW0pTUb/WLM1
         je/qtwTteFldcHlAAWclqe0I39JtzyfpRzMbVopxrzSlk0MKLfCHMEZoNBsMHbg5oo+4
         XEcqcuUEdsId3Xi9d9Yq9+zwrZnIm/cnHJ6DKip0khLIkKRmzDMlBWRvlszLtrXCkrs2
         PVgpzYyCwwiNpaphh9WoFmmTbYvIrnV489iNkGEEv2G0oQrDWf6tpioVej578mRFvAxQ
         olGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695721427; x=1696326227;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=s/z63DkiPDYKk+fE7M3qIsl/t2RJyoMqg2ZPWaYlKBE=;
        b=ZBB8zrqiQgRb9tIZAszHzWVlfbk8P7oWwuctB21iITb/BJmX8fn1B36MvD8q2MJAre
         +XgrUVdgL4rvdgIzPjqiyx9Y5q1eziNlkiXXAMASujiBwh/2xaByEQlb375UOA9OGMCX
         DE91KtdRd78BM+IpeEEUUHiuRV2V3Zb9oVTX47LZ6wHpSQyapcIoxsovUf15Wk7xbNGm
         mMBiWW9gWui45chZAxEgTBBhlzi970LtuP9vDDlzTMyq7coF5mEDi3U9lywrDawmgDeZ
         6DEDy6US2J+7dOdUS/J+c6oVR8TCupAi9RaGDGnOBDxIQw8B+0x9z1EPyh9C5iC9q1K5
         7T2g==
X-Gm-Message-State: AOJu0YyMvm3VFocLf2G56Yif4MTizoh249ZQbL0hFT/FuRLD+U5YDEVs
	pWIDRMgaZ4m8Q+HpdUsQmurIWWvmpO0zKg==
X-Google-Smtp-Source: AGHT+IHTlZtPunqQCdd44VYEHk7tMudzLLGjgr5bUnC5I2hr07xoXqSOxfpVja9C+eNUetrZYA2Y3w==
X-Received: by 2002:a5d:498b:0:b0:31a:ccc6:b8de with SMTP id r11-20020a5d498b000000b0031accc6b8demr7477024wrq.50.1695721427123;
        Tue, 26 Sep 2023 02:43:47 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 26 Sep 2023 11:43:45 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZRKn0bQVe4MBMYiC@eldamar.lan>
References: <20230921205250.GA13106@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921205250.GA13106@openwall.com>
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

Hi,

On Thu, Sep 21, 2023 at 10:52:50PM +0200, Solar Designer wrote:
> Hi,
> 
> Ideally this should have been brought in here ~10 days ago, but I guess
> better late than never, and I'd like to encourage others to be bringing
> relevant stuff to the list.
> 
> On September 11, Google announced an update to Chrome:
> 
> https://chromereleases.googleblog.com/2023/09/stable-channel-update-for-desktop_11.html
> 
> fixing this issue:
> 
> > Critical CVE-2023-4863: Heap buffer overflow in WebP. Reported by Apple
> > Security Engineering and Architecture (SEAR) and The Citizen Lab at The
> > University of Toronto's Munk School on 2023-09-06
> > 
> > We would also like to thank all security researchers that worked with us
> > during the development cycle to prevent security bugs from ever reaching
> > the stable channel.
> > 
> > Google is aware that an exploit for CVE-2023-4863 exists in the wild.
> 
> With the bug being in a library used by many projects, this made people
> wonder why a CVE was assigned to Chrome rather than to libwebp:
> 
> https://adamcaudill.com/2023/09/14/whose-cve-is-it-anyway/

Maybe related to this question in todays CVEs updates there appeared 

https://www.cve.org/CVERecord?id=CVE-2023-5129

vs.

https://www.cve.org/CVERecord?id=CVE-2023-4863

FWIW, I contacted the assigning CNAs so this can be clarified (e.g. if
one of those needs to be rejected).

Regards,
Salvatore
