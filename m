X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["393" "Tuesday" "16" "April" "2019" "10:08:10" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiQpWVeHYZeN_=P+n8ghVA=VWDPAeddpsZj38P0sZADeNA@mail.gmail.com>" "12" "[oss-security] kernel address leak in drivers/media/dvb-frontends/ascot2e.c - linux 4.14.111 LTS" nil nil nil "4" "2019041602:08:10" "[oss-security] kernel address leak in drivers/media/dvb-frontends/ascot2e.c - linux 4.14.111 LTS" (number mark "U       huangfq.daxi Apr 16   12/393   " thread-indent "\"[oss-security] kernel address leak in drivers/media/dvb-frontends/ascot2e.c - linux 4.14.111 LTS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] kernel address leak in drivers/media/dvb-frontends/ascot2e.c - linux 4.14.111 LTS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30009 invoked by uid 550); 16 Apr 2019 08:20:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1409 invoked from network); 16 Apr 2019 02:07:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=pndGra3piDYZP2e8b3I6ydcKeUYwPN4NVAIOOeOnxyI=;
        b=IHKoxsKxQF91MJ52d3hwhBuJGvW6Tp1okc0/hMMNmmmzXzoFZWPqATlhdlKZM8xDLk
         YRHZx6EMKp/CVanH1aJYL2XnODyRo+app0ZQFkjUjJu6xZq+8aJWNwkk6oPGKbif0Wip
         ewahD8ooZ9LA8ozb5LO0KPpReAyT+IMNk76y0LBUZHS9OX3bWgMnFlcgOGNWLm8VxcK9
         1FmRDgp++RGKszIiyyv0y3x8cw4XdvyNtBDht2UHDHUYxo05Mq7QO0h0/jibzKFRhcZ7
         vI98oOVLX/b13Ty6+m5nd4Srwu3pPZhz/p13kj692l7F8ZHiyrLx8gofq0q1xBd1K7mN
         rEGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pndGra3piDYZP2e8b3I6ydcKeUYwPN4NVAIOOeOnxyI=;
        b=JgeR15N+zSsObxEnqrfQVtfUF5PDbUVSaPk4x+ZP3VRb/NNXU+Ewtwdl+Bwxnl9rbH
         OvujwUAybHl7CcGeMXx97ogLLlhYgHxJRhOUk7A43AaNGhrs4rItWhRb4WTmKexrqdfV
         2XJjZb+uWzHzcEOgYnDNdK2NrUW+yA78OrX/tMTgW8iVIZLvHsgVYzu619NW3b28XNNW
         NdDrcuOpRjPQgPOqwBOGfDsbe+/U1CP3LposrIdpHcUiPXkCNCC2H/Wk4GOdMUVS0l8H
         k6TvRmiuMixChbnWx0Rlkpl5BuKRny1WQh6b6MVJYxZ4YZDOFs2Kkb4tlhPd41rDtzRh
         qvEg==
X-Gm-Message-State: APjAAAW3ggwTrDiO4ISeUvcmODdb/Jlh225AD+8X2qDEjA6dBKbHg3oJ
	hEbNvMo3cBt4N1QBv+vv+g5fWf2vEl8A6oWEvcPKl/MF6Y4=
X-Google-Smtp-Source: APXvYqyJdc2z1e96P+gVhIPzT8FXJJRwPALhV+oFGC7wT0MxjKIiHcrLEF8lKb1ohwLaJjyHofwgkwddIQ6EP8l2hqM=
X-Received: by 2002:a25:b98c:: with SMTP id r12mr4917872ybg.239.1555380440477;
 Mon, 15 Apr 2019 19:07:20 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Tue, 16 Apr 2019 10:08:10 +0800
Message-ID: <CABXRUiQpWVeHYZeN_=P+n8ghVA=VWDPAeddpsZj38P0sZADeNA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] kernel address leak in drivers/media/dvb-frontends/ascot2e.c - linux
 4.14.111 LTS

In ascot2e_attach, dev_info will print the address of adapter to
dmesg, sensitive kernel information will be leaked to user space.
struct dvb_frontend *ascot2e_attach(struct dvb_frontend *fe,
  const struct ascot2e_config *config,
  struct i2c_adapter *i2c)
{
  ...
  dev_info(&priv->i2c->dev,
  "Sony ASCOT2E attached on addr=%x at I2C adapter %p\n",
  priv->i2c_address, priv->i2c);
  ...
}
