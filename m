X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1659" "Thursday" "26" "August" "2021" "17:36:02" "+0800" "butt3rflyh4ck" "butterflyhuangxx@gmail.com" nil "57" "Re: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c" nil nil nil "8" nil nil (number mark "U       butterflyhua Aug 26   57/1659  " thread-indent "\"Re: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug in btrfs_rm_device in fs/btrfs/volumes.c" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26033 invoked by uid 550); 26 Aug 2021 09:44:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21561 invoked from network); 26 Aug 2021 09:36:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=6guOID6CeHEHkB2/3uRpvYh8ivxo36dVNf8Sch4v5PM=;
        b=b1r0ffQLRy0ZVGoURCyilcMIFyDsTnaGdYNZySAIJ9BiRG2HMCaVuBipdABVjX9BTt
         WbYofJVBUFL9hUV8XhNRqW4poLBcO/dHIsJ+c5xlHOpXdROgnKyVDu3mQuZdiP/d2iXJ
         vbjamXWIaHZpcuIkLS8wJydFzdIy8Be5jaYg4a8/+j/u1tCo9PVQXtnMhFuj+3I27dOM
         3vFhwHYF1QAnreZ4INvrS8w4HiBY2YPqtRgDV3VMT3WYaOB2L5jcHgp0rfK8bThu+GLl
         y5PUwiZLBRNO/a4zNLv89C1vfae2JhZHfRCKAlztWpcFusiWus9M+fO9PKaMo0TPlnnV
         93HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=6guOID6CeHEHkB2/3uRpvYh8ivxo36dVNf8Sch4v5PM=;
        b=QOoWPZn0/ePVxFNxsgl/Uut/aUPdwMgVpR2TdT7RBj1mc995LwizWxPE0bNN5Anp7q
         nZeghE3LgkPoX9iE06daROdtjvwE711WH5Pjz1dLruBnfJjLKtwoO6In96NbLEYXe72o
         j31vuaEaVAFEPKX+qmioG0kTU4maf57jT6dpWnahvXCl7qcQyRxW0rVO9KErlQDgV3ap
         8Grn9R61n3z0SCvnWCTIz7/raQQFL2txrXIsdohKquvyIn4cQO53uob/uIt1CciKTymS
         tTRPaUBKguUFNrfW2XPyQVy/A+Yf59nA9+ii/CkEabcb2qOKPFglVH5KIDbUDRltWUm5
         tYMw==
X-Gm-Message-State: AOAM533Igh0iU7B8+HqUVyvhNC9Qf45/aYUTHz5K7Syyyze9s+DJp/oD
	9AsbFnNW1U3dsxHdMDhvdtrNj3/2Yo3k5Q1oCVEuEJLN8+EKDw==
X-Google-Smtp-Source: ABdhPJyYZE4RgojdvQ6q8pBZ8FkqTxn6yRGtPOq/LWFwUg1D7nk5vT8m8EfV4Rq7A/rpAk28kJpbz7HRJ4l+jnHukHg=
X-Received: by 2002:a25:a241:: with SMTP id b59mr3947020ybi.522.1629970572105;
 Thu, 26 Aug 2021 02:36:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAFcO6XP=t-BCX=NP=B6qH5WVQ1jc=pOS24d0d=6MS2dm66A_mQ@mail.gmail.com>
In-Reply-To: <CAFcO6XP=t-BCX=NP=B6qH5WVQ1jc=pOS24d0d=6MS2dm66A_mQ@mail.gmail.com>
From: butt3rflyh4ck <butterflyhuangxx@gmail.com>
Date: Thu, 26 Aug 2021 17:36:02 +0800
Message-ID: <CAFcO6XNHPFyFvFUJhPVQ+YHLZw=fnxGoig+ZjWjv7rXZcxmX2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Linux kernel: fs/btrfs: null-ptr-dereference bug
 in btrfs_rm_device in fs/btrfs/volumes.c

Hi, RedHat has assigned  CVE-2021-3739   to this issue.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-3739.

Please track the below link for more information.
https://bugzilla.redhat.com/show_bug.cgi?id=3D1997958

Regards,
  butt3rflyh4ck.



On Wed, Aug 25, 2021 at 10:49 AM butt3rflyh4ck
<butterflyhuangxx@gmail.com> wrote:
>
> Hello, there is a null pointer dereference bug in the btrfs_rm_device
> function in fs/btrfs/volumes.c in linux-5.14.0-rc4+ and reproduce too.
> Fortunately, triggering the bug requires =E2=80=98CAP_SYS_ADMIN=E2=80=99.
>
> #Root Cause
> When a user invokes a BTRFS_IOC_RM_DEV_V2 ioctl to remove a non-exist
> volume device,
> it would call btrfs_ioctl_rm_dev_v2 function to implement. And
> btrfs_ioctl_rm_dev_v2 would call btrfs_rm_device,
> if the id of the volume device is illegal, it would trigger a
> null-ptr-deref bug to cause DoS.
>
> # Analyse
> https://lore.kernel.org/linux-btrfs/CAFcO6XO5TC5sEo-C9JGC75JkNAzkOSSLA3a=
=3DbwQqXFFbRTZ7Gw@mail.gmail.com/T/#md4b850f33616b7364f86e6fed144abc925f366=
9c
>
> #Fix
> the patch for this issue, not available upstream now.
> https://lore.kernel.org/linux-btrfs/20210806102415.304717-1-wqu@suse.com/=
T/#u
>
>
> #Timeline
> *2021/8/6 - Vulnerability reported to maintainer and CC to
> linux-btrfs@vger.kernel.org.
> *2021/8/6 - Vulnerability confirmed and patched.
> *2021/8/10 - Vulnerability reported to secalert@redhat.com.
> *2021/8/25 - Opened on oss-security@lists.openwall.com.
>
> #Credit
> the issue is reported by Active Defense Lab of Venustech.
>
> Regards,
>  butt3rflyh4ck.
> --
> Active Defense Lab of Venustech



--
Active Defense Lab of Venustech
