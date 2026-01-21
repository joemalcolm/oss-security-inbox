Received: (qmail 28328 invoked by uid 550); 21 Jan 2026 19:49:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9334 invoked from network); 21 Jan 2026 19:22:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1769023339;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=R++YZ8MKEncFW4dY4tPpZHwSaydp1FKqOND202svMHM=;
	b=eq1sxYx5ChuLZAPHpZKcnsPQ/sbSQbJHaX7uUdXsNd8ZI/CakM+ylZaDaF5R5gbSMrQmk2
	zJ+S4MvL23E7QQr/VHdukfHsrd21tT8JRBkPirgeOmTOSbvWPC3savdYhHG3jCe+Tb2lfq
	A/aKItEGU/mUcQAiJ9ykDXsu5K7/S6Y=
X-MC-Unique: TtWoTcifNXWg5tGJJ43DQw-1
X-Mimecast-MFC-AGG-ID: TtWoTcifNXWg5tGJJ43DQw_1769023337
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769023336; x=1769628136;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R++YZ8MKEncFW4dY4tPpZHwSaydp1FKqOND202svMHM=;
        b=mAeoUB+GGGJavoIsbo5EP9+dvKLUVAsHmwbtV00ND+Ih6NHagiG2CfC0LTu8eVJSMx
         TgWAtkO8TxDoJ91QYOEa6gGizKiWLh59CiwFFf4mNdDM4zCmEEbF3JofbBa1HK33nhtZ
         1a0hkvWjOIR66Po8/VmGY3Sbq0ItPNTgEWtrk3VVq8u9MkDaazWhav4i585WwebE25zr
         wKbt+BTgh+rZXSAkO2vpQFfmfulGsmqoShCibnFV7FltyTVWsRiIxdWJMBjymagRWhMI
         OI0UW22HiGWjjXC3ZfQO+l4IctadpZjO/ioS27FwSRgPvG7QSRXVSmSocQ4JwTDqke6I
         yxBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaPZ48l2iAWjcDEBuu5jLyk7nb6lzhnJXyMUPGQCMciQd/Qppxbw5K4M3ePXVH1YWmqY0V6ZkdMlIbC4s=@lists.openwall.com
X-Gm-Message-State: AOJu0YzrlVaBYYQyJxjtC2GKIGLa56yrFDWEL3kUOmhU9nZiaY3eC8q4
	uiD3Cc7b977FYu0yFaRo5gwGcP7Fn8sYDJTKW13MS6C1XVopd23XZtgojFMic/miRhuy346mKJf
	X11e5QBlttTPMsSsbu1sGCh1NNHi6zTUJ6MWIvzzHDdisAqhq4VJOxhPDi6UA67Xn9lwBlZY/Nw
	Sb84ayMAuLfSGbgf9yeaeBx+nEcqEnkS5MZSaVChqVvR5D9zIGhP1LTbw=
X-Gm-Gg: AZuq6aKiU7FMFqF1oB2sKWwfxb9opGe6+pcEFKYGPYTkQyRgxdlNr7JhG16Hke7beO+
	BPeoI5jXJt+I35c6/CVjBwQwSUSmzSRVy1fexAZ4gLLPpPyf/raXVjCUliW+AKGWyFM7QOhOYYb
	kXzvitCUrgbYUa5Y88uTZ5kWTdwKLXTshZQ9cnMgwQYLRKORCEsVNkP0hGEBvPZ/9a6jL5ZIeTX
	mmX+UVhYx9G4sEKKZlBHbUK2w==
X-Received: by 2002:a17:906:c14c:b0:b87:6:371d with SMTP id a640c23a62f3a-b8800364d31mr491124666b.49.1769023336042;
        Wed, 21 Jan 2026 11:22:16 -0800 (PST)
X-Received: by 2002:a17:906:c14c:b0:b87:6:371d with SMTP id
 a640c23a62f3a-b8800364d31mr491122866b.49.1769023335556; Wed, 21 Jan 2026
 11:22:15 -0800 (PST)
MIME-Version: 1.0
From: "Sage [They / Them] McTaggart" <amctagga@redhat.com>
Date: Wed, 21 Jan 2026 14:22:03 -0500
X-Gm-Features: AZwV_Qh2mshG5xlkpWmQioLYu9TrAB20oaKMpLDyMWn4QvbqCkim2SkmCvvIp9k
Message-ID: <CABBoStjA+zmXBWfGkP_Uf_suts0SB=AfEZdcbDj95Xdv3E7dpA@mail.gmail.com>
To: Martin Schobert <martin.schobert@pentagrid.ch>, oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: osQWmBxrGQ02rAveZgOl5OhyjD0Y5ERlvgtecoqX58E_1769023337
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000084075d0648ead70f"
Subject: [oss-security] CVE-2024-31884 Ceph: Incorrect usage of certificate checking via Pybind

--00000000000084075d0648ead70f
Content-Type: text/plain; charset="UTF-8"

Hello all,
We have a vulnerability to report for Ceph.
Summary
=======
A flaw was found in Ceph. An attacker can allow Ceph to accept any
certificate because no certificate context is passed via Pybind to the
constructors imaplib.IMAP4_SSL or smtplib.SMTP_SSL. As a result, pybind pybind
does not check the server's X.509

certificate, instead accepting any certificate. This enables an attacker to
commit a Man In the Middle (MITM) attack, compromising mail server
credentials or mail contents
Our Advisory:
https://github.com/ceph/ceph/security/advisories/GHSA-xj9f-7g59-m4jx

CVSS and CWE
============
We have assigned it a CVE of CVE-2024-31884 with a CVSS score of 6.5
aka CVSS:3.0/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:L/A:N
and a CWE of CWE-295 AKA Improper Certificate Validation

Credits
======

Credits to: Martin Schobert

Fixed in
======

IBM Storage Ceph 9.0 (To GA on Friday, 1/23/26)

Fixed via following PRs in upstream with targeted releases.
#66089 <https://github.com/ceph/ceph/pull/66089>
20.2.1 #66140 <https://github.com/ceph/ceph/pull/66140>
19.2.4 #66141 <https://github.com/ceph/ceph/pull/66141>
18.2.9 #66142 <https://github.com/ceph/ceph/pull/66142>


Sage McTaggart
IBM Product Security

amct@redhat.com

sagemct@ibm.com

--00000000000084075d0648ead70f--

