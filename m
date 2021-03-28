X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1211" "Sunday" "28" "March" "2021" "11:47:22" "+0800" "- Nop" "nopitydays@gmail.com" nil "37" "[oss-security] Linux Kernel: out of bounds array access in dm-ioctl.c" nil nil nil "3" nil nil (number mark "U       nopitydays@g Mar 28   37/1211  " thread-indent "\"[oss-security] Linux Kernel: out of bounds array access in dm-ioctl.c\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux Kernel: out of bounds array access in dm-ioctl.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21534 invoked by uid 550); 28 Mar 2021 03:51:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19759 invoked from network); 28 Mar 2021 03:47:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=sTNkNFS+5TJzu1iEJjlb9bdWk+2emq9Fi4CgIsrzj/8=;
        b=PqqYr23rV2MptoB6QWqZzAItb9u4MIHpCcH/v+fM4vxBYXDxPSY4yzyccmJRcDAzus
         EspiXtU2G+HPlXgcoQIjBdTm2njPG4MhaKZp5yMR6bpJA6mvUFeA5KBIwWAYvHIIxaa9
         nSYsA/YMhgF+wYHWUUcedrg+bO3CkZUvhDjdYyh4FujFq21lozKGj28KmcDtBb9aWa2f
         pBFaBg2zXeuh6fDFU4SUlrbwhZrWy8oOb9Ex0dX6J0RvgTP5stz/VvJn1Ht9fyQ5Lqdy
         gyEsp+84pYsQG4WptJunmH7aCdppoVbo108xqrNTRo5vWdpp4MRY3sws8vlpSWhDTjm3
         DNrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sTNkNFS+5TJzu1iEJjlb9bdWk+2emq9Fi4CgIsrzj/8=;
        b=ZrNWGy8ulY30nXDE+tbI0E/3weiPIa7iDC9OvEI7L1fIAusKz/Ao4CgRRLym7dVi0i
         VjH4EdKUJsuXDj12s4wHQ7RINRYGnNTTL8xykwGQSy7keZlpkDWCoppc7yA6R9rSzJLE
         z0GVDRS3IbjvsSdy4CyQyox4Ccf12VUeszBrOtJq/IQFHPjwkh7zt7bNui3Lef0ak1lk
         AXy3KpV0/uIMft5NptOYX5s4dCk78kuj0LUnI/32Cua0hHUqxwpd7lA3jDN60EtbRrT4
         EPu4ev18vu4bvadYWOrERRLuN8MD2u3iUCn27NCSpk5H82XMpvR7UpBdvgsHYEf101/z
         UDdA==
X-Gm-Message-State: AOAM532O3YivHO0M0ImNknQIITup+BEFACo4MoSzGi9gl0nOeAr6rCFv
	8n7gHWT+XhhZr7rsmFMLNW1CNI9E5sfTFn8UV8z6v8iMJPGLgw==
X-Google-Smtp-Source: ABdhPJxBT/sksY+BFK6uOZSPHPhBpeT92W2Teh+5CZux5zDbdnnLbiNB5VKeg3FTNkLf1tsHxyVlXFv/AodTiyubcsg=
X-Received: by 2002:adf:ee4f:: with SMTP id w15mr22160867wro.199.1616903253777;
 Sat, 27 Mar 2021 20:47:33 -0700 (PDT)
MIME-Version: 1.0
From: - Nop <nopitydays@gmail.com>
Date: Sun, 28 Mar 2021 11:47:22 +0800
Message-ID: <CA+-U7QC-zxn_XYLJifSm=cDmsW0_Rs+juQuoCUTw1+TQmdfpGg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000013df4205be90a0ee"
Subject: [oss-security] Linux Kernel: out of bounds array access in dm-ioctl.c

--00000000000013df4205be90a0ee
Content-Type: text/plain; charset="UTF-8"

Hi,

We found an out of bounds array accessing bug in drivers/md/dm-ioctl.c, and
reproduced it in the latest kernel (v5.11.10).

The root cause of this BUG is :

The field "data_size" in function ctl_ioctl is fully controlled by users
and this argument controls the size of kvmalloc in function copy_params.

When the data_size is in a range of [0x131,0x138], the allocated memory
which is pointed by the variable "param" used in ioctl
"DM_LIST_DEVICES_CMD" is too small, causing an oob bug at line "nl->dev =
0; /* Flags no data */" (
https://github.com/torvalds/linux/blob/0d02ec6b3136c73c09e7859f0d0e4e2c4c07b49b/drivers/md/dm-ioctl.c#L538
)

Attachments are the poc, kernel config and Kernel report.

The patch:
https://github.com/torvalds/linux/commit/4edbe1d7bcffcd6269f3b5eb63f710393ff2ec7a
     * Grab our output buffer.
     */
     nl = orig_nl = get_result_buffer(param, param_size, &len);
-    if (len < needed) {
+    if (len < needed || len < sizeof(nl->dev)) {
         param->flags |= DM_BUFFER_FULL_FLAG;
         goto out;
     }

Regards,
Bodong Zhao of NISL lab, Tsinghua University

--00000000000013df4205be90a0ee--
