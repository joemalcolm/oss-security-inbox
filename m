Received: (qmail 15873 invoked by uid 550); 24 Jun 2025 15:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3610 invoked from network); 24 Jun 2025 08:41:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750754481; x=1751359281; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Cdqpf6r3T+sB3KTTK5vG6NFAnR6dCIQRqG4s/xtHrKQ=;
        b=mgfZfHH4zRYyrTujUcoQeqZZHAHw3p5EBeMROvmWsDNiqAt94OHv3wWLwA01otumwo
         MgGG5EzY5+J/6IKPeBTxuBCAPmGkWppj8nddiFVVjzgPtb+pSxlBHEQXWmMVW6H+bCi3
         Jo4f2Y108ydHSUXL6hvO9nJ06SxNmv3gnq9a8DfKYzMH1PNZ9CyQtN3yAArWEtYJMH3g
         9SGKEHLu/FwDBHzepzlajneCA8nc82RQjcspZe/pTFZl/lRtoYOMf2oIIEavqwbiHXKL
         GrPz44fxBfQIKx488h/nbwNd1GJd1/DPo1lAsPMtxWCoZ5KjljPKlgyoUReBmaKlil17
         cphg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750754481; x=1751359281;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Cdqpf6r3T+sB3KTTK5vG6NFAnR6dCIQRqG4s/xtHrKQ=;
        b=tr4q4re49neoUSzl1oBfPcas9gIjY1+ph5GpaG7vZyR4X7nRwu8RXPzHZmQn4u/T+v
         eWLMqKo8Hi4+3/uoGWk9Thuze2mEdp1jL9A6ax60JUr1OOq+pNzlN4YfBPlJnMJd96ee
         5cOi14KAAR5fH9+Za2r1lcVwqQHJnuTzQ9oe9IzkLrBDkUFuJcSxKxawODP0Vr8/t16T
         gtf45PPp3jKrQot7GYi6O5FEDpchk2A8XoHXFMC/T3uYjh24K6pr7dwttFWPi0XdLmYg
         c/m2mcA9+bYoEm4hNbFrVx9AIdQgM/VFf8f1HGOjUr08ZUqO9kFqvIDnF0FoIiNVCS4z
         NPRA==
X-Gm-Message-State: AOJu0YwlOSK5e4gPbGUTQKIrN5NPlfBqtf8GiMXnPeFp1dXx7Fbox9TW
	lZUtxoguETtrlhm/XiVkX247y56Yx0KFHEjFeKYPxsl1b9KHDqQPrTohp5WOuof6E8ypws9x/j4
	Z8g8JItBdx7pW0lxnxjRcGeMXOzeCc0n+P16lzRnG94mN
X-Gm-Gg: ASbGnctpHRNNA/JGtGTQhjTtnIQ3/GtHE75NKQMGiDzRsx/PPwRUugBSg8AvUG7SGNJ
	YiDwYCaoZFOqpNKSj/PaTnnuc6FePcskjfTaOnEwdpM5E6Yc3P3W3H7zKWkz0PCgYsQZs5aqhGm
	q3hLmm+4d447YNiGpYovQk0WxNTWyHEeMBTdnmBLTzJw==
X-Google-Smtp-Source: AGHT+IHOcKfxXVJ05J7Y47Kcfq9GJWynFJuFMR8r7MPpipa+5fFhacPCYRBHsMWLs2vPtHO4kb0HsnroDmVpnt6TF0k=
X-Received: by 2002:a05:6902:1203:b0:e81:84ac:cd9 with SMTP id
 3f1490d57ef6-e842bc887d8mr19336377276.16.1750754480810; Tue, 24 Jun 2025
 01:41:20 -0700 (PDT)
MIME-Version: 1.0
From: grape mingijung <mingijung.grape@gmail.com>
Date: Tue, 24 Jun 2025 17:41:10 +0900
X-Gm-Features: Ac12FXwx0qP_Oi0TY0mDZHYQA4FCjn2SmDldGcMPD_2L4y1c95Bx2Pt3xqHIc8c
Message-ID: <CAFyT70hVsSX30bHYk-gjdUyi_a9am40Jw6bQmqtEetyCGVLV+g@mail.gmail.com>
In-Reply-To: <20250623234529.GA10997@openwall.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000eaf02606384d4ac4"
Subject: Re: [oss-security] xdg-open bypassing SameSite=Strict

--000000000000eaf02606384d4ac4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Thank you again for your continued attention to this topic.

With respect to sending SameSite=3DStrict cookies in CLI-initiated
navigations, it seems that different browsers may take slightly different
approaches to this issue. Because of that, it=E2=80=99s hard to predict how=
 things
will develop going forward.

My impression is that allowing SameSite=3DStrict cookies in CLI-initiated
navigations is unlikely to cause significant compatibility issues in
practice.

I=E2=80=99ll be following any updates with interest.

Best regards,
grape mingijung

--000000000000eaf02606384d4ac4--
