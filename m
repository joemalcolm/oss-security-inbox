X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1226" "Thursday" "9" "March" "2017" "00:51:03" "+0300" "Alexander Popov" "alex.popov@linux.com" "<2f565778-3ee1-e311-e378-2d7d91e2c19a@linux.com>" "30" "[oss-security] Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in n_hdlc" nil nil nil "3" "2017030821:51:03" "[oss-security] Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in n_hdlc" (number mark "U       alex.popov@l Mar  9   30/1226  " thread-indent "\"[oss-security] Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in n_hdlc\"\n") "<5ced8dfa-a2e9-1dff-9708-54a76f6b4c59@linux.com>" ("<5ced8dfa-a2e9-1dff-9708-54a76f6b4c59@linux.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20147 invoked by uid 550); 8 Mar 2017 22:00:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3910 invoked from network); 8 Mar 2017 21:51:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:references:to:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=l3FX5EFm9Wsb5Kf5ixhmhWVIz+slGDyIwHXhwv8ZReI=;
        b=UWnA3h49FnVkZLrFZ05/OlBIDvpwKnQuJu8UQEbk2DI+Gp3+efV+Xr1YCZYUTyzm8B
         KsnPCtzNf3XI0o/EPFBGu/3uQoCFYOPH9p4M+vJnVawsieptiSqW6aq2JrAtAFRsDkQ1
         9BS+9qin93Sa9uS8iZJjETStVx76DlR9DCQiTaWcJ6TUVSS/fKhyQHgkgUVX//r9ZNpq
         q8vgt2Yfnuc9Ro8BN3zxppU7ODvnMwJvBkTqEBA53GDzDVBaR4g+otL+j73HAIp29A0q
         Jv+AKp8xwZagCsNMbHvdGmFDLQVzqd14w+fxAPYyynC2DrlVmTOADDmBGCchVYZJJOgH
         do8g==
X-Gm-Message-State: AMke39nW5EF7WD5XgkXejw1n59X3JAMj8gtpnWH9K3qY/+cexHKZFl+1Qqth49iaqvd7gA==
X-Received: by 10.46.77.150 with SMTP id c22mr2954800ljd.114.1489009864757;
        Wed, 08 Mar 2017 13:51:04 -0800 (PST)
References: <5ced8dfa-a2e9-1dff-9708-54a76f6b4c59@linux.com>
To: oss-security@lists.openwall.com
From: Alexander Popov <alex.popov@linux.com>
Message-ID: <2f565778-3ee1-e311-e378-2d7d91e2c19a@linux.com>
Date: Thu, 9 Mar 2017 00:51:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <5ced8dfa-a2e9-1dff-9708-54a76f6b4c59@linux.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Linux kernel: CVE-2017-2636: local privilege escalation flaw in
 n_hdlc

Hello,

There is some additional information about CVE-2017-2636:

On 07.03.2017 20:45, Alexander Popov wrote:
> This is an announcement of CVE-2017-2636, which is a race condition in
> the n_hdlc Linux kernel driver (drivers/tty/n_hdlc.c). It can be exploited
> to gain a local privilege escalation.
> 
> This driver provides HDLC serial line discipline and comes as a kernel module
> in many Linux distributions, which have CONFIG_N_HDLC=m in the kernel config.

Exploiting the flaw in the vulnerable module n_hdlc does not require
Microgate or SyncLink hardware. The module is automatically loaded if an
unprivileged user opens a pseudoterminal and calls TIOCSETD ioctl for it
setting N_HDLC line discipline.

The fix is currently on the way to the mainline kernel:
https://git.kernel.org/cgit/linux/kernel/git/gregkh/tty.git/commit/?h=tty-linus&id=82f2341c94d270421f383641b7cd670e474db56b

Some Linux distributions have already provided the security update.

However, you can mitigate the flaw manually by blocking n_hdlc autoloading
by a system-wide modprobe rule in /etc/modprobe.d/ (refer to your Linux
distribution documentation). In that case please check that n_hdlc is not
already loaded.

Best regards,
Alexander

