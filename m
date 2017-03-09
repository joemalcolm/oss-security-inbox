X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2171" "Thursday" "9" "March" "2017" "14:53:52" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQUW4-9YRvpEr0ygDSoskx9vCFjowAwEPK8hKB7_bYu2w@mail.gmail.com>" "51" "[oss-security] Concerns about CVE-2017-5972" nil nil nil "3" "2017030904:53:52" "[oss-security] Concerns about CVE-2017-5972" (number mark "U       wmealing@red Mar  9   51/2171  " thread-indent "\"[oss-security] Concerns about CVE-2017-5972\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28199 invoked by uid 550); 9 Mar 2017 04:54:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28175 invoked from network); 9 Mar 2017 04:54:04 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=QMV48F4vOBizFMvcoLAqFVWCgKd52E7/HuLhkB2D73M=;
        b=FHDFSp3ETctkUjSZGW9xfoxpy3RWioExmByI3X14QLRqMY/9f+kF/lRh4F6FrtkJD7
         64gkgx0w2xhqdq/1c6fROKa5PPYB0gN0pmgR1kdUvOXeIjX2Tr61onprTcqkmQripWr6
         Fzfw5nx9SwL552JOLvTMrgMDpVBAHfHWlFxlMNy89qK3H6uGUCX3Eg9RtYrVv74TcitH
         jjTGQhaCtqcxa6iCLQ2p3as2hkWjCaNeQ/RCAqwecTr7oNKCdqbaQkY/B8tWT3uTFAER
         iWHRWfxS/+tFjqnyIeAezAhDA0r06KyU7LwOXNGIKQUurcNxZ8KOlvF1eBPMljUeJVOG
         JejQ==
X-Gm-Message-State: AMke39m2uv3mP/w+r1GJqt4ZHiqOhLqRekYzmJhQJopWsdqRNvhd5OZLsgjmPNB3cEf+SLFY6bPYaelnKHvqM0ka
X-Received: by 10.36.185.16 with SMTP id w16mr30823385ite.118.1489035232942;
 Wed, 08 Mar 2017 20:53:52 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Thu, 9 Mar 2017 14:53:52 +1000
Message-ID: <CALJHwhQUW4-9YRvpEr0ygDSoskx9vCFjowAwEPK8hKB7_bYu2w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: hosein.askari@aol.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Concerns about CVE-2017-5972

Gday,

>From the original description from Hosein Askari (CC'ed) :

---
The TCP stack in the Linux kernel 3.x does not properly implement a
SYN cookie protection mechanism for the case of a fast network
connection, which allows remote attackers to cause a denial of service
(CPU consumption) by sending many TCP SYN packets, as demonstrated by
an attack against the kernel-3.10.0 package in CentOS Linux 7.
---

This topic was covered by github[1], in which they chose to use
synsanity as a mitigation process.

After spending some time looking at this allocation, I was unable to
reproduce the initial findings on either Red Hat Enterprise Linux 6
(based on 2.6.32) or 7 (based on 3.10) using direct host to host via
qemu or the e1000 driver as shown in the backtrace.  This with both
syn cookies enabled and disabled.

The backtrace provided shows that there is a slowpath in transmitting
ICMP reply packets which does not show the TCP syn cookie function in
the slowpath/backtrace.

I have attempted to performance profile this and found the syncookie
generation (under heavy syn attacks from multiple sources) did not
show significant impact on CPU performance compared to the packet
handling  in use.  I'm not saying its impossible I'm just saying the
backtrace doesn't match the events that are shown.

I -have- however been able to artificially recreate a very similar
backtrace through stuffing fake packets in with a kernel module and
created a hardening bug, however this seems unrelated as far as I can
see ( See https://bugzilla.redhat.com/show_bug.cgi?id=1428684 ).

The reproducer code is from a file called called "Trigemini.c" and is
found in several DDoS kits for at least the last 2 years, although
it's true origins are probably older, it is not possible to reproduce
or recreate on any scale I was able to test with.

I give Hosein a chance to talk more about his reproducer, in hope that
we can get a better understanding on how this was reproduced reliably.

Thank you

Wade Mealing
Red Hat Product Security

[1] https://githubengineering.com/syn-flood-mitigation-with-synsanity/
[2] https://github.com/LOLSquad/DDoS-Scripts/blob/master/TriGemini.c
