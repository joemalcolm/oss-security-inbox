Received: (qmail 1557 invoked by uid 550); 7 Jun 2023 03:39:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28001 invoked from network); 7 Jun 2023 03:32:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686108755; x=1688700755;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qqHc9UEAodsgetudggc2KEfd+hirA1caIADabIKqO/8=;
        b=Qlq44V6jvI8DnpWMTJb7YDMtPUxUhjkNCDslZ0qm2QttUy7dVlgtG4NJMGgve68Pt4
         29QRq6GL7m1MSizvsh6MU21Z4y8N5yX+ivwzfMequ4eK77tFBDMNDqsbCgjc/THdcAuK
         76s85qMiSMQGcn5A0AnHi3eBHg22FDOpN8gZMAUkMvzSQBnIAbZC0dIChkaV3ML88T2v
         mp/W0U7OUGQhPSGcfVjGh4NmKA6wA4HNrOKsebbqg4i38DBXco2y1WXingRQSO3s3R7W
         QhWfmPvfYNpOvnGVOlmmNtXzieeO86LstTIwjlwvGgWnpREMStgVFuraO5NmGGH7OLcR
         x0dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686108755; x=1688700755;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qqHc9UEAodsgetudggc2KEfd+hirA1caIADabIKqO/8=;
        b=koIMoX6vMSxS6MaMieODmvqjOAfUhTthzyYX9iHiCWfhp8eGDx/9qEsylHWJTjZgke
         ZX4SGb1QWlthgsEASIt76/b/NmePjf+EKoyJRaY5eGAV5iu9SbhSmqnu79lF7apvCXZ8
         YNcAjYqH2KLQgWvN5U77vmdI9FNczQQqA+azu+dG7E/I2Y2tiNcFsv46Tn8BEXd8Iu+h
         AUryfWT4vCilmHqEHHkkbEXqGXDP3yZM48Rho8/OWZqnpUCfuQ1lOReP7PXy0NxIyAjL
         M03QmqsdEMHJowe2lr+d8yX4eqZDpFr1q1Y4RzrLhAY3J/4PaabwJOZQKR+lT2AqbY3D
         XaKg==
X-Gm-Message-State: AC+VfDyY5JQEXgeLdOx6nzyYq8WAvc3QRJvqo1Pop6yINBxk5jkjN4Xr
	el80ab/yfPhNIEQypWcLVw3kFz8tjTSph0Jp
X-Google-Smtp-Source: ACHHUZ5zDIxpN4DtCvQTtIKNEhZRZhDF1dXYYbJKvIsr+1nTdpwCZxrHlAG42K3Mbl/ZMcYSg2CAjg==
X-Received: by 2002:a05:6a20:394c:b0:100:b92b:e8be with SMTP id r12-20020a056a20394c00b00100b92be8bemr713325pzg.2.1686108755162;
        Tue, 06 Jun 2023 20:32:35 -0700 (PDT)
Message-ID: <ee226490-51c6-f8e9-821a-6061202c01b1@gmail.com>
Date: Wed, 7 Jun 2023 11:32:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Hangyu Hua <hbh25y@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Linux kernel: off-by-one in fl_set_geneve_opt

Hi guys,

I find a off-by-one bug in linux kernel's Flower
classifier(NET_CLS_FLOWER). It can cause denial-of-service and privilege 
escalation.

# Details:

static int fl_set_geneve_opt(const struct nlattr *nla, struct 
fl_flow_key *key,
      int depth, int option_len,
      struct netlink_ext_ack *extack)
{
struct nlattr *tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_MAX + 1];
struct nlattr *class = NULL, *type = NULL, *data = NULL;
struct geneve_opt *opt;
int err, data_len = 0;

if (option_len > sizeof(struct geneve_opt))
data_len = option_len - sizeof(struct geneve_opt);

opt = (struct geneve_opt *)&key->enc_opts.data[key->enc_opts.len]; <--- [1]
memset(opt, 0xff, option_len);
opt->length = data_len / 4;
opt->r1 = 0;
opt->r2 = 0;
opt->r3 = 0;

...
if (tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA]) {
int new_len = key->enc_opts.len;

data = tb[TCA_FLOWER_KEY_ENC_OPT_GENEVE_DATA];
data_len = nla_len(data);
if (data_len < 4) {
NL_SET_ERR_MSG(extack, "Tunnel key geneve option data is less than 4
bytes long");
return -ERANGE;
}
if (data_len % 4) {
NL_SET_ERR_MSG(extack, "Tunnel key geneve option data is not a
multiple of 4 bytes long");
return -ERANGE;
}

new_len += sizeof(struct geneve_opt) + data_len;
BUILD_BUG_ON(FLOW_DIS_TUN_OPTS_MAX != IP_TUNNEL_OPTS_MAX);
if (new_len > FLOW_DIS_TUN_OPTS_MAX) { <--- [2]
NL_SET_ERR_MSG(extack, "Tunnel options exceeds max size");
return -ERANGE;
}
opt->length = data_len / 4;
memcpy(opt->opt_data, nla_data(data), data_len); <--- [3]
}
...
}

We can see that opt use key->enc_opts.len to get its pointer from
key->enc_opts.data[] in [1]. Then length will be set to "data_len /
4". The bug is that if we send two TCA_FLOWER_KEY_ENC_OPTS_GENEVE
packets and their total size is 252 bytes(key->enc_opts.len = 252)
then key->enc_opts.len = opt->length = data_len / 4 when the third
TCA_FLOWER_KEY_ENC_OPTS_GENEVE packet enters fl_set_geneve_opt. This
can bypass the check in [2] and cause out of bound write in
[3](opt->opt_data = key->enc_opts.data[257]).

# Patch

I already contacted the linux security team and made a patch:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/net/sched?id=4d56304e5827c8cc8cc18c75343d283af7c4825c

# CVE

Pending

# EXP

In order to avoid confusion i will publish it after I get CVE.

Thanks,
Hangyu
