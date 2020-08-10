X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["686" "Monday" "10" "August" "2020" "10:25:43" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" "<CAA8xKjW4-RaRBBR6FC+CzNrAaafKMPGAC9Hkufg=6ODoAkCcCQ@mail.gmail.com>" "21" "[oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" "^Cc:" nil nil "8" "2020081008:25:43" "[oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" (number mark "U       mcascell@red Aug 10   21/686   " thread-indent "\"[oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-16092 QEMU: reachable assertion failure in net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4069 invoked by uid 550); 10 Aug 2020 09:08:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14156 invoked from network); 10 Aug 2020 08:26:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597047964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=UqnJ3u9NuXrs75TsHdVvta+o2ZYt/JAq+MIydGEhSu8=;
	b=QaAs6wu6ngKw828ESgBvsGnzGtIjyxcVKfGOOHgeQ8wGjPRG+A1+bleE4V3gz1KuUkQ+pV
	g34qewjeCEHqjlq78VC1h65H5gFH9DZWwvc7vil9fTaKC8SZZUSBPlSDRxPu2DhK7JBbi7
	chHEo/wwS2SOifsgEBg1Nk4EMTGaoSY=
X-MC-Unique: lzv9MxSHMkCcC5eI1xGAIg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=UqnJ3u9NuXrs75TsHdVvta+o2ZYt/JAq+MIydGEhSu8=;
        b=GAKLO+23i/9Gwn+G4i4UP0KYryEfDbHKrDmI4BDHh297O3cbksJdJkYbPZTBhqZI+g
         nKk6Gi8siLvY3HdbknCH4Ue4TW08SLCzME5wQItVLqxHW5lQtG5iZJuYAitjPyG228d0
         w4vsjcu4cfuB61NRHZljnfL2q+kqeawQwvWMumDO/Pu8PXdGX/S50BiVXq0dTBpSY+8u
         e8RAHKYWiBu0fb8kuj1Vb5zc19FP026pcIm58yDgKVf4IXfQsWRg/nnOSCgDSl7+WPt5
         vCSdaXSGB9XKU/3AgXVJkL5noj72fleQPPdx0cJtoy3eEVyW7ViaobpmDbkF70fS3pTs
         CPlg==
X-Gm-Message-State: AOAM531GyaGAoaDf3xAxjmM1iObHP2bPjuQnjV+h1WWVZJIjlMOg0zis
	QF2uMILPjoO40+odtkKaeLjshQrWNU/yq8kGeP5jILYurNYg5l8YSnvfzz0JosawTJVuavlFzV+
	iXCcF5Zizx+OxUnBfxo47kT+IRKSqmLGagw3/i1Fu1Db5
X-Received: by 2002:a50:c449:: with SMTP id w9mr20689600edf.65.1597047954348;
        Mon, 10 Aug 2020 01:25:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeG+1Lte5PV9cdBvSYpQgjHVV+55PfhXN7WuGZcc4/Crqz5DX1oouWO8H0kGU/nJxnL9cQ8Fdb2VdYgvn+v78=
X-Received: by 2002:a50:c449:: with SMTP id w9mr20689591edf.65.1597047954103;
 Mon, 10 Aug 2020 01:25:54 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAA8xKjW4-RaRBBR6FC+CzNrAaafKMPGAC9Hkufg=6ODoAkCcCQ@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mcascell@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Cc: Alexander Bulekov <alxndr@bu.edu>, ziming zhang <ezrakiez@gmail.com>
Date: Mon, 10 Aug 2020 10:25:43 +0200
From: Mauro Matteo Cascella <mcascell@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-16092 QEMU: reachable assertion failure in
 net_tx_pkt_add_raw_fragment() in hw/net/net_tx_pkt.c
To: oss-security@lists.openwall.com

Hello,

An assertion failure issue was found in QEMU in the network packet
processing component. This issue affects the "e1000e" and "vmxnet3"
network devices. This flaw allows a malicious guest user or process to
abort the QEMU process on the host, resulting in a denial of service
condition.

Upstream patch:
  -> https://git.qemu.org/?p=qemu.git;a=commit;h=035e69b063835a5fd23cacabd63690a3d84532a8

This flaw was independently reported by Alexander Bulekov and Ziming
Zhang (both CC'd).
CVE-2020-16092 requested and assigned via MITRE form: https://cveform.mitre.org/

Regards,

-- 
Mauro Matteo Cascella, Red Hat Product Security
6F78 E20B 5935 928C F0A8  1A9D 4E55 23B8 BB34 10B0

