X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1688" "Tuesday" "19" "October" "2021" "23:21:52" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "51" "[oss-security] Linux kernel: isdn: cpai: array-index-out-of-bounds in detach_capi_ctr in drivers/isdn/capi/kcapi.c" nil nil nil "10" nil nil (number mark "U       butterflyhua Oct 19   51/1688  " thread-indent "\"[oss-security] Linux kernel: isdn: cpai: array-index-out-of-bounds in detach_capi_ctr in drivers/isdn/capi/kcapi.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: isdn: cpai: array-index-out-of-bounds in detach_capi_ctr in drivers/isdn/capi/kcapi.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21543 invoked by uid 550); 19 Oct 2021 15:30:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16139 invoked from network); 19 Oct 2021 15:22:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=8mIv2Z3sO5RaCA7Go1jxwLsZsGk1qBmm7S8i4rTMFBY=;
        b=AP5Ibqkx+jrdRGkTYke04SQYafM2z4l1gV6MJWyGwB39R7lkDhmZ/hSUG5RTM+3CHj
         LCdqtW5gwsPQledqGCSE1lZUPYxqFmD4vpvVO3VHVBEM5mSAdNdc3N/DicthTLcoz/5I
         PdC8bBdVpoHV2FtsQKCE6R0I29BY4GvNPuUFJJnryZ4PMRo870stvM4cBexsu/xw4ehk
         zWcwNSq70PeNBNDg8bQ7N99OgDCl1rP4SyvYyKwdRIULS6PVyzwWibPxPuf3f/Su9HXf
         ZbZHr0hYtJTbEVH0O44FiDZZpJpAh4NrjnfG/WkxTzcltpzC4/IG1GXYUNFCeZhCGT7U
         LaqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8mIv2Z3sO5RaCA7Go1jxwLsZsGk1qBmm7S8i4rTMFBY=;
        b=zwhsiQwdsDxIdUjZZkkoGP9kovZwki21AHWpVXmrZTCDlD0M3xXKcT57WgKPt//Pz/
         AO1sGgvv+NMh7F3ILqK2kD004rOYzIRpJg6VvSXU8NBudwDiAYkiakwXA6FJbjaWPllp
         Raju2E0uJwJKyVbsG2ki7S7mNK3mlaCwlfUbGI6S6NmguS3UKabOs3YrxJIQqdHKzK3q
         7qqQEvmDPwFe0mDYcEjI+/a+bG+lJLJmYUpcSkiatBUDBqcx2XYTeGwrXnsc9ZWQsacM
         JCACQkPvAPbkiU/4OqQWeDE+7v36RWTOHpXPr4dBqkuCUS7v0uQgAX9A5dAMVUUazrMc
         8TcA==
X-Gm-Message-State: AOAM532eGT4u9rl6xtS89z0kEujdbRcLKleZKlkNVOpWJzgHmxVW2mUI
	Ge1h9FWDDxrtBAYHt8mechY3n/+LceWqV2x1GqdWQwBfkIAVfQ==
X-Google-Smtp-Source: ABdhPJwJ1+ZvVygOYw2Hur2SLcnitZkWfOL0tRu5kBqnALkK6sxErNgJ9+ob55w4y84294Y/P7ewHHoni3Q9NhsycH0=
X-Received: by 2002:a25:1d8a:: with SMTP id d132mr34075281ybd.56.1634656922582;
 Tue, 19 Oct 2021 08:22:02 -0700 (PDT)
MIME-Version: 1.0
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Tue, 19 Oct 2021 23:21:52 +0800
Message-ID: <CAFcO6XNFySfp80uRssnz5jhgndpCvmgNbSE88ttMhXdZzqcfhw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Linux kernel: isdn: cpai: array-index-out-of-bounds in
 detach_capi_ctr in drivers/isdn/capi/kcapi.c

Hi, there is an array-index-out-bounds bug in detach_capi_ctr in
drivers/isdn/capi/kcapi.c and I reproduce it on 5.15.0-rc2+.

#Root Cause
we can call CMTPCONNADD ioctl and it would invoke
do_cmtp_sock_ioctl(), it would call cmtp_add_connection().
The chain of call is as follows.
ioctl(CMTPCONNADD)
   ->cmtp_sock_ioctl()
         -->do_cmtp_sock_ioctl()
            --->cmtp_add_connection()
                ---->kthread_run()
                ---->cmtp_attach_device()
the function would add a cmtp session to a controller.

The cmtp_add_connection() would add a cmtp session to a controller
and run a kernel thread to process cmtp.

        __module_get(THIS_MODULE);
        session->task = kthread_run(cmtp_session, session, "kcmtpd_ctr_%d",
                                                                session->num);

During this process, the kernel thread would call detach_capi_ctr()
to detach a register controller. if the controller
was not attached yet, detach_capi_ctr() would
trigger an array-index-out-bounds bug.


#analyze
https://lore.kernel.org/netdev/CAFcO6XOvGQrRTaTkaJ0p3zR7y7nrAWD79r48=L_BbOyrK9X-vA@mail.gmail.com/

#patch
The patch is available upstream now.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1f3e2e97c003f80c4b087092b225c8787ff91e4d

#Timeline
*2021/9/24 - Vulnerability reported to netdev@vger.kernel.org.
*2021/9/24 - Vulnerability confirmed.
*2021/10/8 - Vulnerability patched.
*2021/10/9 - Vulnerability reported to secalert@redhat.com and confirmed
*2021/10/19 - Opened on oss-security@lists.openwall.com.

#Credit
Active Defense Lab of Venustech.


Regards,
 butt3rflyh4ck.

--
Active Defense Lab of Venustech
