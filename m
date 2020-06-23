X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["993" "Tuesday" "23" "June" "2020" "16:52:12" "+0530" "Rohit Keshri" "rkeshri@redhat.com" "<CAKx+4-qHV2QzfTZKLt23E2jgnLvnncdAVUmqqdRKZhJFLV3tMA@mail.gmail.com>" "31" "[oss-security] CVE-2020-10769 kernel: Buffer over-read in crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned." nil nil nil "6" "2020062311:22:12" "[oss-security] CVE-2020-10769 kernel: Buffer over-read in crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned." (number mark "U       rkeshri@redh Jun 23   31/993   " thread-indent "\"[oss-security] CVE-2020-10769 kernel: Buffer over-read in crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned.\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10769 kernel: Buffer over-read in crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30212 invoked by uid 550); 23 Jun 2020 12:19:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5865 invoked from network); 23 Jun 2020 11:22:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592911347;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=m+pvUqcuEoZ7epDYIJTJNiptEQ5bA+YIy+0hMzNglO8=;
	b=OjoPjiWv5Mw2SUpaUI4K1gtxXEvI6Mf995i006V9lvdI7QexITJhHFKUUh6bfx8VDkjqAW
	4f3lc5tFbruitWWpm/sQve5MD+dxrTtKnJTuStPAvRWCctXUwwp5avqv5PTyqoE1Y+upa9
	yjoybgRxIXyESRD2iEbCdNMRgiNoVdQ=
X-MC-Unique: YqBF93FIPeiosIQEFrP-mQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=m+pvUqcuEoZ7epDYIJTJNiptEQ5bA+YIy+0hMzNglO8=;
        b=OlMtG9LNYawoTuGY8B84vEf6qBJxySbbYUtLwQLZvN87tIetyy6otRICnU5VPh0F02
         3OzQgNw6dQzEO+JHAMoBdSW2xBl/hAzqGGb64tTnOTtTaItaBP/k4EjfCz5NHDzAX4ew
         /rtF63+XnqY/v/ijbqvi2xb/1MgKC070JH3ilT6waWgu8hOK8xJlLVv/PwRMN+3jbRjK
         9slT6ozMHjBT35JaGvhi6SmLV9Ks85IwigmdAQz4ymBXBmneFIvPdoyaSkWQNPHyxgks
         8/c0lN4bXAvYJFZfaQjJX4TzzE7RXwwIaQK2MmVmBnbpclcuJXM/1rP8LXw4fmTpY3Uq
         seTQ==
X-Gm-Message-State: AOAM533kXRF/IS1rTLD821HR6QJtn0UHxaIE7Gq37+O07h83JvmUGJ1g
	XqPaGS+cUHLGqOFXmdTsb+f4HY6GRgjkJF/s/TasAt+iVkTjl55TGqYnvmUWkQZDPorwIrL+IlM
	PpWmkTr69jhzEM95+GXAG9b8wn68y+GMCCuVTh6ikryBj
X-Received: by 2002:a1f:18ce:: with SMTP id 197mr8828111vky.15.1592911343651;
        Tue, 23 Jun 2020 04:22:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw4Yas1r+j/xVYqhHKZWOW6m4Sm2BadJGS/V3ZI0RVaj0KuuZluiRHTT7pZ+wR0b7RqXqUmC4UC+idwAj2vr/I=
X-Received: by 2002:a1f:18ce:: with SMTP id 197mr8828102vky.15.1592911343316;
 Tue, 23 Jun 2020 04:22:23 -0700 (PDT)
MIME-Version: 1.0
From: Rohit Keshri <rkeshri@redhat.com>
Date: Tue, 23 Jun 2020 16:52:12 +0530
Message-ID: <CAKx+4-qHV2QzfTZKLt23E2jgnLvnncdAVUmqqdRKZhJFLV3tMA@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000c7095905a8be92e2"
Subject: [oss-security] CVE-2020-10769 kernel: Buffer over-read in
 crypto_authenc_extractkeys() when a payload longer than 4 bytes is not aligned.

--000000000000c7095905a8be92e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Team,

Red Hats kernel has a flaw in Authenticated Encryption with Associated Data
(AEAD), a form of encryption technique which
simultaneously assures the confidentiality and authenticity of data with
below details.

A buffer over-read flaw was found in crypto_authenc_extractkeys in
crypto/authenc.c  in  the IPsec Cryptographic  algorithm=E2=80=99s
module, authenc. When a payload is longer than 4 bytes, and is not
following 4-byte alignment boundary guidelines, it causes
a buffer over-read threat, leading to a system crash. This flaw allows a
local attacker with  user  privileges  to  cause a  denial
of service.

'CVE-2020-10769' was assigned by Red Hat Inc.

Upstream fix:
https://lkml.org/lkml/2019/1/21/675

Thank you
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

--000000000000c7095905a8be92e2--

