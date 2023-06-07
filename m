Received: (qmail 13857 invoked by uid 550); 7 Jun 2023 11:20:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30331 invoked from network); 7 Jun 2023 10:41:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686134499; x=1688726499;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d3+HcdNUiJTPvWMhZez66ERfUkPOh5X9YBAm/xoFaSU=;
        b=ooH0h9hPah96upwwJWJmn+BbW5o/HYsXOeqfLWPk3eYUqnruuTEap1Mfm/1f9hkngn
         TZ+5gpIH10/qbxz/jIPmh8d0fmRV5Wz6q+Q4ZzndmGP+71JdolIHTMTPAXafyXSnbP8c
         ApilxHOfs++fMJ4EG7H10xI2eb8LjF9ODZPA+hza1RY7zLmoMzlFq/x7215rSlzV0BJO
         zs30+olJrMmKirnIY5lBzKg+8c3MzKlCiNetMSZRF+JwseMHPUyY4asSuDQbLyVO0rpJ
         euNSh1x9FZ+lgVZ2v5I4iQDC6PXDFny1vO4js3abjF3QS9CXI8IbhQTJctADA977zObQ
         nlPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686134499; x=1688726499;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d3+HcdNUiJTPvWMhZez66ERfUkPOh5X9YBAm/xoFaSU=;
        b=mIQFvDgDs4nX07kTgoYPGYELeJOg0rZUYHRYFAiIDR+6abEUtU0l6FxbwHiBj49mjs
         2GaEb4LTGVqQiPfn1zT9nbmXrXsOrCkyWGwlRdYpG/EiZGG0cdxN4pI/YVLOX29w7icO
         D29juNZmHckNIvRdSzm7rC9L7vwlWAKZtRuo3EDE/ttYQ0bg1171OWTW+WUWearbjX61
         hmAkZvm5Y7bZc3G2U1HyGK6LvxcjbEarTSnz6MIMaI9WWMeAVKYURYknExhE6hJDJaOK
         2WI1tb7uI2KJcO0AS6TZCxAaChKZDoHHyaY7tyuW3L3wPNOZB0pWkkd0cJPoPew0oRyr
         Y3wA==
X-Gm-Message-State: AC+VfDwQddJ2Cn2swoTRh4l06/xaIrzstMEC9tjVvcKJ01q6Bik+gktf
	hVjuiIKF0B0x9GvRUc7G3xudt5IG0fwvjj7F
X-Google-Smtp-Source: ACHHUZ46LDCC2vf0D45rTlQqhEmgGevaWMwJdXOlp9PVSFhM2EHJWHB1rTB9WzW07DffuaFg+tzwAg==
X-Received: by 2002:a17:902:c942:b0:1a6:6bdb:b548 with SMTP id i2-20020a170902c94200b001a66bdbb548mr1591403pla.1.1686134498928;
        Wed, 07 Jun 2023 03:41:38 -0700 (PDT)
Message-ID: <e93b159a-f165-8ab6-e9ea-ab636c26b9ef@gmail.com>
Date: Wed, 7 Jun 2023 18:41:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Hangyu Hua <hbh25y@gmail.com>
To: oss-security@lists.openwall.com
References: <ee226490-51c6-f8e9-821a-6061202c01b1@gmail.com>
Content-Language: en-US
In-Reply-To: <ee226490-51c6-f8e9-821a-6061202c01b1@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Linux kernel: off-by-one in fl_set_geneve_opt

On 7/6/2023 11:32, Hangyu Hua wrote:
> Hi guys,
> 
> I find a off-by-one bug in linux kernel's Flower
> classifier(NET_CLS_FLOWER). It can cause denial-of-service and privilege 
> escalation.
> 
> # Details:
> 
> static int fl_set_geneve_opt(const struct nlattr *nla, struct 
> fl_flow_key *key,
>       int depth, int option_len,
>       struct netlink_ext_ack *extack)
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

Hi guys,

I decide not to publish the exp for ethical reasons. Please email me if 
any distribution's maintainers need the code.

Thanks,
Hangyu

> 
> Thanks,
> Hangyu
