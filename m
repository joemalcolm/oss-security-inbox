Received: (qmail 5880 invoked by uid 550); 8 Jun 2023 07:44:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16032 invoked from network); 8 Jun 2023 02:57:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686193056; x=1688785056;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1Qr7q5mM2vd+XDX/7lKxd8XB/Wxu7sL9x8C5yrPN9Fg=;
        b=jqiBoQpQPGAyt7qMEpdhm1zd+qTpLuh43czU1sG5iu6RoOxV79w63fBUFyVkWB+077
         JjKkw25w3QWq1aoVB+VUb2adfCUZawboGRb6d8YOMZWC9b4G5Kkfi/WXB9HTyy5CQk0O
         m+CJ1Btnn5OFzWSpj0cGycPXK7XX4M0cs+r3hU1VQVlimB/XluADvWgWBzEaxbhmpE20
         bMtlZPoSF8CLFu5yS3liA/WrDiC9ZHUdkosozSIBaokcLlZBX0NI1cqaZPRTQyjk7qVD
         cc0U4QlpXPL3rS6EgN9inY8OCFrvTO05+thMg9Kf4AapK7JnYixARiQJZB4/Xuz1bT1e
         rKfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686193056; x=1688785056;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Qr7q5mM2vd+XDX/7lKxd8XB/Wxu7sL9x8C5yrPN9Fg=;
        b=Kd8fztarIH57w7AdCvFvo2740/HvMmjXbsFRfZVkwn+G6ns+D8JN6FV6f7B5CRtBA5
         SdyDwVE7sEBk01ZqWtx1PcFQ/2Lb54+FcTVIub4peDdgUl1c0+sGi49NMoYMjzfrXxyx
         a80oo60fHc1kSezQ3uLGrhUkDbIpHIYZHn3PmiGzUYdGDkC19oFVG661HUJWXPmIYZOe
         7izBIlNt2DqeXpesqXhhfvcXP/7sexrdrnfINl0iYj69jPBtzJ+YqQbFR3hE8lfX9bM9
         6qa/ljzbt1BPuDzZ4CFDs78hVkeWZ8QpTsen+iGZAw8+WXJNuf/JXGvCEvhdh9GrfEsG
         yGIA==
X-Gm-Message-State: AC+VfDxmnA52O4w2BPG8s9rDbuNL9esQysprz6Yss+opfEy0iKgkFhV3
	YioiaNsJNJZH7cowzHXdLblFwDsnZD9Zshgx
X-Google-Smtp-Source: ACHHUZ7aTMjyTd4Q6AmmqdjpSotDllRiob0eXkeA4/kDmM+UXcFUDGuY2T8r35uhmQuLYku0GwTy8A==
X-Received: by 2002:a05:6a00:3a22:b0:65c:8d9d:7bbe with SMTP id fj34-20020a056a003a2200b0065c8d9d7bbemr7658153pfb.0.1686193056007;
        Wed, 07 Jun 2023 19:57:36 -0700 (PDT)
Message-ID: <11dc9c61-7833-5503-75e6-f4ec78a60701@gmail.com>
Date: Thu, 8 Jun 2023 10:57:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
From: Hangyu Hua <hbh25y@gmail.com>
To: oss-security@lists.openwall.com
References: <ee226490-51c6-f8e9-821a-6061202c01b1@gmail.com>
 <e93b159a-f165-8ab6-e9ea-ab636c26b9ef@gmail.com>
In-Reply-To: <e93b159a-f165-8ab6-e9ea-ab636c26b9ef@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Linux kernel: off-by-one in fl_set_geneve_opt

On 7/6/2023 18:41, Hangyu Hua wrote:
> On 7/6/2023 11:32, Hangyu Hua wrote:
>> Hi guys,
>>
>> I find a off-by-one bug in linux kernel's Flower
>> classifier(NET_CLS_FLOWER). It can cause denial-of-service and 
>> privilege escalation.
>>
>> # Details:
>>
>> static int fl_set_geneve_opt(const struct nlattr *nla, struct 
>> fl_flow_key *key,
>>       int depth, int option_len,
>>       struct netlink_ext_ack *extack)
>> {
>> struct nlattr *tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX + 1];
>> struct nlattr *class = NULL, *type = NULL, *data = NULL;
>> struct geneve_opt *opt;
>> int err, data_len = 0;
>>
>> if (option_len > sizeof(struct geneve_opt))
>> data_len = option_len - sizeof(struct geneve_opt);
>>
>> opt = (struct geneve_opt *)&key->enc_opts.data[key->enc_opts.len]; 
>> <--- [1]
>> memset(opt, 0xff, option_len);
>> opt->length = data_len / 4;
>> opt->r1 = 0;
>> opt->r2 = 0;
>> opt->r3 = 0;
>>
>> ...
>> if (tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA]) {
>> int new_len = key->enc_opts.len;
>>
>> data = tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA];
>> data_len = nla_len(data);
>> if (data_len < 4) {
>> NL_SET_ERR_MSG(extack, "Tunnel key geneve option data is less than 4
>> bytes long");
>> return -ERANGE;
>> }
>> if (data_len % 4) {
>> NL_SET_ERR_MSG(extack, "Tunnel key geneve option data is not a
>> multiple of 4 bytes long");
>> return -ERANGE;
>> }
>>
>> new_len += sizeof(struct geneve_opt) + data_len;
>> BUILD_BUG_ON(FLOW_DIS_TUN_OPTS_MAX != IP_TUNNEL_OPTS_MAX);
>> if (new_len > FLOW_DIS_TUN_OPTS_MAX) { <--- [2]
>> NL_SET_ERR_MSG(extack, "Tunnel options exceeds max size");
>> return -ERANGE;
>> }
>> opt->length = data_len / 4;
>> memcpy(opt->opt_data, nla_data(data), data_len); <--- [3]
>> }
>> ...
>> }
>>
>> We can see that opt use key->enc_opts.len to get its pointer from
>> key->enc_opts.data[] in [1]. Then length will be set to "data_len /
>> 4". The bug is that if we send two TCA_FLOWER_KEY_ENC_OPTS_GENEVE
>> packets and their total size is 252 bytes(key->enc_opts.len = 252)
>> then key->enc_opts.len = opt->length = data_len / 4 when the third
>> TCA_FLOWER_KEY_ENC_OPTS_GENEVE packet enters fl_set_geneve_opt. This
>> can bypass the check in [2] and cause out of bound write in
>> [3](opt->opt_data = key->enc_opts.data[257]).
>>
>> # Patch
>>
>> I already contacted the linux security team and made a patch:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net/sched?id=4d56304e5827c8cc8cc18c75343d283af7c4825c
>>
>> # CVE
>>
>> Pending
>>
>> # EXP
>>
>> In order to avoid confusion i will publish it after I get CVE.
> 
> Hi guys,
> 
> I decide not to publish the exp for ethical reasons. Please email me if 
> any distribution's maintainers need the code.

Since some maintainers have requested code from me, I sent the code to
<linux-distros@vs.openwall.org>.

Thanks,
Hangyu

> 
> Thanks,
> Hangyu
> 
>>
>> Thanks,
>> Hangyu
