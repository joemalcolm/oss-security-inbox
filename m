X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["685" "Wednesday" "2" "January" "2019" "11:04:23" "+0400" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tQ_R_EVdYBK1WONym2d5TzvSHF7JzHtMN3BW=K4=MZ41A@mail.gmail.com>" "29" "[oss-security] aria2 leaks passwords for HTTP based authentication" nil nil nil "1" "2019010207:04:23" "[oss-security] aria2 leaks passwords for HTTP based authentication" (number mark "U       mishra.dhira Jan  2   29/685   " thread-indent "\"[oss-security] aria2 leaks passwords for HTTP based authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10224 invoked by uid 550); 2 Jan 2019 08:18:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9444 invoked from network); 2 Jan 2019 07:04:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=x8aUTjB/R6ThEV7LQHMzZUpjGxZ3A/w0Z3Kddt16hdw=;
        b=eF1VEhLuWudi0eAgq2vUHkDNegglK8B7dIQqEEcXRtFhyctZ8dNoxg5BsnElr29uMA
         iqH/iRTGYDYXq8DZXRdz7J+67spjkFAxpxeLFp0jJAfyk+7CMOODUz1O6TxXxQNXLS3j
         SHxDyHvRY0q9awb7dRmPBvGLwMtcFcTgLBmYHIZTfub56BtFYlnEAmRQ4L/RsNxiBL02
         jPd+JQSAKBDG0+fe4bRhwj/Po8xaia0bbcgPwZSSVsmqU/iLuJV/uPx0wvoxot8DddQ+
         NKjFyon7ig9LUJ/wh1XLYlWOOH1EWkOJhV4sE+/oZmmNoFAdfiMam1C7aMGiwtLW2ZJn
         9RkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=x8aUTjB/R6ThEV7LQHMzZUpjGxZ3A/w0Z3Kddt16hdw=;
        b=T1ORx78287cojTPaUFoMChK+7gjHEiB95qJofx/hX8aa3N13SZJHgTonNJ0Ci9BiEP
         +QhId6ZPkydpXts2E2Tn/2zp0Oo4ahFScMQuN45lloZtSpzxuCAiwYuIkETAVUEIygGn
         K6h929fXtB2gjcTggOWoiT+jueZN5Mz0wXg64kF21MIED0bBp9P57MySsWGWv5Sv7Xee
         EkQ6B6k8nh+xmicm/oV8FhQJgE7uQV2jG9oyAVfvYaYCZaKaJWh/XZT+5Cp8nLWwW7vg
         Ynt0vC8YisNp7Z8KP+Bdq9I50WN2zInb9VIpPAQD8Inj8qEy7M62iC7t6yAoxYA/LPAw
         OfGA==
X-Gm-Message-State: AJcUukcb0k6kDgno8eV2ZTh0XUABwKzF+pkgfyVyT/hQDfVXdLK9r3Lz
	sYwfI5pJ0ABC6H8SBTaAVqRfb55LnF+FcRhN7wn1GlGSgLU=
X-Google-Smtp-Source: ALg8bN6C7/YvdaQaeUh5B5Brj3Qo24OlcKFo/00wupWAQEiAXJ3U/PQ+ee2xMKe40vmM6RBcrXKzyEbL2kElpNOwRLw=
X-Received: by 2002:a63:2946:: with SMTP id p67mr12752394pgp.317.1546412674713;
 Tue, 01 Jan 2019 23:04:34 -0800 (PST)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Wed, 2 Jan 2019 11:04:23 +0400
Message-ID: <CAG8b5tQ_R_EVdYBK1WONym2d5TzvSHF7JzHtMN3BW=K4=MZ41A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000270df8057e74425c"
Subject: [oss-security] aria2 leaks passwords for HTTP based authentication

--000000000000270df8057e74425c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi List,


aria2 is a lightweight multi-protocol command-line utility which leaks data
or potential password via `--log=3D` attribute for HTTP based authentication
which might allow local attackers to obtain sensitive information. This
issue is somewhat similar to (2019/01/01/1).


It was observed that URL's which gets downloaded via `--log=3D` attribute
store=E2=80=99s sensitive information.

Example: aria2c --log=3Dfile https://user:passwd@example.com/


Later CVE-2019-3500 was assigned to this.




Thank you

@mishradhiraj_

--000000000000270df8057e74425c--
