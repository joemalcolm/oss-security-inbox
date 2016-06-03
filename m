X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["480" "Friday" "3" "June" "2016" "15:26:24" "+0200" "Kangjie Lu" "kangjielu@gmail.com" "<CABEk9YwpYud4vgFLWJQTV6PFPdGQ2ejd6ueJMimsgKw94KgnYQ@mail.gmail.com>" "20" "[oss-security] CVE Request: tipc: an infoleak in tipc_nl_compat_link_dump" nil nil nil "6" "2016060313:26:24" "[oss-security] CVE Request: tipc: an infoleak in tipc_nl_compat_link_dump" (number mark "U       kangjielu@gm Jun  3   20/480   " thread-indent "\"[oss-security] CVE Request: tipc: an infoleak in tipc_nl_compat_link_dump\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17974 invoked by uid 550); 3 Jun 2016 13:26:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17953 invoked from network); 3 Jun 2016 13:26:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=td8SfqxP5AAbJYgvXpz9Y6CfmsBhML676MvCX2jwO68=;
        b=K4CMnEFe/p46uz47CYn2w5nx7MA1fHarvPmYQatkZxd9D+iTw2Wohi8dKns1oe41t3
         sw0FU5uj7mBeEwd+YyClR2SBhSkIOuw4KaeaxrX8KmRLgcBNZtVMKWBNhSELrKB4I0VL
         mihtd7BtMp6Yil8P0uCBUN3LZCCQolGihdIhWepLxKJRruE3m1fQsyqjZIUIvMjSqE/x
         +IhwmbnnGz+j0FUM+MGaxjT9hSbkdXl0lGIKVhjthpMq+0aJ9HQIqEHGT8ggpx4OLmeb
         6sQeOe+lS9vDg08jZjfBS+u3IiXPv/MXj+uXVe4AnRTiYbGIJwoZ/x12XVaoxzZzcBSJ
         JL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=td8SfqxP5AAbJYgvXpz9Y6CfmsBhML676MvCX2jwO68=;
        b=XqNzQVf9c8nDmoWPDovDghu1wQdkguRUuQJMdKmJWKrGhnzJvLrClCnuDXhTu6qcc2
         omzQZ9bF4rAGcNZzGTCQdmyZ0lhO39shVw1a5OoCNe4+4vKgsJ+ZiuydCdXLMZoyQ5/H
         5qOh7PZOzCTg96NsgaazYSOXiwJqfD3IQ8yGRnNxGQHpcS2xjqNOT2opt9+X4KkLvn5E
         0ArPaPxb+HyCVRLr1HR9s7UY+3WiFdcOL21rEEFnIsx6pW/cFzNNqLxwKsJSoOGqwV54
         zjVIAdkx4MD/GBVutSv1LKJ+F3vFH7VeyIOcbENZ+EhtxGRE8W/HH1KevrVOyLzRCRcU
         Yqag==
X-Gm-Message-State: ALyK8tKb5J1XeUcmaRPs6m7g5DX1G2ezEvTzZGMow5YXX5RI8Qd0TzpEMopdGRqiRSJ0bE/L63N7TBVqIuMZCA==
X-Received: by 10.202.170.130 with SMTP id t124mr1954745oie.108.1464960384835;
 Fri, 03 Jun 2016 06:26:24 -0700 (PDT)
MIME-Version: 1.0
From: Kangjie Lu <kangjielu@gmail.com>
Date: Fri, 3 Jun 2016 15:26:24 +0200
Message-ID: <CABEk9YwpYud4vgFLWJQTV6PFPdGQ2ejd6ueJMimsgKw94KgnYQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Taesoo Kim <taesoo@gatech.edu>, Chengyu Song <csong84@gatech.edu>
Content-Type: multipart/alternative; boundary=001a113cde4059288705345fab79
Subject: [oss-security] CVE Request: tipc: an infoleak in tipc_nl_compat_link_dump

--001a113cde4059288705345fab79
Content-Type: text/plain; charset=UTF-8

Hello,

In function tipc_nl_compat_link_dump of file net/tipc/netlink_compat.c,
link_info.str is a char array of size 60. Memory after the NULL
byte is not initialized. Sending the whole object out can cause
a leak of sensitive info in kernel stack.

Fix info:
https://patchwork.ozlabs.org/patch/629100/

Please help assign a CVE to this vulnerability.


Thanks,
Kangjie Lu

--001a113cde4059288705345fab79--
