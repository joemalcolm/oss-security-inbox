Received: (qmail 32645 invoked by uid 550); 27 Sep 2022 16:22:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29851 invoked from network); 27 Sep 2022 15:33:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=3WMrSbwY3AP+Z9jSZ5xPlYaxrj4hWsDPqr+LKtFDia4=;
        b=sMTPWylyzzpZfwtxcRXHQR4URs/B5yis9rHComRNzUPdFQST1scWdorcBu9C1DwLAA
         D6/t+yKJhhyJGsm0zueQNI1l2OaRvRO3PxSpiIrVCnVgu2/pMzmI0jc3A8c1qRXvrv9a
         Q/cllLRBdIqTYyiU4vnox4V5FhzP0FzpHeYtQx9n/tDm/cx/ty7K4E7jM4lk/fTD96lM
         jSByHbqVms+4WsyAPAbgM291j1CL+Cmli8f/4WhhmmKMDNOLY+PqTW0UyMCXFfVuF+rG
         8vg+RW0f8v1+XuJaSWvvsxNXm4Cqc9Ipypqrs0p8mjWgWGzIif1XBHqBvsgHt3lL4N2p
         osgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=3WMrSbwY3AP+Z9jSZ5xPlYaxrj4hWsDPqr+LKtFDia4=;
        b=ez2HH4GKMr4r3reAtFIJNacLGUhnrENBMODbmtlHEUZu1yoaDvPm1/bU3WKMwwdSG7
         cCqiwJMQdZspDDB8JBjqxLzVoDjvHTcUe6gtOURlVY+ie8I6dBHkb1ZC3MKsVnVhJzPe
         1xEnV8o+QGgAh+cROB8MJrHA4cj5PoueSoXiFh4CKYl3/BrpWRAH7jmJ1/4W7+T9K1lC
         beAdpblQwi3nz/KbxtfbtyMuX/sc6zsyFk89/C9HXVNSJWy+19l5s1DNEpze0yzkgtQy
         oUgunYR3NdpjhVpT/+V9UCaQePZMCxHmjzZSyE42KzIPHsSQYfS6kBmscd1ARbKyLMUp
         Wb6w==
X-Gm-Message-State: ACrzQf3APES/vSiXz/EvyoMjYrSWKT8F0zpagRzcyH+a1p4u9XAU4KL8
	5RNKfDFE3+RZXGw9NIHPKvtGeiBFOux5Ql03kE+S+WYaqUyrCA==
X-Google-Smtp-Source: AMsMyM4iGw7h95qf1xeZPJ7i2dhCtujeqtlVqGcomx8B+gaBCNhGTgn4SABpNA+ubk3UvwJ9v0O/Wn+Bj8OKxv0BimY=
X-Received: by 2002:a67:b20b:0:b0:3a5:2dde:9f77 with SMTP id
 b11-20020a67b20b000000b003a52dde9f77mr6074542vsf.67.1664292807638; Tue, 27
 Sep 2022 08:33:27 -0700 (PDT)
MIME-Version: 1.0
From: Ana Oprea <anaoprea@google.com>
Date: Tue, 27 Sep 2022 17:33:16 +0200
Message-ID: <CABbtqzEUXKVaWAK49231jQCPYF9_A2kGfDUz-LY_d7LtBJnsbA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000009ae79b05e9aa5d03"
Subject: [oss-security] CVE-2022-1941: Protobuf C++, Python DoS

--0000000000009ae79b05e9aa5d03
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Summary
A message parsing and memory management vulnerability in ProtocolBuffer=E2=
=80=99s
C++ and Python implementations can trigger an out of memory (OOM) failure
when processing a specially crafted message, which could lead to a denial
of service (DoS) on services using the libraries.

Reporter
ClusterFuzz [1]

Affected versions
All versions of C++ Protobufs (including Python) prior to the versions
listed below.

Severity & Impact
CVE-2022-1941 Medium 5.7 - CVSS:3.1/AV:A/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H [2]
A small (~500 KB) malicious payload can be constructed which causes the
running service to allocate more than 3GB of RAM.

Proof of Concept
For reproduction details, please refer to the unit test that identifies the
specific inputs that exercise this parsing weakness. [3]

Mitigation / Patching
Please update to the latest available versions of the following packages:
- protobuf-cpp (3.18.3, 3.19.5, 3.20.2, 3.21.6)
- protobuf-python (3.18.3, 3.19.5, 3.20.2, 4.21.6)

[1] https://google.github.io/clusterfuzz/
[2] https://nvd.nist.gov/vuln/detail/CVE-2022-1941
[3]
https://github.com/protocolbuffers/protobuf/security/advisories/GHSA-8gq9-2=
x98-w8hf

Kind regards,
Ana

--0000000000009ae79b05e9aa5d03--
