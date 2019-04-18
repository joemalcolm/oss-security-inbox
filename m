X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["537" "Thursday" "18" "April" "2019" "21:31:01" "+0800" "Fuqian Huang" "huangfq.daxian@gmail.com" "<CABXRUiQ5c+3288-o3jku5knc5Udy1UA-w8Tf9H7cL0LKEfVfBA@mail.gmail.com>" "17" "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/cxd2841er.c kernel address dumps to user space" nil nil nil "4" "2019041813:31:01" "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/cxd2841er.c kernel address dumps to user space" (number mark "U       huangfq.daxi Apr 18   17/537   " thread-indent "\"[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/cxd2841er.c kernel address dumps to user space\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/cxd2841er.c kernel address dumps to user space" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8167 invoked by uid 550); 18 Apr 2019 16:36:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20090 invoked from network); 18 Apr 2019 13:31:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=g180XIflAeyEPBPTFqTAfOjtJ+nVua6rTGO0nNlFGHE=;
        b=lvjFZRSJXk0C11ywVfm25uXltZzGFmKrH7KQsHc131ai/5lKgO0/+u4vTmAm7fS5uo
         yk/z/RkW8qKUCT19xAyBOyFpRbntTHfHUfM7TW/cFWAMD3PqfUwhhd3S0Zl5UzSCNwGq
         D5O4RyN8WSbiwiBNZIjUAIn+tk4jQwJPxdvOUW+D9lVBimPAo/UNqYC17ESmmdpKkQVM
         M2QPvme0+DpzLVKHIy2NNhs0NImX+SMCVXswumxnC5g1UyRpaKEgvoUziVqhT4eU26G/
         h8alG+TDDm6RchUCmZtwnR5f7nrL/BP63zQFTTw3tnnLs0z+9zzLsuTxbg/6PhKJaL9W
         RtSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=g180XIflAeyEPBPTFqTAfOjtJ+nVua6rTGO0nNlFGHE=;
        b=rUYcrS9aq7fbE6o00mfbk8w9saWncaa7QpmtaNnRXvcBH/z5mSZ3Lhfz7cDYTnLd14
         XZLqvWRf/KHqErJn6DMBxCxAnv+VI37t0UusVedLyUQOpdjXUIt0u4Kfo+O3i9yhDbD4
         tyDX/7Jy+bsFN2z50BCzcTq+byUMJeNB2zDjNbqlDNE1Dtxl6MEtPsSn4ZNCs6M6pG1C
         QJb1ms7jJv5FBbj/peCh8BH45QvF91N16pqe02np2jcI27BOLSr2+7aulEWQeTLiBDda
         q6nrxzaswj/2WQPn5cRI5YKvNIqnWN16MRjVY1ztDcwl9fXDdo4j9htlLhy1Zjb2AUR4
         QPSA==
X-Gm-Message-State: APjAAAV0hFXp7R00MgCyllT1+BuSZVoTJ0ZUB/+tWosXeDiiykQbHQJk
	VFd6uKWgQXaVJSKnirBPklx87ihYWa/NvvqVHakXGvXaBNY=
X-Google-Smtp-Source: APXvYqxI07pcDJIzvZdEv+dlBvFiKGBPYhITsz6YdGYiNaCNfCgT/vHXxThlxkBTDVF4QG/nCMkxGLztL2RBum2hbzk=
X-Received: by 2002:a5b:bcf:: with SMTP id c15mr54460119ybr.87.1555594272240;
 Thu, 18 Apr 2019 06:31:12 -0700 (PDT)
MIME-Version: 1.0
From: Fuqian Huang <huangfq.daxian@gmail.com>
Date: Thu, 18 Apr 2019 21:31:01 +0800
Message-ID: <CABXRUiQ5c+3288-o3jku5knc5Udy1UA-w8Tf9H7cL0LKEfVfBA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel < 4.14.111 drivers/media/dvb-frontends/cxd2841er.c
 kernel address dumps to user space

In drivers/media/dvb-frontends/cxd2841er.c:3856,
function cxd2841er_attach will print the address of
adapter to dmesg, the kernel address is dumpped to
user space.

static struct dvb_frontend *cxd2841er_attach(struct cxd2841er_config *cfg,
                         struct i2c_adapter *i2c,
                         u8 system)
{
    ...
    priv->i2c = i2c;
    dev_info(&priv->i2c->dev,
        "%s(): I2C adapter %p SLVX addr %x SLVT addr %x\n",
        __func__, priv->i2c,
        priv->i2c_addr_slvx, priv->i2c_addr_slvt);
    ...
}
