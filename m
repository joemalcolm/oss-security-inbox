X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1096" "Thursday" "10" "August" "2017" "15:25:20" "-0700" "Willem de Bruijn" "willemdebruijn.kernel@gmail.com" "<CAF=yD-K+abq_ZK18map1SCAd2x0BnFNAKB5t0+RrdxYROxSd1g@mail.gmail.com>" "33" "[oss-security] Linux kernel: CVE-2017-1000111: heap out-of-bounds in AF_PACKET sockets" nil nil nil "8" "2017081022:25:20" "[oss-security] Linux kernel: CVE-2017-1000111: heap out-of-bounds in AF_PACKET sockets" (number mark "U       willemdebrui Aug 10   33/1096  " thread-indent "\"[oss-security] Linux kernel: CVE-2017-1000111: heap out-of-bounds in AF_PACKET sockets\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28502 invoked by uid 550); 10 Aug 2017 22:26:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28148 invoked from network); 10 Aug 2017 22:26:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Zvj7HCXe+OSRTPxAAQzSlDcO4S7UKFDnck54Sdj6IeU=;
        b=jLzdM9LMaqY4lkYv4sPimvK2A/9bTU81iycsvZIykMoWIfsBnXJwYrbIBzAkkC0VvD
         sHJPFr4MJqMqmIUrNY7U2iz9MTTacp4zafM0e/mkMIHbWGfEBpvnueqtaqUWsKwj1Vql
         Qzp4jwkprPNKLSkEMKrhyfHRJQUbcyRS4iteyDnAywOpthMvfi1YqQ2t3r+eIFMPQAtb
         pAAZsueq1qIdZXRZ1/uQqRsx1SfbVhhKi4xXjCxp61ysUFuNdg75Y7nrCK9PXXGyd55k
         7lHBMWhQxNgTxnv85RwpP5c++BZxoL2peP18T0zg9j2N2xogF0zvq/ttVo5VfHLQxubC
         3mog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Zvj7HCXe+OSRTPxAAQzSlDcO4S7UKFDnck54Sdj6IeU=;
        b=GCVuR8xlmSDrq5ZcwT7SKGOFKVAaRPUdPYHzrHGuKyVeks2fuybUWo3RVUYPHFQ3Qx
         kif3mo/4bS3kovM0R5fb1GKi/sQUEw4vukgVCp9gwUW09Sp7o4ufGNkci57JAUGnJd8m
         D9dAj/4y4A98Lz87CaC15LpimiRznNt14w08AseWgQ/bBLaRdcc5qkiXm9ackzMeJQ7o
         kQjonIvIqHC7i5LJakNUkOo26rskTnpBr/EgqzhbxYN9c/rRvnLjeZNIzSmDl57n81Ke
         febxrYoLWOQReY7SKs6zKmon9ZyT2wYo2NhEfHvZylkNyjBQqvuOb3SdpgXDfvSyFbdP
         G5YQ==
X-Gm-Message-State: AHYfb5gUfEiSZtnHD5NUJ62Ti5NSdDF7l/QZekUdc6potVOPe7gTlYF/
	wcnCVpQBkUqEwQIdVEhi5hfYf0rfrxsvOSk=
X-Received: by 10.202.3.70 with SMTP id 67mr14269253oid.114.1502403961459;
 Thu, 10 Aug 2017 15:26:01 -0700 (PDT)
MIME-Version: 1.0
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Thu, 10 Aug 2017 15:25:20 -0700
Message-ID: <CAF=yD-K+abq_ZK18map1SCAd2x0BnFNAKB5t0+RrdxYROxSd1g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Andrey Konovalov <andreyknvl@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: CVE-2017-1000111: heap out-of-bounds in AF_PACKET sockets

Hi,

Syzkaller found a race condition in PF_PACKET sockets with setting
socket option PACKET_RESERVE. The bug is analogous to a previous one
with PACKET_VERSION reported as CVE-2016-8655. The same analysis
applies.

The bug requires CAP_NET_RAW to open a packet socket. This is a
privileged operation, unless unprivileged user namespaces are enabled.

The fix has been submitted to netdev as

  packet: fix tp_reserve race in packet_set_ring

  Updates to tp_reserve can race with reads of the field in
  packet_set_ring. Avoid this by holding the socket lock during
  updates in setsockopt PACKET_RESERVE.

  This bug was discovered by syzkaller.

  Fixes: 8913336a7e8d ("packet: add PACKET_RESERVE sockopt")
  Reported-by: Andrey Konovalov <andreyknvl@google.com>
  Signed-off-by: Willem de Bruijn <willemb@google.com>

  c27927e372f0785f3303e8fad94b85945e2c97b7
  http://patchwork.ozlabs.org/patch/800274/

Timeline:

2017.08.03 - Bug reported to security@kernel.org
2017.08.04 - Bug reported to linux-distros@
2017.08.10 - Patch submitted to netdev
2017.08.10 - Announcement on oss-security@
