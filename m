X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/01/15/8
Message-ID: <CAHmME9p_NYhaR2Oa_3kOwPCnTFsAHZWa_Q2vYXDXLAuf0C7a5A@mail.gmail.com>
Date: Fri, 15 Jan 2016 16:56:13 +0100
From: "Jason A. Donenfeld" <Jason@...c4.com>
To: oss-security <oss-security@...ts.openwall.com>,  Qualys Security Advisory <qsa@...lys.com>
Subject: Re: Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778
Content-Type: text/plain; charset=utf-8

Great work Qualys. One question about the PoC:

On Thu, Jan 14, 2016 at 6:13 PM, Qualys Security Advisory
<qsa@...lys.com> wrote:
> # env ROAMING="heap_massaging:linux" "`pwd`"/sshd -o ListenAddress=127.0.0.1:222 -o
> UsePrivilegeSeparation=no -f /etc/ssh/sshd_config -h /etc/ssh/ssh_host_rsa_key

Does your proof of concept patch actually include support for this
heap_massaging mode?

Thanks,
Jason
