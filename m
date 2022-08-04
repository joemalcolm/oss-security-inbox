Received: (qmail 20438 invoked by uid 550); 5 Aug 2022 11:35:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21806 invoked from network); 4 Aug 2022 23:18:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=ETHP03xOwkMpB7ptZrDYZ2uRBk3zHT/qgWwBrh71h1E=;
        b=Pnoqq5TY4JFt9wPyXEIDdgN0R0skz3RSHk1Je9UjGNjQwZ64O3G65KsBL1rSsuMeGO
         THU9in4hJRRCV0pGJNXU9W87H4//QC6IhGoXZK+WKM6D+Ff720XjdKwXGuGqgv5Nrw1V
         UOwFBbkANpcyZy+QfdvKosDPsKoFKL7KHH1foU0mRjhte9O7lj9Vi5kM3x3imFLCb90C
         ThA7WFzHT6AZoHN3KkK1zG0UvNf2PP+CUKi3J4Jiye5sia1zdy/o0C3sdocTqYtIQx4l
         rzXUTT1tzhE3pC9r76P+x7xsHMM8P6sBWp/h3QqIfjq1vRI9AlWODRxxjWPwp7Uw/QgY
         5eYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=ETHP03xOwkMpB7ptZrDYZ2uRBk3zHT/qgWwBrh71h1E=;
        b=ntPyQy4dw7cL/gsWMVIKUDsPMolXo85vOwl6BqwJbEup0amMK+XVm7w4p6dh2dY5QJ
         oF7hP9vANs3B3T1hl/uIekZFnsRXuSg7hJjJnXTyumzX5HNAc+NUE4m1CNJ7mvnW5J2l
         KJ1GJVBpMposjMgtS8p14ejdCV8I25yGNwWb1URwOA8aup4+bVNbgxHxwXDQHcwFmQD+
         2cLL8iK07RUyWWyMGhAHBLH83bXduNBdztHuCssbZVpOi2lRSmg7ILdINKEaevacsC/y
         DqyYEkRHCYoBg/155Yo1Irj8l29FOEmJFLTbfTkNXZVKCXMtRXACy7hvoc2sTHRlIIRo
         9QnQ==
X-Gm-Message-State: ACgBeo1oDQx491rQ33YUjXXOqrOllcvU1aLbkxzJKVOK4WyA46hj/mL7
	E9BNpRxQrNZMm4w+YIkQchc3h8Wpw49pPO+1hyVGC5w2/kc=
X-Google-Smtp-Source: AA6agR4zJWTm0p/0SgYctFzLqWkNGrs2/ZGWb4Ew6TJ06AhHIZ3uogxusjcgaun6P03hZIsNhAI+z9v2wCJd6p5/tlU=
X-Received: by 2002:a81:1ed3:0:b0:31f:5186:91c0 with SMTP id
 e202-20020a811ed3000000b0031f518691c0mr3711238ywe.401.1659655082286; Thu, 04
 Aug 2022 16:18:02 -0700 (PDT)
MIME-Version: 1.0
From: Marko Lindqvist <cazfi74@gmail.com>
Date: Fri, 5 Aug 2022 02:17:51 +0300
Message-ID: <CAF6bG8ckH-W67J95eLHRnFH71n3PgtacBNk7aQdmJuyq8VRzMA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Freeciv < 2.6.7, freeciv-3.0 < 3.0.3, Modpack Installer buffer overflow

 Just released freeciv-2.6.7 & freeciv-3.0.3 fix buffer overflow in
Modpack Installer utility's handling of the modpack URL. Specially
crafted URLs, without any '/' -characters would result in an
underflowing length (unsigned)(-1) string copy, i.e., all of the
NULL-terminated string given as "URL" would get written beyond the
buffer reserved for it.

 Freeciv source tarballs are available from
https://www.freeciv.org/download.html for current 3.0, and from
https://www.freeciv.org/wiki/Old_downloads for 2.6.

 In case you can't make full version update at the moment, bug tracker
ticket has also a patch for this single issue attached:
https://osdn.net/projects/freeciv/ticket/45299



 - ML
