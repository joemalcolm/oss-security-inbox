Received: (qmail 4042 invoked by uid 550); 2 Jul 2025 13:05:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27977 invoked from network); 2 Jul 2025 09:42:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751449314; x=1752054114; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cyaIFMTvsDnIp0tBlEgaQpKbsABXy1WjysFgpCWrBkQ=;
        b=Azsr+QPGNyD0v3tyf6GUFAdcmkXlzVcLBH9tIdArm6n3nkLDI3BNgTx7Eac+Pc+RR+
         CUQuLYn4ZKPi1wgrMpNriztMnGL/QA0WJM0HJUISPC0+p2tQchs0PpZJioI4BeMlhbiy
         7DoiM0650HSL6ppp9Tg74xEegTlTi7VgyAwBgs5pA2pLJQIhDIP2WYWx7ETlOwsdsi6B
         G6QMUELb43GB7W0RZXrXB2SAHoxNDg9r4RRtWZEag1vGV3Lz1WqVg+yexv0x/8fJrE0H
         o8ZGHlgjlVu+wLcwtOfZbcq67HyKfIqCkJ7JveKo+3xSMibYi5GjX0dvOZJ2s9gI8mnT
         Hacg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751449314; x=1752054114;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cyaIFMTvsDnIp0tBlEgaQpKbsABXy1WjysFgpCWrBkQ=;
        b=lCYRjOA8h7/7KYiCJrN7q5BJ6cACbuDx8vUG4nq6sgHUXGmV9KLZgI/fEJ299+SxV9
         wWKo2p9rdm55dOA1mEiuNVPRtt8sU8fpuETZGbYK02G3MCegN8+phlPHqVHHmPbxwjw/
         6xLAbx9r40FjpB1QqMBtYHMj75NRHoc1Dni2VUkN5HDZwMeZ3eshVrJwZ+ASyXTuGig2
         KS3tDhO1uVnuIecUX7qUz3Y6yZ378ze9RiznvTEtmhOwfj+ZUPjCryirRnEk6uTwIaVl
         1k69JLFWSgkC8BdT9KUOXfoqaNn4ELDWIh6BLsGaN2fLjMDE9DdK6qmMWvAjd3uwo4It
         EIEQ==
X-Gm-Message-State: AOJu0YxmXAIpNqh549A8v24+GvMkiampA4OdCjHcySSNbj2p5YTvFYYn
	QycnMcsUZPcq4FzTu7MsxcaJItOjDRkODNNRhuVcMy73XScKC2LowPRFfd5q0iAtcyG49DLVs5K
	OKW4gNFC/8osHz5R+IbxMFwTZPpMYxo3Sgg3SrCxpOuAD
X-Gm-Gg: ASbGnctRoyxFLkfSo9oinBZhZGzXJeqbALjVx5oFpvptA7xogLjJhYNy3cUL7R0wbtE
	dtGqZOnvonlGqXcofmW7Oy49kogfERen4V7QTBv57Fu/23GRgbmXWdt/5/DhqZHAJJXnCmJT+Oz
	ovFER3XwwKx5KZr2+KAY2t2ZzRMYp/vc+smDfPsmXa2Q==
X-Google-Smtp-Source: AGHT+IFU/N4FDzxD9xqP40I2kU6LbsDQYZD6+ugmAzaMoTKeiK+NHZGheRv15VvKtC2I7PRZJR9IRp9Ac6t+D6qXYYk=
X-Received: by 2002:a17:90b:58c7:b0:311:eb85:96ea with SMTP id
 98e67ed59e1d1-31a90b368c9mr3784401a91.9.1751449313446; Wed, 02 Jul 2025
 02:41:53 -0700 (PDT)
MIME-Version: 1.0
From: tianshuo han <hantianshuo233@gmail.com>
Date: Wed, 2 Jul 2025 17:41:42 +0800
X-Gm-Features: Ac12FXwArVeJZ1rvaCeSN2rUumbVGBxexuKc9S5zxRFGdqLaU8iq2lxBMl1qbeE
Message-ID: <CAG=tWCQOnWd+7OBpc6RciWTeZbB91=sWSpANRhZOZY9PG-Lgow@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-38089: Linux kernel: NFS server remote DoS via NULL pointer dereference

Hello,

A security vulnerability in the Linux kernel SUNRPC subsystem has been
assigned CVE-2025-38089. This issue allows a remote attacker to
trigger a kernel crash (NULL pointer dereference) by sending a
specially crafted RPC request to an affected NFS server.

Details:
- CVE: CVE-2025-38089
- Subsystem: NFS/SUNRPC
- Impact: Remote Denial of Service (kernel crash)
- Affected versions: Mainline Linux kernel since commit
29cd2927fb914cc53b5ba4f67d2b74695c994ba4 up to and including versions
before the fix
- Fixed in: Upstream commit 94d10a4dba0bc482f2b01e39f06d5513d0f75742

Description:
A remote attacker can cause a NULL pointer dereference and crash the
kernel by sending a specially crafted RPC request to a vulnerable NFS
server. The vulnerability is due to improper handling of the
`rqstp->rq_accept_statp` pointer, which may remain NULL and be
dereferenced in error handling code paths. In some cases, this could
also result in a use-after-free.

Reproducer:
A public proof-of-concept (PoC) is available at:
https://github.com/keymaker-arch/NFSundown

Timeline:
- Reported to Linux kernel community: 2025-06-16
- Patch merged upstream: 2025-06-22
- CVE assigned and public: 2025-06-30

Best regards,
Tianshuo Han
