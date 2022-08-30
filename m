Received: (qmail 20094 invoked by uid 550); 30 Aug 2022 10:58:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9665 invoked from network); 30 Aug 2022 02:28:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dgl-cx.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=TmB55sFpWRM9Oqa4QHQnpLgiprH3ZSZQXDkYxM8YUQA=;
        b=dPoOrjG5vUDHns+apADLPeXO1HlfrUCevuGUXGXGBsXBMI/1Gz4urfom4t+0at/f7q
         9Rwh7/vGBq/VLMn/dRUKNeo2JMFeMjGHWIjTpyRm9KlyA7ztxCbpck2ORQtdRpmAbB0f
         Q9HkMuiBUIN9nXMkQJCsZBF9MIeiRf8TgLLhrFyzcfQ/VnmEip0ORau6lr5hIzz8eh9s
         /NB0Al7Jgj9TGEIRZiIVOqRAAydqC0oKF1/ZRrDPlHibo2HGpRsibOTyBCS6TtViN5/K
         repO3OPXqnhPYcgl6kbmHKa9Fp0tOBzkb8fhSFoqxNxD9WNsb/JbelRHivYy1sG0UKUT
         kXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=TmB55sFpWRM9Oqa4QHQnpLgiprH3ZSZQXDkYxM8YUQA=;
        b=C9FLnNY2U8QjC3/0MlpJqVbHicEa/KiKhoe7nYxOpZ7A9no/ngszaqKS3BdVoC5Aeg
         lgYMEmFy2jRI5CcaRkp9W/k5P9tUEEsFKiD8lLIJirwrgrZGeWqNFo/wo0K6gjGkM/wb
         lPFRzOh/2inxkX3gdI6zUnWEoIhlJnJS8OGuCw//nGKziTQQ/FqxDl2f3EXFVmH3NDDp
         Pisu9JmT8Gj6PJXcUpa8tYF+LtCPKPfQHLdwdiNNTpJFfrgoWhwnCre9KNXytA/1BUHh
         VAJ5WL/EElIAqDQWqbDwwId0Y/LpI//xLJN+lZATgWftaEVFWyo2iadMcc2HjbPCdk/f
         CfMw==
X-Gm-Message-State: ACgBeo0lIzMtMhG9k0vr6kekySvKIgT90ML8Y+1qE8Ipo9/WqB9OTRUr
	AFpaCacmtBCGhJuc3TW+uxzoCx5Npl4rXKWoaE/PY3CusifWfA==
X-Google-Smtp-Source: AA6agR7+FSqt++4pbyquWmYcOlEcejggHWfqf9YtaRDi16sjBtneLwIq/nkOQbIfltIcWZDyDvfg/GGIABKwoiQo36M=
X-Received: by 2002:ad4:5be5:0:b0:47b:310:92e9 with SMTP id
 k5-20020ad45be5000000b0047b031092e9mr13123291qvc.78.1661826475319; Mon, 29
 Aug 2022 19:27:55 -0700 (PDT)
MIME-Version: 1.0
From: David Leadbeater <dgl@dgl.cx>
Date: Tue, 30 Aug 2022 12:27:44 +1000
Message-ID: <CAP9KPhDskZ1W_wnJ_Z8sNY9nqwLGyL0k3pjYwrhJ_TQnXcC-HA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-2663: Linux netfilter: nf_conntrack_irc message handling

Description:

I've found an issue in nf_conntrack_irc where the message handling can
be confused and it incorrectly matches on the message.

Impact:

A firewall may be able to be bypassed when users are using unencrypted
IRC with nf_conntrack_irc configured.

Mitigations:

Linux: Disable nf_conntrack_irc (remove any --helper irc rules, and/or
unload the kernel module)
MikroTik: Remove IRC from the service ports list (/ip
firewall/service-port/disable irc)

Fix is posted here:
https://lore.kernel.org/netfilter-devel/20220826045658.100360-1-dgl@dgl.cx/T/
It will be making its way into upstream Linux soon.

I'll update in a couple of days with complete details.

David
