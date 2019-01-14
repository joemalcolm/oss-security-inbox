X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["828" "Monday" "14" "January" "2019" "14:43:58" "+1100" "Paul Harvey" "pharvey@redhat.com" "<CAEnKrMFsdZJvpeipoVYFKGfRtPpUSA6ccEVNTtbVYf35euN8MQ@mail.gmail.com>" "20" "[oss-security] CVE-2018-16886 etcd: Improper Authentication in auth/store.go:AuthInfoFromTLS() via gRPC-gateway" nil nil nil "1" "2019011403:43:58" "[oss-security] CVE-2018-16886 etcd: Improper Authentication in auth/store.go:AuthInfoFromTLS() via gRPC-gateway" (number mark "U       pharvey@redh Jan 14   20/828   " thread-indent "\"[oss-security] CVE-2018-16886 etcd: Improper Authentication in auth/store.go:AuthInfoFromTLS() via gRPC-gateway\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21948 invoked by uid 550); 14 Jan 2019 09:47:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7912 invoked from network); 14 Jan 2019 03:44:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=GnCfKSGdZkkActwGYHy9LHalfJ+svcnLp4YDB+CFVNI=;
        b=IhnTTlQhuJblSXJ7ygjvphDgCrvLC2IoaNl4wKA2nk4wcICaoRHn9jx+kJyfbWHkag
         y7sEAetAcKDW90sUvA/Gxub99SjYyaib2JsLjtUunqTmmEUkNPEchC73lZFy7MFckVPb
         eq5bmMvv+ZxCnvOYFB2YU3LVDvlQeAn5x1QiCzawzMkIG6JEzBQQ0pN7XEfXFXwb1LdZ
         qkXP6Z3KqlmsGULGhGiL9poy/niedRxtDPFpXdkwmaCcxO+xW2S85lL1uusiTbIcJtuB
         8mS19ERF32QCbY5oCUppJnba4y2sRkGR9lRcoD7ifJ/7YnsalBHdigG6c9D+fQBPRj+9
         r4Tg==
X-Gm-Message-State: AJcUukco3ok+MIsym5S/5Aamj5FJ4SXlq1RI01jrKn7w/R3ojfPHMEDa
	H2W4yexuatdv8s6w2KySyTShh7VBl9LUIL5uy/ysmiNY1+c=
X-Google-Smtp-Source: ALg8bN61+8T6k9+eDzfsawl5myy/2/SO4hSeMHtZt3qEaAyo1ycXBCi24AuwJEb8NNxF32821d9TjMuJIRkIpR+1sLQ=
X-Received: by 2002:a17:902:43e4:: with SMTP id j91mr13055905pld.147.1547437449308;
 Sun, 13 Jan 2019 19:44:09 -0800 (PST)
MIME-Version: 1.0
From: Paul Harvey <pharvey@redhat.com>
Date: Mon, 14 Jan 2019 14:43:58 +1100
Message-ID: <CAEnKrMFsdZJvpeipoVYFKGfRtPpUSA6ccEVNTtbVYf35euN8MQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-16886 etcd: Improper Authentication in auth/store.go:AuthInfoFromTLS()
 via gRPC-gateway

Hello,

etcd versions 3.2.0 through 3.3.10 are vulnerable to an improper
authentication issue when role-based access control (RBAC) is used and
client-cert-auth is enabled. If an etcd client server TLS certificate
contains a Common Name (CN) which matches a valid RBAC username, a
remote attacker may authenticate as that user with any valid (trusted)
client certificate in a REST API request to the gRPC-gateway.

Upstream issue:
https://github.com/etcd-io/etcd/pull/10366

Upstream changelog:
https://github.com/etcd-io/etcd/blob/1eee465a43720d713bb69f7b7f5e120135fdb1ac/CHANGELOG-3.3.md#security-authentication
https://github.com/etcd-io/etcd/blob/1eee465a43720d713bb69f7b7f5e120135fdb1ac/CHANGELOG-3.2.md#security-authentication

This issue was reported by Matt Wheeler (Osirium)

-- 
Paul Harvey / Red Hat Product Security
