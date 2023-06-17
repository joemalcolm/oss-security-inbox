Received: (qmail 14051 invoked by uid 550); 17 Jun 2023 05:18:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14025 invoked from network); 17 Jun 2023 05:18:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686979074; x=1689571074;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2DylxU3DTJF4zQPX20Sud7AB7O8gy5iH8Kp7vLJhiQY=;
        b=ZM7XVlomuyjmuHG9JkSMSOnupGvQFgOFjAOAG2hpMHdqbosW1GyDU7I/e/VnzFgYkw
         YvRw/tQxDL7UiCI2Uk4Dyr4+p9cFf2mLhw0+ImrmnUVBBXJPXh6RCFyFhvU97bEDfAKe
         sG45H0mT2qF+6bUswtDnDxAQQbUbJB5I1VYYaWXVEosoMWaAJi5SmGBK8Bkz7xsg/SOL
         HHdOStBaimL75JouuCYKsLnrrTReUuK3L8b65EwQ6S3FIj4C44meMPOcoJhYsybHB1l6
         Pfy0fCVDbqno8QwZDuP1REEZ655G4Mx4SeZhY+QKhqHX21GrCr7hhKfx+2e0QGFCjbES
         gvsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686979074; x=1689571074;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2DylxU3DTJF4zQPX20Sud7AB7O8gy5iH8Kp7vLJhiQY=;
        b=b/NjUVraRmpfrptZK6i5k9Wiv6nR7d5119Hpl8Sz76LHW+UPKqhz3NGXdTFtMulOob
         3iWzl+IuJYerdVszjuhdpfuLcTLkgLONFhvOw26ZLDeM0murwjIaH5oYntu4yIxiR9Vo
         MILU/40n+NSiXe8Dnl4HhZEOdOa9PCpnikC8XUkYbzWNYL+3iZCYlT5842Uptc3UyUsl
         stYH2PEf59nhSiCjPVvVBpiS/D8quXteQXirIUFVcG0K3iOm4j20tZXFqGR15/m69x7y
         8Ej80Cw6VF+xigazym/CJxvdXkcpTxzr5sIoidL7dO2fER+Nw40NS56NfUKeaehuVB+z
         qvbQ==
X-Gm-Message-State: AC+VfDxq5/SOv84TDb3ZaZ+B42eKR0LPHd5oqnHDNJAVkEVkOrvKibTa
	dJR6OAM75RNXvLchWfmQ6dsQLnwfHrAg7A==
X-Google-Smtp-Source: ACHHUZ6mxO2yeROsbt4A6qGkDSNujCqPBb9npcVJOCbVmOfx62+2RH2h3w2HyQLUNUfubP75MFew6Q==
X-Received: by 2002:a17:907:ea4:b0:96a:440b:d5c8 with SMTP id ho36-20020a1709070ea400b0096a440bd5c8mr4008797ejc.59.1686979074260;
        Fri, 16 Jun 2023 22:17:54 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 17 Jun 2023 07:17:52 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZI1CALKOZczi4lKI@eldamar.lan>
References: <ee226490-51c6-f8e9-821a-6061202c01b1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ee226490-51c6-f8e9-821a-6061202c01b1@gmail.com>
Subject: Re: [oss-security] Linux kernel: off-by-one in fl_set_geneve_opt

Hi,

On Wed, Jun 07, 2023 at 11:32:31AM +0800, Hangyu Hua wrote:
> Hi guys,
> 
> I find a off-by-one bug in linux kernel's Flower
> classifier(NET_CLS_FLOWER). It can cause denial-of-service and privilege
> escalation.
> 
> # Details:
> 
> static int fl_set_geneve_opt(const struct nlattr *nla, struct fl_flow_key
> *key,
>      int depth, int option_len,
>      struct netlink_ext_ack *extack)
> {
> struct nlattr *tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX + 1];
> struct nlattr *class = NULL, *type = NULL, *data = NULL;
> struct geneve_opt *opt;
> int err, data_len = 0;
> 
> if (option_len > sizeof(struct geneve_opt))
> data_len = option_len - sizeof(struct geneve_opt);
> 
> opt = (struct geneve_opt *)&key->enc_opts.data[key->enc_opts.len]; <--- [1]
> memset(opt, 0xff, option_len);
> opt->length = data_len / 4;
> opt->r1 = 0;
> opt->r2 = 0;
> opt->r3 = 0;
> 
> ...
> if (tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA]) {
> int new_len = key->enc_opts.len;
> 
> data = tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA];
> data_len = nla_len(data);
> if (data_len < 4) {
> NL_SET_ERR_MSG(extack, "Tunnel key geneve option data is less than 4
> bytes long");
> return -ERANGE;
> }
> if (data_len % 4) {
> NL_SET_ERR_MSG(extack, "Tunnel key geneve option data is not a
> multiple of 4 bytes long");
> return -ERANGE;
> }
> 
> new_len += sizeof(struct geneve_opt) + data_len;
> BUILD_BUG_ON(FLOW_DIS_TUN_OPTS_MAX != IP_TUNNEL_OPTS_MAX);
> if (new_len > FLOW_DIS_TUN_OPTS_MAX) { <--- [2]
> NL_SET_ERR_MSG(extack, "Tunnel options exceeds max size");
> return -ERANGE;
> }
> opt->length = data_len / 4;
> memcpy(opt->opt_data, nla_data(data), data_len); <--- [3]
> }
> ...
> }
> 
> We can see that opt use key->enc_opts.len to get its pointer from
> key->enc_opts.data[] in [1]. Then length will be set to "data_len /
> 4". The bug is that if we send two TCA_FLOWER_KEY_ENC_OPTS_GENEVE
> packets and their total size is 252 bytes(key->enc_opts.len = 252)
> then key->enc_opts.len = opt->length = data_len / 4 when the third
> TCA_FLOWER_KEY_ENC_OPTS_GENEVE packet enters fl_set_geneve_opt. This
> can bypass the check in [2] and cause out of bound write in
> [3](opt->opt_data = key->enc_opts.data[257]).
> 
> # Patch
> 
> I already contacted the linux security team and made a patch:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net/sched?id=4d56304e5827c8cc8cc18c75343d283af7c4825c
> 
> # CVE
> 
> Pending
> 
> # EXP
> 
> In order to avoid confusion i will publish it after I get CVE.

CVE-2023-35788 has been assigned for this issue:
https://www.cve.org/CVERecord?id=CVE-2023-35788

Regards,
Salvatore
