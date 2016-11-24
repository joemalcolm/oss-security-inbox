X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["549" "Friday" "25" "November" "2016" "10:25:20" "+1100" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhSoFkAS5hhXWwmRD4FmCzzvVCCKUhwozwZY==FS7qZGZQ@mail.gmail.com>" "18" "[oss-security] Linux kernel: CVE-2016-8650 : Local denial of service with in key subsystem" nil nil nil "11" "2016112423:25:20" "[oss-security] Linux kernel: CVE-2016-8650 : Local denial of service with in key subsystem" (number mark "U       wmealing@red Nov 25   18/549   " thread-indent "\"[oss-security] Linux kernel: CVE-2016-8650 : Local denial of service with in key subsystem\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5803 invoked by uid 550); 24 Nov 2016 23:25:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5779 invoked from network); 24 Nov 2016 23:25:32 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=fTwAC5etWqyK7rR0rifRqDe++c+QQQRBcXp5oeV0lbo=;
        b=TJKUGU7RNrIyxc3DJ0mwb9Mn+3pNknxKzI4ewRE4/JFM9tnaUmB+uhT45E3jEZ78pX
         JILqzxapz2bTYG6vW9tRaKgD6Xv5ZDnfh56k/qKsNNhGW3Vd9Z6IATh7l22VxiWR0OEV
         hM00zj5y9jTWMZDXi67G2RDGnwl7/ul6PrC+I6York4ffdzGAqRk7jVPS5iaF0VU9Y3h
         hTO4x+Rl2/J0ryAaPQjUZPstJzB2TM5bnJfViXy/RAMYwL1rVK4tHvpR0XerZw4T4gox
         ebuDMgsO2sak65MbR3sfMGuWzoLBmBO9WpHyvWagjauujKW46ItFCn9nSVS8ySTjthfm
         Ee3A==
X-Gm-Message-State: AKaTC01SoI9yFXbUFrGxaViMNSDINuwzfs3MMrXNHWy/Vzou3a/XVr9DDmwNALFo35K6CmAwLRn/iiVyhxC11Bog
X-Received: by 10.36.224.200 with SMTP id c191mr4203110ith.118.1480029920556;
 Thu, 24 Nov 2016 15:25:20 -0800 (PST)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Fri, 25 Nov 2016 10:25:20 +1100
Message-ID: <CALJHwhSoFkAS5hhXWwmRD4FmCzzvVCCKUhwozwZY==FS7qZGZQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Linux kernel: CVE-2016-8650 : Local denial of service with in key subsystem

Gday,

A flaw was found in the Linux kernel key management subsystem in which
a local attacker could crash the kernel (denial of service) or corrupt
the stack and additional memory by supplying a specially crafted RSA
key.  This flaw panics the machine during the verification of the RSA
key and seems to do a 1 byte corruption of the stack.

This vulnerably can be triggered by any unprivileged user with a local
shell account.

Upstream fix:

https://lkml.org/lkml/2016/11/23/477

Red Hat bug:

https://bugzilla.redhat.com/show_bug.cgi?id=1395187
