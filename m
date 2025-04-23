Received: (qmail 11497 invoked by uid 550); 23 Apr 2025 20:48:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11461 invoked from network); 23 Apr 2025 20:48:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745441305; x=1746046105; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h/kChgv3vcWXh7LhVh+fVlMUVaeGhxHAYQ4h+zO93a0=;
        b=D6FDGnep/gXQAU3khIY6Zxw+BaYUl+l4xx0TmsZcUH46q97vdWFAusZljoXZr+rG1W
         oyAXAOMZh4ofOKNbtwus6DljtQ1ukJHcBeN286aexuwh1BxaVqoluy2PV4uSL9boiao8
         vcv3R6NhR0VsHAqFRZTTd+6P0oeIfAB0ekjCZkz2J8amELz8b9PwRzeaxd8ozxYkaQiD
         PjpU3FrKiBMrJY0wNk3KvQ0OtUUyxQlaDCKgJJlbYyeYxoOOP/YnKERpjJbGoDlXdJpK
         VB5ev75XemRsPe2y5ww5s8qudlPZn8P34Bs/huZMsX6MGDBczNmrzRjWzkRnblAopRyq
         empA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745441305; x=1746046105;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h/kChgv3vcWXh7LhVh+fVlMUVaeGhxHAYQ4h+zO93a0=;
        b=L+u1JoQS5RamB4xULGCzOm9g0HH3Cj/mnnV0O+6PWrSks8ZJKB8gj2lowiAloZEbtX
         55zxQ4HlvRBkXzXbwSwCoOHyHiavCCsQr/HR4jjoSYEPgBnWf8zETxMkoVuzkhGQtclV
         tmuzoLDgZUI2ZIMnt/e6lM/U4Khm0anDfyibwWvIrO7zJWRAbZW5w47VsYZkTU/90ddg
         Ao+Wi9tEDLoY5upE2ccrA9fnUry1GrMFY8FWgVxR2U6x7SP3vEAWrQH5bRUpuQzPV1+U
         1XkBa5Wx8Ye9nXUhhXNjuCsjwDvSkjhW9ZRM4we3QUx9i7zGh9TevybX2JaQ0NnwmzOF
         /bZg==
X-Gm-Message-State: AOJu0YzHkJpEepVjpsEONV/hBk9ph1opOIASdm05u73QXO5ueZrixxtg
	jK9b88rTMqof9r0y+N+YhXsbyD74D5VqGozOFnAEgJOFcCVplyb0q835B3KC
X-Gm-Gg: ASbGnctLTybpCY8xqLfgLrce3aA5qlryqcDFCVsrnnR5aBhxQQzHKqrakORT2gKlb58
	HiXJ8nr/UOJ0zJgXxqCn269yx1vd0+vqY8rpdEJWm9gXt7j+A1IDdatfloVd9DgvhGFnlArUNqd
	u1pzbl0U9q+X0krdXEpinaYrxG2B73zrF7h6q4QyoVjV8pE6WqGfjApPJA01+qB95BeEj5OKMjf
	klccndIjP31hbCejGNMeNQ4+xfgs+LkjpeunNC8/12IxHWuXlGg/yEkMSf3/JVGnlE+wbu8kdE/
	HiEcUaHLuhZECPlgGUmRjgK6JiJ4+hvRXNOmqJxmLUiMUQvIBLyy2XyDKv4IwKECcAfey44+qPF
	P8ZV0SIpC
X-Google-Smtp-Source: AGHT+IFVKS39pMQRuYXpVKdINAhFrrxtTC/sV+IW/+AfDmrj6WWNlXkOYBjNyBq43OUUjGkgesb2Ow==
X-Received: by 2002:a05:6402:27c6:b0:5f3:4606:14c5 with SMTP id 4fb4d7f45d1cf-5f6ee090f9amr1638a12.15.1745441304985;
        Wed, 23 Apr 2025 13:48:24 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 23 Apr 2025 22:48:23 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aAlSF2Z3LlN-avD6@eldamar.lan>
References: <575DB6B1-8A9A-46C6-AA2C-9D0695E1FF85@contoso.com>
 <068a922d-d77d-45d2-9b18-e07e41c9a907@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <068a922d-d77d-45d2-9b18-e07e41c9a907@suse.de>
Subject: Re: [oss-security] vulnerabilities in busybox tar and cpio tools

Hi,

On Wed, Apr 23, 2025 at 05:38:17PM +0200, Ricardo Branco wrote:
> I reported this one in busybox's netstat a year ago:
>=20
> https://bugs.busybox.net/show_bug.cgi?id=3D15922
>=20
>=20
> The whole code needs a security audit for ANSI escapes like this.

FTR, this one has CVE-2024-58251 assigned.

Regards,
Salvatore
