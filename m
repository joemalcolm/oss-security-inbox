X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["995" "Friday" "22" "June" "2018" "09:32:43" "-0400" "Vladis Dronov" "vdronov@redhat.com" "<460649570.45004048.1529674363441.JavaMail.zimbra@redhat.com>" "27" "Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl" "^Cc:" nil nil "6" "2018062213:32:43" "[oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl" (number mark "        vdronov@redh Jun 22   27/995   " thread-indent "\"Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl\"\n") "<CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>" ("<CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1490 invoked by uid 550); 22 Jun 2018 13:32:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1460 invoked from network); 22 Jun 2018 13:32:55 -0000
Message-ID: <460649570.45004048.1529674363441.JavaMail.zimbra@redhat.com>
In-Reply-To: <CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>
References: <CAG_fn=VEy8E4C4gTC2wZ-FSma5Lh5c5mtxTmhfdFKN_TSjvggQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.40.5.34, 10.4.195.3]
Thread-Topic: CVE-2018-1000204: Linux kernel 3.18 to 4.16 infoleak due to incorrect handling of SG_IO ioctl
Thread-Index: o/j0o/cNxNY+ZIM8aq7K92qdz0OK8g==
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Fri, 22 Jun 2018 13:32:43 +0000 (UTC)
Cc: oss-security@lists.openwall.com
Date: Fri, 22 Jun 2018 09:32:43 -0400 (EDT)
From: Vladis Dronov <vdronov@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-1000204: Linux kernel 3.18 to 4.16
 infoleak due to incorrect handling of SG_IO ioctl
To: Alexander Potapenko <glider@google.com>

Hello, Alexander,

Could you please, explain, why do you think CVE-2018-1000204 is a security
flaw?

> The problem has limited scope, as users don't usually have permissions
> to access SCSI devices. On the other hand, e.g. the Nero user manual
> suggests doing `chmod o+r+w /dev/sg*` to make the devices accessible.

There is a check in the kernel in sg_build_indirect() exactly for this
situation:

        [drivers/scsi/sg.c]
        if (!capable(CAP_SYS_ADMIN) || !capable(CAP_SYS_RAWIO))
                gfp_mask |= __GFP_ZERO;

This means non-root user will get zero-ed pages even if it has o+rw access
to /dev/sg*. Tests of your reproducer on systems available to me confirm
this, i.e. non-root user gets a zero-ed out buffer even if it is able to
access /dev/sg*.

I may not got smth correctly, but for now I do not see CVE-2018-1000204
as a security flaw and I believe a reject request to MITRE should be
issued.

Best regards,
Vladis Dronov | Red Hat, Inc. | Product Security Engineer
