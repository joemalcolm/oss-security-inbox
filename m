Received: (qmail 16256 invoked by uid 550); 10 Jan 2023 12:01:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28333 invoked from network); 9 Jan 2023 22:10:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5X0ao7oUTLIICr/dTIJIVwCEPBpCJ/1CK6XlnaLfNOU=;
        b=U07ETlBQUhKxhi4T6f/az5aMBq7FFmQ9JcykX+YfD8uKRlz5x6U2bmxPGvDGLSeWS3
         YRZearXFdgCBkcN2SY5ZKP901v4SCOGJYENZo2N0kQX1PCyG0zrs6fFFq32J4CzWB66U
         LPfdrbIanAuZ4pdGxkOM0V+lNe9D+rkT84qlaFJ94TecTSbaiA+JvXwKfYaf+vlEzPKC
         cZ6RNxUAklAGh9AmSQsR1MrzCQkaaa6HIkLRIrxlarXZQTmqRbMk3HcUCoKjJPIvITzs
         SfMpjVh7iNEWlvKsahWvRR2LtGWYTLLcHRcpv3ssMUu65GYLlvXiRTUBGp0ikhsW8cZh
         57zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5X0ao7oUTLIICr/dTIJIVwCEPBpCJ/1CK6XlnaLfNOU=;
        b=EJLmBDRFZRwUbfLtEI8KLZRMRrMI8Sic3RZVXR5bP5lmQyFhFafsxr0sN4A9+uLMRd
         0sfISNRH6iAi38Ti9atSsL6SaO1JkZp65EM2VV3dtfLh9QikyUdAvbIDpgYSRxj8P0zp
         wqllsoKpiAzM2iifBwZKUCb1ZQAoa4C8OfBM+Za4+dInHf7Xql79YOHkUKGHs2XqONiR
         WG5uysKOQbaouW0qVFe2lI9ZOuU7hwVc/6UYTIirYkSasH9h0Lf4xv8snDMxv0S3VdrF
         TU02vP+RadP1iIn3wGfyCv4fAk3qiACWHGRJbAwpAOB2At3e3FHirmd/8jWaUo1Y0ctB
         yVxA==
X-Gm-Message-State: AFqh2kriNis1hrtF9FY4izsBT7/op8CvS24/IqDWeB47bF1WjVHbQtZX
	+wQu5sEiXh8BKJLC3sg9FPGUQlyVwnvSaIjukvqWN+TTqgA=
X-Google-Smtp-Source: AMrXdXut6JedYWFAEAo4PxVMenmP9DLAMQlFz8RKSTuP4VWB/t8z+lqJFu1GAmDdNaztyj8L80M9f6aIPmqeMTZhZ0o=
X-Received: by 2002:a5d:46c1:0:b0:2bb:8d0:983a with SMTP id
 g1-20020a5d46c1000000b002bb08d0983amr328221wrs.322.1673302198757; Mon, 09 Jan
 2023 14:09:58 -0800 (PST)
MIME-Version: 1.0
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Mon, 9 Jan 2023 15:09:22 -0700
Message-ID: <CADW8OBsT3Lhc2GrgQQThG_-sUz5SyExn-XvbLm7q+wGjuHxPqA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Type Confusion in Linux Kernel

Hi there,

I recently found a type-confusion vulnerability in the Linux kernel.
Since it interprets random data as pointers, it is potentially
exploitable. According to the fix commit, this bug was introduced in
Linux-2.6.12-rc2 in 2005. I already contacted security@kernel.org and
helped them patch the vulnerability.

# Vulnerability
The vulnerability is caused by accessing classification results before
checking the classification return code in the network scheduler's
code. For example, in the following snippet from `cbq_classify`:
~~~
struct cbq_class *cl;
......
result = tcf_classify(skb, fl, &res, true);
if (!fl || result < 0)
goto fallback;

cl = (void *)res.class;
~~~
It checks `result < 0` before casting `res.class` to `struct cbq_class
*`. However, `result >= 0` does not ensure `res.class` contains valid
results. Specifically, it is possible `result` itself says the packet
is invalid and should be dropped (`TC_ACT_SHOT`) while at the same
time res.class contains invalid data because res.class is a huge union
attribute and can be used for other purposes before it is marked as
`TC_ACT_SHOT`. As a result, it is a type confusion between `struct
cbq_class` and whatever struct that res.class was used as before it is
returned.

# Patch
Two schedulers have the same vulnerable code patterns and the fixes
can be found https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=caa4b35b4317d5147b3ab0fbdc9c075c7d2e9c12
and https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=a2965c7be0522eaa18808684b7b82b248515511b

This vulnerability does not have a CVE assigned. I'll appreciate it if
anyone on the mailing list can give it a CVE to signify its security
implications.

Best,
Kyle Zeng
