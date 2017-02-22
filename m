X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2630" "Wednesday" "22" "February" "2017" "14:28:35" "+0100" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+xECAFQigwhfNWhrQBronMHWKxcLkWAfnqKo4WEtquPTg@mail.gmail.com>" "67" "[oss-security] Linux kernel: CVE-2017-6074: DCCP double-free vulnerability (local root)" nil nil nil "2" "2017022213:28:35" "[oss-security] Linux kernel: CVE-2017-6074: DCCP double-free vulnerability (local root)" (number mark "U       andreyknvl@g Feb 22   67/2630  " thread-indent "\"[oss-security] Linux kernel: CVE-2017-6074: DCCP double-free vulnerability (local root)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30166 invoked by uid 550); 22 Feb 2017 14:16:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5323 invoked from network); 22 Feb 2017 13:28:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ZGFAdJS8YdW1IGuA25MGVvZ2ga0yoeN4Go4zTFcOTnI=;
        b=RFEt+5hLg4jKdT4qIxiaAdGcNL+4ikW5d4WybZS5FzEQhtADwn889eJ84ESTTM0/Xw
         lGNl+KdfXChOIAIDWo0Nmsx5fQjTScn6yWDzwEdVQoSxOcUGrh9Gzkd6OWct6qYtNDXc
         8SyLhHn4PUwY2Sab6xB5XBtWPmei3an06z8e0kq/u0W1Xg9LQVPC+1PuK/9FvELCAnG2
         NReCx9CwYcfpLM3WjqIDmfhJ+GHogXZRtSPXA+ha/cHkCNBCp2y4Ysp1OMKhB6YuE8mi
         RDCzVMBozp8NdOEUAScNTkQoDRWXjPRDp8txTgCU83xLaCfkuZDqkJIMEinNwreSFR/f
         qCNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZGFAdJS8YdW1IGuA25MGVvZ2ga0yoeN4Go4zTFcOTnI=;
        b=unCH7X5E42ALxEVPhGaSNTC2BUAMCEylsBimdB8e0cq8MqAUM+6FNTlX2Z3MaGpzGD
         tVNaml1rogkcRmbnL7Xuwot0xk6k4Mo+8JhwLk76YMeHU7syuV00h8ia/Lh+IHKTwTPr
         lPoHa34uFRYHIIlMo5qkxGCDQQpwmUJcQ/yySFy99eBOAxYsFy0kQXWbBVTwEYd+6HDD
         y9NQJ/v/g0USkV7HVVjM9BV0YZMZekjDTC48zvs8l9AKILu5yqS8YX4/dZiJW+o3IjQQ
         eMruu+WttiTcY4MubdkV6SFaJQjqwJBUqnJKX0385tZPhwoLlkZ6ECR7v4AgRROnE/i7
         q9NQ==
X-Gm-Message-State: AMke39niyxdzT6LHebY/3rJ6NLBs/z0AKL9W7Dj7zQNPTOz3it//+MGVM3ArHwWpT93LAKY1L5f+vImht90YyfUs
X-Received: by 10.223.162.133 with SMTP id s5mr26452086wra.157.1487770115993;
 Wed, 22 Feb 2017 05:28:35 -0800 (PST)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 22 Feb 2017 14:28:35 +0100
Message-ID: <CAAeHK+xECAFQigwhfNWhrQBronMHWKxcLkWAfnqKo4WEtquPTg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Linux kernel: CVE-2017-6074: DCCP double-free vulnerability (local root)

Hi,

This is an announcement about CVE-2017-6074 [1] which is a double-free
vulnerability I found in the Linux kernel. It can be exploited to gain
kernel code execution from an unprivileged processes.

Fixed on Feb 17, 2017:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=5edabca9d4cff7f1f2b68f0bac55ef99d9798ba4

The oldest version that was checked is 2.6.18 (Sep 2006), which is
vulnerable. However, the bug was introduced before that, probably in
the first release with DCCP support (2.6.14, Oct 2005).

The kernel needs to be built with CONFIG_IP_DCCP for the vulnerability
to be present. A lot of modern distributions enable this option by
default.

The bug was found with syzkaller [2].

### Bug details

In the current DCCP implementation an skb for a DCCP_PKT_REQUEST
packet is forcibly freed via __kfree_skb in dccp_rcv_state_process if
dccp_v6_conn_request successfully returns [3].

However, if IPV6_RECVPKTINFO is set on a socket, the address of the
skb is saved to ireq->pktopts and the ref count for skb is incremented
in dccp_v6_conn_request [4], so skb is still in use. Nevertheless, it
still gets freed in dccp_rcv_state_process.

The fix is to call consume_skb, which accounts for skb->users,
instead of doing goto discard and therefore calling __kfree_skb.

To exploit this double-free, it can be turned into a use-after-free:

//  The first free:
kfree(dccp_skb)
// Another object allocated on the same place as dccp_skb:
some_object = kmalloc()
// The second free, effectively frees some_object
kfree(dccp_skb)

As this point we have a use-after-free on some_object. An attacker can
control what object that would be and overwrite it's content with
arbitrary data by using some of the kernel heap spraying techniques.
If the overwritten object has any triggerable function pointers, an
attacker gets to execute arbitrary code within the kernel.

I'll publish an exploit in a few days, giving people time to update.

New Ubuntu kernels are out so please update as soon as possible.

### Timeline

2017-02-15: Bug reported to security@kernel.org
2017-02-16: Patch submitted to netdev
2017-02-17: Patch committed to mainline kernel
2017-02-18: Notification sent to linux-distros
2017-02-22: Public announcement

### Links

[1] http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-6074
[2] https://github.com/google/syzkaller
[3] http://lxr.free-electrons.com/source/net/dccp/input.c?v=4.9#L606
[4] http://lxr.free-electrons.com/source/net/dccp/ipv6.c?v=4.9#L351
[5] https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=5edabca9d4cff7f1f2b68f0bac55ef99d9798ba4
