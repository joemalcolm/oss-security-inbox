X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/06/01/1
Message-ID: <CAFcO6XOFPEGiO_HwajTB3zA9d3jyhUwDX742huVhaNtQy0=TfQ@mail.gmail.com>
Date: Tue, 1 Jun 2021 15:37:06 +0800
From: butt3rflyh4ck <butterflyhuangxx@...il.com>
To: oss-security@...ts.openwall.com
Subject: Linux kernel: nfc: null ptr dereference in llcp_sock_getname
Content-Type: text/plain; charset=utf-8

 Hi, there was a null pointer dereference in llcp_sock_getname in
net/nfc/llcp_sock.c and reproduced it in linux-5.13.0-rc2. An
unprivileged user can trigger this bug and cause denial of service.

#Root Cause
After creating an nfc socket, bind the address by calling bind(), if
LLCP_SAP_MAX was used as SAP, it cause the bind() failed and there
would set llcp_sock->service_name  as NULL.

Although bind() returns an error here, it does not affect calling
other socket functions. sock_getname() would invoke
llcp_sock_getname(), llcp_sock_getname copied service  name from
llcp_sock->service_name by memcpy but llcp_sock->service_name is NULL.

#Fix
the patch for this issue:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=4ac06a1e013c

#CVE
CVE not assigned.

#Credits
Active Defense Lab of Venustech.



Regards,
   butt3rflyh4ck.

--
Active Defense Lab of Venustech
