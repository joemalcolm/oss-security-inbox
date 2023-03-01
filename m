Received: (qmail 20425 invoked by uid 550); 1 Mar 2023 15:48:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31765 invoked from network); 1 Mar 2023 15:13:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=diag.uniroma1.it; s=google; t=1677683602;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jVEjW1MjsvIpCcw0XidRduynxGQxXcdRM2oaxJX4ZaE=;
        b=ScefcQJFNBgDdNykoikiMJchLrPBvwf0s7PqBgXpb9M9VT9Zx6za4KVnsAKuS3HbCc
         rl+t2QHPfdC/AGsOL0YDZ3Q3rhGKo8f04Wn/cGuMOXLkBGd1ao6mFyCulW0dVUC1Ksc6
         AY/JBE+KeqYA7dX6jmEDZZCLc+jkC7dZMio/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677683602;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jVEjW1MjsvIpCcw0XidRduynxGQxXcdRM2oaxJX4ZaE=;
        b=jqfBzRgzXuaGl/OFfaHubuTYJILB6lCg8i8Zl/cHN2dTNHSC0Jq+D8vdSX+EzovSLw
         ONBxw2If1ZgB2A0K41eA4BhNzzXZaK1g5DrhnS4W2o+Bhl6ExfmTMeCgaX4C8+vDnNhI
         pSTaQB0R39tNkXj9YbItMFMp9Wl53OnmvtdRBXJ3KaU4pWnPUXtQTyh3GaGtOedmZB0z
         TGJBEZt+R29kPYdhM+AsHvgdQuTdc/gLx3kVt+kKhX3wgPH9ukTDt6BD3ycoEtqhirys
         3l3I8TnwntlBfFM663Tp168LLMYMMK2ykWoxFVEDLb6TUfaH8HdYOAAis/MBle2oBNSz
         BwtQ==
X-Gm-Message-State: AO0yUKVaUqUCYZkBp82qoFQJWQJ8mpsWurWpYv6EGdsvPRo2oguVtLxx
	d10af+FpHQ79YdrbRWSCRW76Abl7Hp6Pe6oJ4AzXOZ3kXY9a4sfk
X-Google-Smtp-Source: AK7set+oCu2zAGfbYW/Ko5eeeXlftp6oBGsrZoqipFCdPPJ57jO9rtX2GXQtzs0yVtHpY8u8UEpBiFPE5U3RPIAIMPw=
X-Received: by 2002:a17:906:d9ca:b0:8af:b63:b4ba with SMTP id
 qk10-20020a170906d9ca00b008af0b63b4bamr3160709ejb.3.1677683601863; Wed, 01
 Mar 2023 07:13:21 -0800 (PST)
MIME-Version: 1.0
From: Pietro Borrello <borrello@diag.uniroma1.it>
Date: Wed, 1 Mar 2023 16:13:11 +0100
Message-ID: <CAEih1qWNqz23HeSbKN+9=zShNOjnWD1SHbVQT-Mu0qSLsHRADQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2023-1076: Linux Kernel: Type Confusion hardcodes tuntap socket
 UID to root

Hi all,

I am disclosing a type confusion in the initialization of TUN/TAP sockets
which hardcodes their UID to 0, usually the root UID.
sock_init_data() assumes that the `struct socket` passed in input is
contained in a `struct socket_alloc` allocated with sock_alloc().
However, tap_open() and tun_chr_open() pass a `struct socket` embedded
in a `struct tap_queue` and `struct tun_file` respectively, both
allocated with sk_alloc().
This causes a type confusion when issuing a container_of() with
SOCK_INODE() in sock_init_data() which results in assigning a wrong
sk_uid to the `struct sock` in input.

Due to the type confusion, both sockets happen to have their UID set
to 0, i.e. root.
While it will be often correct, as TUN/TAP devices require
CAP_NET_ADMIN, it may not always be the case.
Not sure how widespread is the impact of this, it seems the socket UID
may be used for network filtering and routing, thus TUN/TAP sockets may
be incorrectly managed, potentially bypassing network filters based on UID.
Additionally, it seems the sockets with an incorrect UID may be returned
to the vhost driver when issuing a get_socket() on a TUN/TAP device in
vhost_net_set_backend().

The proposed patches fix the bugs by adding and using sock_init_data_uid(),
which explicitly takes a UID as argument, and have been merged:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=66b2c338adce580dfce2199591e65e2bab889cff
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a096ccca6e503a5c575717ff8a36ace27510ab0a

The issue has been assigned CVE-2023-1076.

Best regards,
Pietro Borrello
