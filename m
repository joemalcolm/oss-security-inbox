Received: (qmail 1282 invoked by uid 550); 17 Mar 2026 11:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1524 invoked from network); 17 Mar 2026 06:05:06 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773727494; cv=none;
        d=google.com; s=arc-20240605;
        b=GguKknvLho9dBRYH58070K0QOnuEnAVIGumgUd3u4V7FZ0oiYO7nRSdP3rP9kYfNWs
         pQcKkt2N+/U3WLFoUu6Wp/XffwCdWPqLgoipRhUnnHqM5EARkBvl+GCqtO1NdeJWbXkm
         ua8Wx3q4doa7Q4aTsz03vUKonhdgsnbECA1+zV1VN3NAYDicCl71/FBBxxBCuJNm5bjj
         hLkMuhuCT7cCkX/dEnGHMqXIDCWZALkYSSJQ1/tAsAtTBvk3XxqRsmkDkzgf7t2Pwfo+
         dKMgzjCKa4LrnaMo561XmFddF6ORROrJ6pjAZYQsmfqefgEq+TpjVG80vMgEiLRmlz19
         V7AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=BB0u94amAmUCiBjCBKevn+zaajV8BdMkUIdS90y6Yfw=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=ST6qeyPtt73Mbb5NNWAN07VSKWKJm+gWjJupWvGdxTDCVp28SktvgbnWxtHhXgpvI7
         9rh56/7iQ7Oekz2mLvv7wfWhQtoguEX0j36WAjzdwXeqFB4E+19rvIQHg1qI8weAxi81
         8pyMdbsKMzJMZ2I8dx1bLXK3vZ0yfLTQhBrSumpnyi2SBtAU6PfMk3iGmo2VLmIkJayH
         XL2YUPHi7DV5QvkhgG/LVlf9eFuKshzpT4rOke2wWiCIEzEkJQHcK/ZAc5nu50ytnRrJ
         Yeceg+8vaeW06DDZ3gRoJdyKKcHXfLQfk+EvBgXvIwk/TWFRIQ1+sAakPDr3OElL/+tY
         06Fg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773727494; x=1774332294; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BB0u94amAmUCiBjCBKevn+zaajV8BdMkUIdS90y6Yfw=;
        b=Xtm62US5zQDVNoGeXqwWRJfYYw/41C4ICKxWS3uQhRggjFw1XL0ln5yUoI0dCAJZk0
         Ao4jP7qbFDjBf2P41wb/gWAweY/cjEXRW/ytP1F0yiXUjmIkG6W9N6S+H8OmdcQ5Pxm9
         cuKgCsKklziEqIG2Du8yNe6B+jZjlW7VtkIEvfCmraVDfyMSZYRecgkGXd0izY11IMgU
         nV3kpucNVlGrWtEAD3tCPaCGF/qjsZ5Sx/FT0tTQypFa12fYzaspPoEKndvcX1bZtElF
         RvzUJ80FgwTgO5RxhkfLsJDxxC9de4h8iXK69Rz9kPr/vF3AGTglnRt73tjQiT3QxPOR
         y89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773727494; x=1774332294;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BB0u94amAmUCiBjCBKevn+zaajV8BdMkUIdS90y6Yfw=;
        b=jIqUg5MSyYSK61SUl8hyIo42w3jNWVFakn9k1nR0hyPN0Ni3lMju+WBNoPYMfOMSO3
         JnM0Xk3We9Y7D5EER7Cr1I/tkolIfLzVbgmUMi7VXO742SHH4V5rLpJ7jUgdienkr+N4
         IHaRstDvMCA40YVV8+TA//wfJgVViSjKm0YY1Z04f6YVeNRLFCTTVt7i9P3ZK09+yrf/
         bT5Y7C9OTHnNlz3Jr3f4DEfP/FiourjPpI86ELeDBDvEX9iq1bpzRC6KTxb8i6UxYP6T
         Ws9WlsfGefQFbEvqBozVlyubodHtN0gEB9uSyhjuzRs7Cwv/VsfvjuETO50TJyx8G5Nr
         7jfg==
X-Gm-Message-State: AOJu0YyHpXBpVcmiAUYSdLhvnLpRlN5t0iAMEGysW2cN/PFuj+lK/+jY
	0R8KWkgov671opxE21WGx+u2EPyKDmERrqQld1d3GXUKE8o9hXYiwWo5591kvrpcPfo37zKPXRq
	lK+Y4xgGI3AFDoN59psmnHAwLyYek7h9utiYLoxk=
X-Gm-Gg: ATEYQzzUZMuQMvGP0mLv4ww4H+eDFlkmgWTyhq8YT++GliiZTT3O2RJVq2CO2cv8Moj
	JlO7mxcy/HHuxFjD0D3itW4yfQL37vnQVq+ISqnxNg3zxT7nwRW8lddsp1L8GuO3D2RUM8IHqBC
	ZAhOEINqX26NhqapBPir6R3DpnhO6adKCQwXHA5IKcNn/+YDugCejuPL0n4sSb4vov1erx6uJ44
	a6C2UhtDhw1RDQ9DFK8f2nsuscyNMATFrQ3Yy2qAL9HkxQeTpfPEJVdd3Kg4hF0TW5r36FRt7WW
	icxk7Ys=
X-Received: by 2002:a05:7022:684:b0:11a:3734:3db3 with SMTP id
 a92af1059eb24-128f3e1d21cmr7163239c88.32.1773727493462; Mon, 16 Mar 2026
 23:04:53 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Mon, 16 Mar 2026 23:04:40 -0700
X-Gm-Features: AaiRm528R5LLTsnGhu_rxmZeCyoxvASHMZn8-VPj6d_hbldD0HQLe7chPfVuTq0
Message-ID: <CAL7+V1xz3=zwKmE3TzZg64NLsFJO16q6ecqFyWdM+oWP7=etZg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000002d1e20064d321da0"
Subject: [oss-security] [kubernetes] CVE-2026-3864: CSI Driver for NFS path traversal via
 subDir may delete unintended directories on the NFS server

--0000000000002d1e20064d321da0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A vulnerability was identified in the Kubernetes CSI Driver for NFS where
insufficient validation of the subDir parameter in volume identifiers could
allow path traversal. A malicious user with the ability to create a
PersistentVolume referencing the NFS CSI driver could craft a volumeHandle
containing traversal sequences (for example ../). When the driver performs
cleanup operations during volume deletion, these sequences may cause the
driver to operate on unintended directories on the NFS server.

An attacker exploiting this flaw could cause deletion or modification of
directories outside the intended managed subdirectory within the NFS export.

This issue has been rated Medium (6.5) with
CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:H/A:H
<https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U=
/C:N/I:H/A:H>
and assigned CVE-2026-3864.


Am I vulnerable?

You may be vulnerable if:

   -

   You run the CSI Driver for NFS (nfs.csi.k8s.io)
   -

   Your cluster allows users to create PersistentVolumes referencing the
   NFS CSI driver
   -

   Your CSI driver version does not validate traversal sequences in the
   subDir field


Affected Versions

   -

   All versions of the CSI Driver for NFS prior to the v4.13.1 release
   containing the fix for traversal validation are affected.

How do I mitigate this vulnerability?

This issue can be mitigated by:

   -

   Upgrading the CSI Driver for NFS to a patched version
   -

   Restricting PersistentVolume creation privileges to trusted
   administrators
   -

   Reviewing NFS exports to ensure only intended directories are writable
   by the driver


As a best practice, untrusted users should not be granted permission to
create arbitrary PersistentVolumes referencing external storage drivers.

Fixed Versions

   -

   CSI Driver for NFS versions >=3D v4.13.1

Detection

To determine if your cluster may be affected:

   -

   Inspect PersistentVolumes using the NFS CSI driver and review the
   volumeHandle field.
   -

   Look for traversal sequences such as: `../`
   -

   Review CSI controller logs for unexpected directory operations. e.g.
   =E2=80=9CRemoving subPath: /tmp/mount-uuid/legitimate/../../../exports/s=
ubdir=E2=80=9D


If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/137797

Acknowledgements

This vulnerability was reported by @Shaul Ben Hai, Senior Staff Security
Researcher from SentinelOne.

The issue was fixed by the CSI Driver for NFS maintainers and the
Kubernetes Security Response Committee.

Andy Zhang @andyzhangx

Rita Zhang @ritazh

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

--0000000000002d1e20064d321da0--
