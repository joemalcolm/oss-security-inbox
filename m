X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["513" "Thursday" "18" "April" "2019" "21:31:52" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiTOrkprr-vyV8enQaJFrDc7ho96JDHBzjYmK+wMY5KM6w@mail.gmail.com>" "17" "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/horus3a.c kernel address dumps to user space" nil nil nil "4" "2019041813:31:52" "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/horus3a.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   17/513   " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/horus3a.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/horus3a.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9793 invoked by uid 550); 18 Apr 2019 16:36:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21591 invoked from network); 18 Apr 2019 13:32:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=kYSKTEMxb2fS8rgGZCRuOWn6WIfvoGeDLtY/LFgYNvM=;
        b=TaboQnalZ8oMZWentXt62n6g3TcIoSjpjh8acJEdgAxJ13PPXECS9aS4noAYxwOdoy
         FQVAgWiSlERS00BASORarFGAUdUpjS7NhL3NahAEI7AcXmCbePX8zbd2dbLJp7gyUmiC
         Svizwtws89U/F0nAGq5I63cMNPhyllGDB22fiLnr/wIRi6wWYO/vmAvDgqihJGnKJ6Da
         w42EPfQteH1m1de5du/TfaF+42psD+bJdQaTWL1+hcYsg/3eF00Mxq5HyxbRFM3gjYUs
         2d+gRbtVLOcsq54I53/VF4W0gMiOtLhP/2Tkx55t/W2CoLcKeqK7EeW6oSYLYk8MxFT2
         lrcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kYSKTEMxb2fS8rgGZCRuOWn6WIfvoGeDLtY/LFgYNvM=;
        b=JtWGtqsSVJL6dvntWXTMr14JWpb8guC2MSR4FLwpjamt+vFrK3OynPccQ9bIeWvWb9
         yhYXAp/GAlcG/f5BsdO+OkQKoxeIpECtXJclZlywCyX9TVzkMy1WS8voWaxn//ky5DIH
         WqwYqNGcuNN2ERXRgv3Gf+VWTzo021fNA5MfwzjzbwCzlNZBRQ+tOpgZRRj/Gusu4sGm
         JoyzyWhD1IqHY3j5n6uC2n0uJB/pUt+bF82LhDYBQX+fV/yorzReoZCiAXHrTbaTq3pz
         3X+xyueY7zrbJsvhu/EP1b6EuLxyS3M1sFqTtfMyZT17uI2rmadUVXgDCP6rv5GVGVZi
         Jt/w==
X-Gm-Message-State: APjAAAUbijV0p3vtnOuruMsP/6RZXUZyAl8X2QvW3Uj53fQ7ixEZi6rE
	goWNK1RjmkBdKzRc2Aqx+q7EkXvwqHgWLk5rhXEPv+/MMh4=
X-Google-Smtp-Source: APXvYqyQ+QmEXcRAdmJpgi72UgN2nc3G8nTlwjMbO7ho9HpMsNMrEPLGChYo3kGzVv1sWOO1ZCQNAibWZcM6AWhB7ME=
X-Received: by 2002:a25:d15:: with SMTP id 21mr71181469ybn.262.1555594322780;
 Thu, 18 Apr 2019 06:32:02 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:31:52 +0800
Message-ID: <CABXRUiTOrkprr-vyV8enQaJFrDc7ho96JDHBzjYmK+wMY5KM6w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/horus3a.c kernel
 address dumps to user space

In drivers/media/dvb-frontends/horus3a.c:1005,
function horus3a_attach will print the address of
adapter to dmesg, the kernel address is dumpped to
user space.

struct dvb_frontend *horus3a_attach(struct dvb_frontend *fe,
                    const struct horus3a_config *config,
                    struct i2c_adapter *i2c)
{
    ...
    priv->i2c = i2c;
    ...
    dev_info(&priv->i2c->dev,
        "Sony HORUS3A attached on addr=%x at I2C adapter %p\n",
        priv->i2c_address, priv->i2c);
    return fe;
}
