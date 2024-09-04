Received: (qmail 3173 invoked by uid 550); 4 Sep 2024 10:00:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7223 invoked from network); 4 Sep 2024 06:46:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725432371; x=1726037171; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jHbbmaszpMm7N5YV2GtMCNJJ1bzxQWCCNUGEcmzeMKo=;
        b=dfWaGlT41UJGI6e1lqZr6yRGZrYvDpT25i5oKn1SnC8Zuby6qyjdHUZasCpjwcIgkV
         g1ly8bBxJU7clD9LjWW6FIcY+zGnUt0Ymc1YuwESlEQ3ekloX7iBoyVO0X7teoSPWt9e
         9PI4owA+2fQcbambpP5or8b91ZQ4Mg+kLDDIqm0wtdln3tHMTLI5X0M8fQwWry5OhaTq
         EB/TCJJ7QXoGvJa7O4Z0nHDg5wkNtSkuCp0GrIuKOKfwJhw2p1774aemiTlisheZmVjq
         zJPW9jmR6WK8WqLydkLP3+pc3LxcD4lfzHpXzikTRrnobf9/SMqNk0Ip/rbsNHauAyNF
         +n+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725432371; x=1726037171;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jHbbmaszpMm7N5YV2GtMCNJJ1bzxQWCCNUGEcmzeMKo=;
        b=RLU3xz7t9T/yeFLwOcn2VoWeM36ifHlRJLSxWSBypbs5z/yap8sztkMRIpmewP4o5+
         LrsWKauYgQduyZEzjX9FbM1eMV6+kc4sRVyJxtyQmm+VdPFmyD76R+8xmz+3oCSbHjH6
         sIUGNWfov1SMkWYFF4Ksf4w6wiE2jsyPf1lHoEE76fZtA0Nq7vjnNSKYO7q+atLGsVU4
         zp4SuhprwHuz6lLNV/WK0s337Tv/V2Mcv60MpgFaRbstVRdoZR6/hEukj8VxTGOdhpvg
         /zTabINvbJffIrMJf9RNcrxfFJP3PwAw8CGsVcuDwCv9NxLpiJk7DeqhyaEv+hP0dsp7
         jLEw==
X-Gm-Message-State: AOJu0YwRs8fwe+i5jAh5ow1SWcf24ll3GG422g1GPgmgtc5v13yvu8Sr
	bCvpP9KaHEk1yT9ehwv9357i4RerAE6EyhRxQIm1InY8nPwct4K0cfX/WMJhB6mh5/DZhD5OQrn
	tQc+BgkNOM7SmqtwP8/Jg3sOD/XjOM8v/G2uIZA==
X-Google-Smtp-Source: AGHT+IGi1hGNfG/Y2iX1Gh2+rM+mbeQRP2LK0bau5u7FUo5qDdVUK2ZfcAsh9p6rKp6x7bG6X2a2wQy3kHuyGblfClc=
X-Received: by 2002:a05:6512:3089:b0:533:324a:9df6 with SMTP id
 2adb3069b0e04-53546b5043cmr15688231e87.29.1725432370905; Tue, 03 Sep 2024
 23:46:10 -0700 (PDT)
MIME-Version: 1.0
From: Sergei G <serg.gordey@gmail.com>
Date: Wed, 4 Sep 2024 09:45:59 +0300
Message-ID: <CAKtDSqCsXGO8UWZxo8fdQi2DS8=wuLTEtsomx64+7WxM4ciC8A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008d4c8f0621458701"
Subject: [oss-security] Webmin UDP/10000 discovery service Loop DoS (COK-2024-05-05)

--0000000000008d4c8f0621458701
Content-Type: text/plain; charset="UTF-8"

Webmin is a web-based system administration tool for Unix-like servers, and
services with about 1,000,000 yearly installations worldwide.

Webmin/Virtualmin use a UDP service discovery, usually running on port
UDP/10000. This service responds to any UDP request with the IP address and
port on which the control panel is available.

This behavior can be used to implement a Loop DoS attack (CVE-2024-2169
etc) by sending udp packets with spoofed source ip:port using other Webmin
instance IP-andreess that can lead to endless traffic exchange between
hosts, Denial of Service (DOS) and/or abuse of resources.

Fix:
Users are recommended to upgrade to version Webmin 2.202, Virtualmin 7.20.2
which fixes the issue.

Workaround:
Block UDP/10000 the service for access from the Internet.

References:
https://webmin.com/
https://cispa.de/en/loop-dos
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2024-2169

Credits:
Alexander Chernenkov, Sergey Gordeychik, CyberOK

--0000000000008d4c8f0621458701--
