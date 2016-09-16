X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["832" "Saturday" "17" "September" "2016" "03:00:10" "+0800" "Marco Grassi" "marco.gra@gmail.com" "<CAFkTri+FwSj8n_sMckcY1PZLjAjcaizLmeDiJsRFmcZiDKjD9w@mail.gmail.com>" "33" "[oss-security] linux kernel SCSI arcmsr driver: buffer overflow in arcmsr_iop_message_xfer()" nil nil nil "9" "2016091619:00:10" "[oss-security] linux kernel SCSI arcmsr driver: buffer overflow in arcmsr_iop_message_xfer()" (number mark "U       marco.gra@gm Sep 17   33/832   " thread-indent "\"[oss-security] linux kernel SCSI arcmsr driver: buffer overflow in arcmsr_iop_message_xfer()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1513 invoked by uid 550); 16 Sep 2016 19:00:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1451 invoked from network); 16 Sep 2016 19:00:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=x67WpV2yAJ9qIH756NPefaZSoaWqlQDCK86HSC67Phs=;
        b=Vl6TNcQ04adi8C0CDXXJStxCG67Jk/+oLEyzh4vMNtNDw86lZOoXag0PAmrH7JlIRP
         sSfnhC91iNUUVdNZ0dwOViL2Fj+3QWBoHZv6SgV+vuvfOqALdY/PFOk8ycZOP0mus0rZ
         ZNdS7VM8roYzFjqD5VA6Olms49SxBXWL8x6aeFry9XQFjPS8frEXlP5GxLAEYVhSVS8Y
         i/jAzbLkLOkAKxX7CsLxFqrH8Js9SdFW7mDjaNX8EA2XsP+4a/ny3kiAIVVFKqcukGyr
         QGuOFkzStDNBWFrXpk3XKz4grKIeCMhZJLBZr/s8EGQPgPymheIv63KV46RvpKl2+MdE
         W6dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=x67WpV2yAJ9qIH756NPefaZSoaWqlQDCK86HSC67Phs=;
        b=YVzNz6hvG5vNv8jrMtc3mgwe590/wCkg7ZOU0DrNB1G1mBENZkyUqlLyDMd92GYfBO
         lGE/4DsgNt9XWsvHA/9P4SQP9Wqp9puSUoZ792ikC6AS4oHGmAtWrDEsiaurcV2h9DQT
         Yr1188Zm75WU68ddp5rvK7XF8roielhJQjQSmvaCc/uUxq/kNCuhm9/d2BViScB6WCC/
         C54xVeJDlTj1wkWqhgBYBfNt+VpXzEbQVCRog7CUAfn45at/fWWpWnq9xzok+iwuMu3r
         /YWJPt861gPnHNyNN4HTGmcBO2EYM0YMOwHkrQSPV/mKdVNoeV+0uXOOeXL2A64PF99z
         p0YQ==
X-Gm-Message-State: AE9vXwN8pd7ro4XWcA28uHxlwEYT+QTAsqTAJDZzyQQHekQvYdeqZrhphatsVfLFGPOOG0KNFjrCR3NRHIrRsw==
X-Received: by 10.36.107.211 with SMTP id v202mr7573078itc.51.1474052411216;
 Fri, 16 Sep 2016 12:00:11 -0700 (PDT)
MIME-Version: 1.0
From: Marco Grassi <marco.gra@gmail.com>
Date: Sat, 17 Sep 2016 03:00:10 +0800
Message-ID: <CAFkTri+FwSj8n_sMckcY1PZLjAjcaizLmeDiJsRFmcZiDKjD9w@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] linux kernel SCSI arcmsr driver: buffer overflow in arcmsr_iop_message_xfer()

Hello,

inspecting this code you can notice that:

http://lxr.free-electrons.com/source/drivers/scsi/arcmsr/arcmsr_hba.c#L2399

the int32_t user_len is taken from the scsi command

user_len = pcmdmessagefld->cmdmessage.Length;

and used directly without sanitization in a memcpy to a heap buffer of
fixed size 1032

memcpy(ptmpuserbuffer, pcmdmessagefld->messagedatabuffer, user_len);

potentially causing kernel heap corruption and arbitrary kernel code execution.


The issue has been already acknowledged and patched in a development
branch, the patch is here:

http://marc.info/?l=linux-scsi&m=147394713328707&w=2

this patch have been applied to a 4.9 scsi branch here
(4.9/scsi-queue), and at some point it will land in master

http://marc.info/?l=linux-scsi&m=147394796228991&w=2

Thanks

Marco

https://marcograss.github.io
