X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/04/18/7
Message-ID: <CABXRUiQ5c+3288-o3jku5knc5Udy1UA-w8Tf9H7cL0LKEfVfBA@mail.gmail.com>
Date: Thu, 18 Apr 2019 21:31:01 +0800
From: Fuqian Huang <huangfq.daxian@...il.com>
To: oss-security@...ts.openwall.com
Subject: Linux kernel < 4.14.111 drivers/media/dvb-frontends/cxd2841er.c kernel address dumps to user space
Content-Type: text/plain; charset=utf-8

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
