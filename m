X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2253" "Wednesday" "12" "May" "2021" "06:16:08" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "54" "Re: [oss-security] Linux kernel: net/can/isotp: race condition leads to local privilege escalation" nil nil nil "5" nil nil (number mark "U       carnil@debia May 12   54/2253  " thread-indent "\"Re: [oss-security] Linux kernel: net/can/isotp: race condition leads to local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: net/can/isotp: race condition leads to local privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11627 invoked by uid 550); 12 May 2021 04:16:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11601 invoked from network); 12 May 2021 04:16:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JCncdDjE7Srd7BUCB3CPtEnkitbRPaUmqjcTmdGK2+s=;
        b=aipHKNVyb/XjRKn46VmjkCzFRB+Thi4NQbiuj/K5+hduiPoWM4YPwjPcbDpqgS0zVt
         jaus4A20Am5DwCf+cwp43X5JILZHguFZDjjvYr2e8rpoOEvtPOUYJhb/f7MPFVOd4zAv
         tSO4Ih+xzNKFhLPc/ExIDfa8l4oTaIyEIUfNZdpB9cvUpuboGg6Zum/l82/PmX4fVuyj
         SLTuG4mAcdkiypRZH5p9WIxUgywwytHURcH61exNne2yXxNNghHBPiNSWqcR67qGE0dn
         n4A4tep+UjwTvZaZOTVYUeqybQT2rMg5dALmwRccSLz1x+uPiIO8o8obrdtKVTrXGjph
         2pKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=JCncdDjE7Srd7BUCB3CPtEnkitbRPaUmqjcTmdGK2+s=;
        b=c06xhiJYWFe90y+bKh4efjIrfGwTWwfFbzZqXEULifYA9cJEDczNAu7vWoz++vJUzZ
         unmZH/7AXQgpDQW4D8jCcZ9bihJdCZZDcUAAlsySFNOyVk1XcFkaau5XunZkN0Xrjcoj
         VF3zBRnW4bd5YNKA7iaEgRZdwhBxESewFjnF14gBlcsTPHxXhl+r4mIVB3zzvaQ6sYN9
         iYyDUWNueCPhl0FsxI0N5Cnc1iI3Z7P1L+fF2fMf5QlVrPW6cOsGnKh/orNxdZgcWWin
         Wyc1jD7mq9LEnPCTkhFMpc1awPSqd94ykOgat6jVerPGphaLnC3Cl7LTjFGckp8pLSEt
         gMbg==
X-Gm-Message-State: AOAM5338/Gp5izNzUYs5cXNAyVjOkYeNQLMa4VpN79QX5lt121HzoUga
	1iLXsm2mjd2q0E9KcDfS3QE=
X-Google-Smtp-Source: ABdhPJxON1Uvwty2GZz67IASvmlU0zxVGLrQUop9ggaCt5KNqRk9zVyImtJ4y0WSrtFpcUfe/5T6rQ==
X-Received: by 2002:a1c:750b:: with SMTP id o11mr9186963wmc.188.1620792970259;
        Tue, 11 May 2021 21:16:10 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 12 May 2021 06:16:08 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: netdev@vger.kernel.org, socketcan@hartkopp.net, mkl@pengutronix.de,
	alex.popov@linux.com, linux-can@vger.kernel.org,
	seth.arnold@canonical.com, steve.beattie@canonical.com,
	cascardo@canonical.com
Message-ID: <20210512041608.GA1420@lorien.valinor.li>
References: <trinity-10aeed49-cb96-47d9-818e-b938913e6fce-1620770433273@3c-app-gmx-bap63>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <trinity-10aeed49-cb96-47d9-818e-b938913e6fce-1620770433273@3c-app-gmx-bap63>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Linux kernel: net/can/isotp: race condition leads
 to local privilege escalation

Hi,

On Wed, May 12, 2021 at 12:00:33AM +0200, Norbert Slusarek wrote:
> A race condition in the CAN ISOTP networking protocol was discovered which
> allows forbidden changing of socket members after binding the socket.
> 
> In particular, the lack of locking behavior in isotp_setsockopt() makes it
> feasible to assign the flag CAN_ISOTP_SF_BROADCAST to the socket, despite having
> previously registered a can receiver. After closing the isotp socket, the can
> receiver will still be registered and use-after-free's can be triggered in
> isotp_rcv() on the freed isotp_sock structure.
> This leads to arbitrary kernel execution by overwriting the sk_error_report()
> pointer, which can be misused in order to execute a user-controlled ROP chain to
> gain root privileges.
> 
> The vulnerability was introduced with the introduction of SF_BROADCAST support
> in commit 921ca574cd38 ("can: isotp: add SF_BROADCAST support for functional
> addressing") in 5.11-rc1.
> In fact, commit 323a391a220c ("can: isotp: isotp_setsockopt():
> block setsockopt on bound sockets") did not effectively prevent isotp_setsockopt()
> from modifying socket members before isotp_bind().
> 
> The requested CVE ID will be revealed along with further exploitation details
> as a response to this notice on 13th May of 2021.
> 
> Credits: Norbert Slusarek
> 
> *** exploit log ***
> 
> Adjusted to work with openSUSE Tumbleweed.
> 
> noprivs@suse:~/expl> uname -a
> Linux suse 5.12.0-1-default #1 SMP Mon Apr 26 04:25:46 UTC 2021 (5d43652) x86_64 x86_64 x86_64 GNU/Linux
> noprivs@suse:~/expl> ./lpe
> [+] entering setsockopt
> [+] entering bind
> [+] left bind with ret = 0
> [+] left setsockopt with flags = 838
> [+] race condition hit, closing and spraying socket
> [+] sending msg to run softirq with isotp_rcv()
> [+] check sudo su for root rights
> noprivs@suse:~/expl> sudo su
> suse:/home/noprivs/expl # id
> uid=0(root) gid=0(root) groups=0(root)
> suse:/home/noprivs/expl # cat /root/check
> high school student living in germany looking for an internship in info sec.
> if interested please reach out to nslusarek@gmx.net.

FTR, this issue has CVE-2021-32606[1] assigned.

 [1]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-32606

Regards,
Salvatore
