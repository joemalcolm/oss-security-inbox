X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["996" "Thursday" "18" "April" "2019" "21:31:36" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiSC+XHg4dSS_ribzENwceRHNS6jaTnq_Xs6F9byhhCukQ@mail.gmail.com>" "34" "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/helene.c kernel address dumps to user space" nil nil nil "4" "2019041813:31:36" "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/helene.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   34/996   " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/helene.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/helene.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9543 invoked by uid 550); 18 Apr 2019 16:36:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20410 invoked from network); 18 Apr 2019 13:31:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sWuN6p+KY5t9ptz4pkSbmhDHIfOEFL5N5ZOcCA+8xUA=;
        b=kNgXHK/w9uiFnMxcdWm6+Yh/nTRDtu2BPVTbRf06HpSXKkndMU+ppILrWEWH+bkn90
         bU+o5rmHSRmoonaWYxm3ixuL0Czz3Ny1FPRYBydDmKu4pyVEa+P1B0V6ZgXOO0YrSICD
         8G38rSyJ4rATtJHB8NPedu54HPhOuvu/VVYkfRV5LG9Vtmeai/qn7+wZS7mXJfbQdtVm
         YvnqET6PpaYTEIoSDvmiszeFbRndVsN0aTY0PD7SfAGZzexMmJrmoRXAohKr7c+wSo9d
         XmCttwjSaBUpiLaUL6vfxMb5C/22P3+u19a5e2Wnb2q4Nc3NftQ+H8+ezw92eailKXLo
         gvTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sWuN6p+KY5t9ptz4pkSbmhDHIfOEFL5N5ZOcCA+8xUA=;
        b=oa+5EcR71IfaNRf04OARhsKeMzQJVFf+d7Iy3JJ87yGz3YqIXfA2ahQIM+4psPPAay
         d0DXubkc3fC3GQFQwNH+cWwOcJ09ymFIr7kb6kvflzER0hsQ0No+rjbbvowjIW27orZU
         h3bWnTwK6BIm0S2T/iUM/YhqpiR98zBf+IiKcZdYLeZyAFW5/xv3Hcawf2+98/bBsQs5
         4f/QahsnJgXvGFxCWqp1Tuy7qVzbuo9vkqebhKwJfUkZ8+ZtuTrEmLZ3CkE6IIlcy2Hy
         5Nw42bHhaVnWe1e4zA/w5UkDHx6fwpDtKDZo1UoCP17Usryu4keC1rTLUn9lrfcAj66G
         oXaQ==
X-Gm-Message-State: APjAAAVACOmyOg2x6DUf6Ga6O23gGq2v301fMCsbOYXxZt0s//wYdk3z
	cwu+/UXoffNzMXD8uTBolyBIc1ZAK490D0BNfVNu+q/JvOM=
X-Google-Smtp-Source: APXvYqz/vag1ye4NQYyDjfeohI46DcR63/FLeTeH73n0iCNvKNmPaC/HH4kNoSlCaaGDzI4zBkevpxpAeGZvo1nhqV0=
X-Received: by 2002:a81:25c8:: with SMTP id l191mr56932951ywl.467.1555594307715;
 Thu, 18 Apr 2019 06:31:47 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:31:36 +0800
Message-ID: <CABXRUiSC+XHg4dSS_ribzENwceRHNS6jaTnq_Xs6F9byhhCukQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/helene.c kernel
 address dumps to user space

In drivers/media/dvb-frontends/helene.c:1005,
function helene_attach_s will print the address of
adapter to dmesg, the kernel address is dumpped to
user space.
struct dvb_frontend *helene_attach_s(struct dvb_frontend *fe,
        const struct helene_config *config,
        struct i2c_adapter *i2c)
{
    ...
    priv->i2c = i2c;
    ...
    dev_info(&priv->i2c->dev,
            "Sony HELENE Sat attached on addr=%x at I2C adapter %p\n",
            priv->i2c_address, priv->i2c);
    return fe;
}

In drivers/media/dvb-frontends/helene.c:1041,
function helene_attach will print the address of
adapter to dmesg, the kernel address is dumpped to
user space.

struct dvb_frontend *helene_attach(struct dvb_frontend *fe,
        const struct helene_config *config,
        struct i2c_adapter *i2c)
{
    ...
    priv->i2c = i2c;
    ...
    dev_info(&priv->i2c->dev,
            "Sony HELENE Ter attached on addr=%x at I2C adapter %p\n",
            priv->i2c_address, priv->i2c);
    return fe;
}
