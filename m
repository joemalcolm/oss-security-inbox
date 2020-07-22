X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["751" "Wednesday" "22" "July" "2020" "12:51:56" "+0200" "Mauro Matteo Cascella" "mcascell@redhat.com" nil "21" nil "^Date:" nil nil "7" nil nil (number mark "        mcascell@red Jul 22   21/751   " thread-indent "\"[oss-security] CVE-2020-15863 QEMU: stack-based overflow in xgmac_enet_send() in hw/net/xgmac.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-15863 QEMU: stack-based overflow in xgmac_enet_send() in hw/net/xgmac.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15801 invoked by uid 550); 22 Jul 2020 11:24:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1201 invoked from network); 22 Jul 2020 10:52:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1595415132;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=PzaZk8OsER5SGr7u6AJw7GLZ0r8f0sQ3I9ENxVDUIcc=;
	b=ECy9wOTNXbCbHH944g/XL8gnGgbMy4NeIj4QgcgQrBiRvtwVFtjCLWEcq2dSTofUEo2IIt
	bvTBxaEW4bc0dO2djdrge9D4v/4VdFq1KnU1Uiaoi00OucIqgclgNiU4wUDSiK21cmoHET
	b/tr1rq2oBjFxwOvMC9gjHtU+PRQQ0Q=
X-MC-Unique: liHY1B5cOC-GRXmkkPF9Pg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PzaZk8OsER5SGr7u6AJw7GLZ0r8f0sQ3I9ENxVDUIcc=;
        b=E5GOil+PRxshH1B1G26tKgsn1/BVK4NwIfXJGgFOnqODBJDpCKgrLDB/97e7t2DWsE
         mS03/RKGpglx5J/wgpcj5qE1cO9wh2GNU6RT52j45NW86ioxau+l+yHv3VGUofQ+6ySv
         l6J14PwRW5LGzVEexnVx28ksVm5YmqCRqzYRFVwFfZFtiQoe5yN6t1qZr7HLTon3LH77
         bsW8VNM2bFMA6hJ0nXOUV/b53rgeab1Pk4yKJwb8mtdny1UQp+TxQcxPpoR6eN+Gx6QN
         WwhEqLgLd0f2IBYI7Ny2ciEVkRY7PEMMxJRXwbqmotLiUHuqCUn9siZHIWuccqko6IqH
         8Ccg==
X-Gm-Message-State: AOAM532NJ0i3lzdfdMr3oKRSiURpg/Y5YrBHrLSagz5kgM77tze8scoa
	GvKeOZX6kOhfStShLXA6ExcpsEeUdRZjBKU0StMwdVgVuBlucynw1YTJe9sK/zTOs1A7/3CIFTG
	7CK+ZJD6I9s2UjA86lUKqxhQ2eFdUjuztdHGo3/suSukj
X-Received: by 2002:a17:906:d9c4:: with SMTP id qk4mr503084ejb.100.1595415127239;
        Wed, 22 Jul 2020 03:52:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxS/aoGT+w+z2Z2k16x/ZwWEWe0ag+DQu7x3nVeQKCipMkwbCjG7q4UwX5+OdgZwtKHeyC0Zw1kVSV2tVRGf2A=
X-Received: by 2002:a17:906:d9c4:: with SMTP id qk4mr503068ejb.100.1595415127056;
 Wed, 22 Jul 2020 03:52:07 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAA8xKjXoHR_u8n2T+4Yj545m_VZ3CKqPLRwPXhCC3fCQsbXXLQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 22 Jul 2020 12:51:56 +0200
From: Mauro Matteo Cascella <mcascell@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-15863 QEMU: stack-based overflow in
 xgmac_enet_send() in hw/net/xgmac.c
To: oss-security@lists.openwall.com, ziming zhang <ezrakiez@gmail.com>

Hello,

a stack-based buffer overflow vulnerability was found in the XGMAC NIC
device of the QEMU emulator. This flaw occurs during packet
transmission and affects the highbank and midway ARM emulated
machines. A malicious guest could use this flaw to crash the QEMU
process on the host, resulting in a denial of service or potential
code execution with the privileges of the QEMU process.

Upstream patch:
----------------------
  -> https://git.qemu.org/?p=qemu.git;a=commit;h=5519724a13664b43e225ca05351c60b4468e4555

This issue was reported by Ziming Zhang (CC'd).
CVE-2020-15863 requested via MITRE form: https://cveform.mitre.org/

Regards,
-- 
Mauro Matteo Cascella, Red Hat Product Security
6F78 E20B 5935 928C F0A8  1A9D 4E55 23B8 BB34 10B0

