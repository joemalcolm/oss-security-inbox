Received: (qmail 30287 invoked by uid 550); 9 Dec 2025 14:27:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15544 invoked from network); 9 Dec 2025 09:28:44 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1765272490; bh=o0TeAayZiwOxKEfduHj4O9HXYZKicEWL7quklVVUeMQ=;
	h=From:Date:Subject:To:From;
	b=oeYktPaRDPD6qqdpJcO/npU7CoeV9UB73LqtB6jS8XioR4aGipuzVuEMkcdemUnqr
	 Yly8eBTWaTylJmcLyehBpEd8HTaECzs0m0F3qWNyFOFLKYaM/khMY/UeRXy6s+vFds
	 WLOps7ZLmF8o228KdSy2kqBWNb/FOXg++ZHHkdKCWj+JDFHtwAjY373V6RnDsVDjr5
	 uqQlLB/zbRdzADaaFy+FyYwLHEBB51kpA4JrmJ/Y/Zdw4zjoG8oPPs1XVXuhCSWrkC
	 BCSMhUFGmxmWU5Ibnb0qHOrZjdeB43rdsEA/0W9Z8rvNpAaMyHSg/yp52mP2PjtPpd
	 ydf9d+9Lo2GRg==
X-Gm-Message-State: AOJu0YyGwZLzLfdfYz5fNMtmp8S9NjMkAp58YUvkdmSMXUXlKnM9uqNC
	KncDbZQL0cApm87jANbGRSNXUcnBQoKEHQXnqEoAMHZfkN3rr4gmDnBkxF5UXfRq/rOsWI55Knx
	Ip1rtFU2tSdOmaYmmPRl9sOYVUPvUqvQ=
X-Google-Smtp-Source: AGHT+IF057UXe+qVF+V4l7kqbKjcPdZkwcDxBJFPsL8ULHFuTYBS6iVuq57on4fwzgOm1cZuh4TuHR0rgDoqvRRGnMc=
X-Received: by 2002:a05:6402:1d49:b0:640:b31a:8439 with SMTP id
 4fb4d7f45d1cf-6491a3f1de0mr9667888a12.12.1765272490115; Tue, 09 Dec 2025
 01:28:10 -0800 (PST)
MIME-Version: 1.0
From: VGalaxies <vgalaxies@apache.org>
Date: Tue, 9 Dec 2025 17:27:28 +0800
X-Gmail-Original-Message-ID: <CAGkkoszsB3A5=OZ5_nToZfHTxUuT+k3QS69cLK0cuzE_+JcDUA@mail.gmail.com>
X-Gm-Features: AQt7F2pzllYUGhoCAVy1dOJpZMPInmcWPsCei_oQ6g58t9tOE1pwrPtZhDUnTIE
Message-ID: <CAGkkoszsB3A5=OZ5_nToZfHTxUuT+k3QS69cLK0cuzE_+JcDUA@mail.gmail.com>
To: oss-security@lists.openwall.com, announce@apache.org, 
	dev@hugegraph.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2025-26866: Apache HugeGraph-Server: RAFT and deserialization vulnerability

Severity: moderate

Affected versions:

- Apache HugeGraph-Server 1.0.0 ~ 1.5.0 (before 1.7.0)

Description:

A remote code execution vulnerability exists where a malicious Raft
node can exploit insecure Hessian deserialization within the PD store.
The fix enforces IP-based authentication to restrict cluster
membership and implements a strict class whitelist to harden the
Hessian serialization process against object injection attacks.

Users are recommended to upgrade to version 1.7.0, which fixes the issue.

Credit:

- shukuang (reporter)
- yulate (reporter)
- X1r0z (reporter)
- haohao0103 (remediation developer)

References:

- https://hugegraph.apache.org/docs/guides/security/
- https://lists.apache.org/thread/6f502dvyrckwp8tz2k73zlko8qr7wt5x
- https://github.com/apache/incubator-hugegraph/pull/2735
- https://www.cve.org/CVERecord?id=CVE-2025-26866
