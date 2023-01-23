Received: (qmail 10120 invoked by uid 550); 23 Jan 2023 18:55:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32049 invoked from network); 23 Jan 2023 18:40:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=diag.uniroma1.it; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+5RWk8K7fHaT2+snWaaGbUJa7lk8Ud965H9fZIxf69E=;
        b=FhGkxFTIuzprRfippNhF4QxKvfqwnnwr9zjrXDy1M3z5xRi/tIkJoowkPmvPKmkAP3
         SXSpqu9FKoV94ZfaoEkZ3BmCOVN41VXk8VqmenrmOT+3U/Xldr0qio3KWv/4/313a/T3
         4sk6K4GHsgxHcrqTcc58umDn/iLq1VJzXBtqM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+5RWk8K7fHaT2+snWaaGbUJa7lk8Ud965H9fZIxf69E=;
        b=6ldtePW3P4LmWpg5xVaOk0GNdFg730CvC2bfu31ECbLcbfZgJ6ckxopTNoyYiwtyG2
         +ZQoKwJvXdjpbDotbzJYOUcRH/SFLOfN0CSW+foYvfhAxV0gDRHnien11qHQ0Z5RD8Eo
         ibNQDxOi50+rhcmO7/fjiPBG2hxHOSOwg/D5TN2yy5X3sHrUQq6CmcEVXLBtvnZVTUSB
         ffRI2ZlSRoL/HGo3imMg9FF+/8YKBzdv6FMcLkI2YEfwQN3AHYH1aPExo635/1XdlyHq
         XBCXM5MVGO5iyh/XmcpRj436VLNwY1egeheegxSNgn3Hqg7GRSFCCNTlT70tpYoB13TU
         8JKw==
X-Gm-Message-State: AFqh2kpof8jZVSzUnPcbtO5afr2jIpu+gY1td1ENCsEpgA9C8TipDIAm
	I52U/I4Z0kWHycwQ2ik8KDqI0fzrKD01OpEXFfzQtg+Kxp7yGTK+
X-Google-Smtp-Source: AMrXdXv51QqLHl8xX1p21+eYEpUoVOqnzQLSntnCBCGY1iYORz1eGcA/o9f7mqjz63Hbd3NpsABpCkhflSAAq/TJvDA=
X-Received: by 2002:a05:6402:608:b0:499:c290:b7e1 with SMTP id
 n8-20020a056402060800b00499c290b7e1mr2670247edv.168.1674499191681; Mon, 23
 Jan 2023 10:39:51 -0800 (PST)
MIME-Version: 1.0
From: Pietro Borrello <borrello@diag.uniroma1.it>
Date: Mon, 23 Jan 2023 19:39:41 +0100
Message-ID: <CAEih1qVJxs7j7XAjjjpmK_xFit+sekDuHCOzsaExmMh6ZjG48Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux Kernel: sctp: KASLR leak in inet_diag_msg_sctpasoc_fill()

Hi all,

We reported a type confusion in inet_diag_msg_sctpasoc_fill() in
net/sctp/diag.c, which uses a type confused pointer to return
information to userspace when issuing a list_entry() on
asoc->base.bind_addr.address_list.next when the list is empty.

The list, in theory, should never be empty, but it can be when binding
an SCTP socket with something like:
```
servaddr.sin6_family = AF_INET6;
servaddr.sin6_port = htons(0);
servaddr.sin6_scope_id = 0;
inet_pton(AF_INET6, "::1", &servaddr.sin6_addr);
```

And then request a connection to:
```
connaddr.sin6_family = AF_INET6;
connaddr.sin6_port = htons(20000);
connaddr.sin6_scope_id = if_nametoindex("lo");
inet_pton(AF_INET6, "fe88::1", &connaddr.sin6_addr);
```

The impact of the type confusion is a KASLR leak since the `laddr.v6.sin6_addr`
is returned from the type confused pointer, which overlaps with `struct
sctp_endpoint *ep` of the `struct sctp_association`.

The fix from the maintainer prevents the connection to the socket with
unmatched scopes and will be merged soon:
https://lore.kernel.org/linux-sctp/9fcd182f1099f86c6661f3717f63712ddd1c676c.1674496737.git.marcelo.leitner%40gmail.com/T/

Best regards,
Pietro Borrello
