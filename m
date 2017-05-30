X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2118" "Tuesday" "30" "May" "2017" "21:12:21" "+0200" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+zP+B4b=qDFBcivEt4O7ruLcE3rfSrSXs_9ZbixmX-FqQ@mail.gmail.com>" "45" "[oss-security] Linux kernel: memory corruptions in IPv4/IPv6 TCP/SCTP/DCCP sockets" "^Cc:" nil nil "5" "2017053019:12:21" "[oss-security] Linux kernel: memory corruptions in IPv4/IPv6 TCP/SCTP/DCCP sockets" (number mark "U       andreyknvl@g May 30   45/2118  " thread-indent "\"[oss-security] Linux kernel: memory corruptions in IPv4/IPv6 TCP/SCTP/DCCP sockets\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27926 invoked by uid 550); 30 May 2017 19:12:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27863 invoked from network); 30 May 2017 19:12:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ZlTNvUvtC6Pud7FFHWwjVxvWDLf9WW/6HSdGBMhPE2E=;
        b=qGlon4usENXBp4oHVgef9Ted25EaFST45FaaKhPZMAtuRpGa8m081bfQEvl7TCEcyM
         OL/wdmaUNx1w3EfHSX5b63trXdkl/0lIM2SrwB430ddrNWbrrLwvJQyoNJxWMFr8HsAP
         9aZYwFcS+RaPnj9X4T2dL7GpeJqAl/SWQh1Yqq6gJVrJsImQi8+HfNga2LhhjIZYhqEa
         WrXd96VTzM4PXcR5w4qBZKkIKB5s+CFd+SqAp/i9+q5M5YXau7QiFHJmcq2IB/lQxyuc
         PjOCcyf7evfsdmzTJS2feA7UpQkFJPaJxTUAIRS/kx/xzRKIMG8vG64R+lTY9I7eeuKZ
         e2uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ZlTNvUvtC6Pud7FFHWwjVxvWDLf9WW/6HSdGBMhPE2E=;
        b=J65K/Ow6FstnZnABxvz+6lbctXroaIAoqpu5rs2Yq6aLxaCsU9XQ+IIST14e3sMIEa
         t4/jZsIyxCi71Bf1kyRhoTD96fxHniUf9gGdcrNzWUZD6XZKS0wLF8PWDe/3XatJhj6M
         RFKaS9l675v4tT3WgnNK6sFo8OpodBytKS470SmGIph4GL7Zg/0I4injAbV2EnzPMk4e
         9rR4vQFEYeHVDqCsHmBeOEUUo7FIN96XURifxqXQSh6bTPVrSl0JkQvdZn68kiAK63dI
         35/NP8Y5NUE2TZrAry8wH5Lxi2RkqAC4kPBO/TdXlC4yZRMjusCGSjrAKGDtY0ifMyVg
         PJiQ==
X-Gm-Message-State: AODbwcBcLNOpjgkOBCT4GE/FqYK314rlbcr0eDUZBbfGFB76OuQDGtgC
	hLYF1Dax0oNiRcvQ0QTATdH0FdCffVUU
X-Received: by 10.37.192.130 with SMTP id c124mr14582910ybf.67.1496171542246;
 Tue, 30 May 2017 12:12:22 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAAeHK+zP+B4b=qDFBcivEt4O7ruLcE3rfSrSXs_9ZbixmX-FqQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Pray3r <pray3r.z@gmail.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Kostya Serebryany <kcc@google.com>
Date: Tue, 30 May 2017 21:12:21 +0200
From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: memory corruptions in IPv4/IPv6 TCP/SCTP/DCCP sockets
To: oss-security@lists.openwall.com

A few CVEs were assigned for similar bugs causing kernel memory
corruption (use-after-free followed by a double-free) in IPv4/IPv6
TCP/SCTP/DCCP sockets. The details are below.

The bugs were found with syzkaller.

* CVE-2017-8890

The inet_csk_clone_lock function in net/ipv4/inet_connection_sock.c in
the Linux kernel through 4.10.15 allows attackers to cause a denial of
service (double free) or possibly have unspecified other impact by
leveraging use of the accept system call.

CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-8890
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=657831ffc38e30092a2d5f03d385d710eb88b09a

* CVE-2017-9075

The sctp_v6_create_accept_sk function in net/sctp/ipv6.c in the Linux
kernel through 4.11.1 mishandles inheritance, which allows local users
to cause a denial of service or possibly have unspecified other impact
via crafted system calls, a related issue to CVE-2017-8890.

CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-9075
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=fdcee2cbb8438702ea1b328fb6e0ac5e9a40c7f8

* CVE-2017-9076

The dccp_v6_request_recv_sock function in net/dccp/ipv6.c in the Linux
kernel through 4.11.1 mishandles inheritance, which allows local users
to cause a denial of service or possibly have unspecified other impact
via crafted system calls, a related issue to CVE-2017-8890.

CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-9076
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=83eaddab4378db256d00d295bda6ca997cd13a52

* CVE-2017-9077

The tcp_v6_syn_recv_sock function in net/ipv6/tcp_ipv6.c in the Linux
kernel through 4.11.1 mishandles inheritance, which allows local users
to cause a denial of service or possibly have unspecified other impact
via crafted system calls, a related issue to CVE-2017-8890.

CVE: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-9077
Fix: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=83eaddab4378db256d00d295bda6ca997cd13a52
