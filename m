X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["309" "Thursday" "18" "April" "2019" "21:32:10" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiSOsXJCh_hbgzD+=EVys-N=HK_h0kZ2GU=p+G2Y1daTSQ@mail.gmail.com>" "10" "[oss-security] Linux kernel < 4.14.111 drivers/media/pci/saa7164/saa7164-core.c kernel address dumps to user space" nil nil nil "4" "2019041813:32:10" "[oss-security] Linux kernel < 4.14.111 drivers/media/pci/saa7164/saa7164-core.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   10/309   " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/media/pci/saa7164/saa7164-core.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/media/pci/saa7164/saa7164-core.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10137 invoked by uid 550); 18 Apr 2019 16:36:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21740 invoked from network); 18 Apr 2019 13:32:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=YgQafOQ93IbRU8e2Iwv93PUSSni04J5eC6zUrfQUM9I=;
        b=LgRU6rCcTH5ezKbkZGx0AVZqbthcC42fvZDQmk5Mi+34j1AjpwCpIV+Q2XZ8K3wOok
         nojTuJgbLYO2XLj21a92rbkTwHvi5FI43orGxm9SHOOnFWHwpiRBTnAJRK8BiAhNutuT
         X9GfeCz4wTL/kEK/P5er59X3sTzWddX4yO8s/zANb9SGaNxzFXXQVO+R/zqsaWGlAaIt
         zz+YpQx59goNMr5Tz6H1lCJmbn/h+zaaozrQPcTcKaFJgIjvh5qyR8NHK49wasu9nkiR
         NXngVhLotCuSQiQteGLjmEVE9Ro8FbHRauasGhmt+USWt2yr5+dDG5WWYgSVyR8Hq/Q6
         Dw8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YgQafOQ93IbRU8e2Iwv93PUSSni04J5eC6zUrfQUM9I=;
        b=AC/IsNh2fHlt5DxrEC2P6nnKqD5N0+JeaT1tZixy/0Ch+Af4I9GEgRJWF/6rhJWnQZ
         WwEcxtXWeGGSPCvtHAFGOQQvGieGrVwMz39nP32kpGooArmc+djxN5TGBnCHiUjuuLMn
         YyBvAr+kOdDaXZi0Ki5tIjQuc8+kH4EFQwc0+Y8N4TNrwGlYwgcMXbU5yAaCN+IuvdGR
         Acu8S8dgs4DKmejLvvMSE2LaOs7EWv0dlZcmsFnXHz2XYpcD6+V05DeynnUIg13a+EG9
         8DruGSIA1xRgJKMlE4BEXBnRblXsjXanEorwQ5LhS5BxfUXLoN7fZqu/tVXU0PdbbLol
         ojUg==
X-Gm-Message-State: APjAAAX1bU5eQzd/47cGvrBe09gHhciBxO4vvZwWHWiqqD/x+LoYaJcw
	4fbzyUEpp7rYYTru2QBUCLWMVaKNdQ4ouMYOOGVnoKd1cVg=
X-Google-Smtp-Source: APXvYqz4CQTjZC7lia8/SnSB/a/53Wfn5pzsyrnl2Ye4smAE8drImw6bGoyjwC9Witqveh8Q7qsGrDl3bM9Q+2qVzMQ=
X-Received: by 2002:a0d:e3c7:: with SMTP id m190mr74537197ywe.324.1555594340880;
 Thu, 18 Apr 2019 06:32:20 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:32:10 +0800
Message-ID: <CABXRUiSOsXJCh_hbgzD+=EVys-N=HK_h0kZ2GU=p+G2Y1daTSQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/media/pci/saa7164/saa7164-core.c
 kernel address dumps to user space

In drivers/media/pci/saa7164/saa7164-core.c:1059,
saa7164_proc_show will dump the address of dev into procfs,
local user could read kernel address information via /proc/saa7164.

static int saa7164_proc_show(struct seq_file *m, void *v)
{
    ...
        seq_printf(m, "%s = %p\n", dev->name, dev);
    ...
}
