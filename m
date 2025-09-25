Received: (qmail 30673 invoked by uid 550); 25 Sep 2025 16:45:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28183 invoked from network); 25 Sep 2025 06:38:54 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782323; x=1759387123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y6nN+wZig1GQk2UjoJ1KZP1j1z4fYaXYRwF/RC2MXlM=;
        b=Xcs5nENUjHWTMNF/Q0q3LXdnH4btiOHs5yAhg8q9CYZXlWKERTPFc3orNAZpYhWQSV
         GHfj1Umi36GxSA5KEWow9HaCL+VqRvOp+Kq+T293WmS4uSYrQ/9j+ZzucfBvMcTAT3YB
         JweY4mkrIPsaGAWPDKI5hxg/7Vp872+5jNyP0dHmUGjjG9XgeDSYagZDJ0yRxbNbxBiP
         XJOegWHDVmWXAxQPNT6S/UuKJ9kjiBfiwsI6FrCggN42GTcTxK1BphAIde8zkSQNpN7u
         K4vL9x9TTQscTGNtl119k3RGBqRCr2m48badlOcV+3mMWE5Czi7M0F5eNDLcpdYPIFey
         OyVw==
X-Gm-Message-State: AOJu0Yx4Qomv8ZDgvEaRAYs9D/t62nvWaiWVh6cywjgls70u6EddSokl
	obnuqogcDmmwIqjhNXx41tWTv7LKW1s9gniram5w+nYunVpMbagpU678ZcGUf14zqRczwwR/wi0
	4++6RaRk7k6p6QkmUIytv/Di3MXYaG5v6m950J73jFccIE4v/NTwkf6QC2XEkSuEXWoplxeS+hR
	j4kS9kUsfVllu7Sr0Zb8/9sqQsJeMwymkZ2TM7SOebQgHifO8O4M9rBPz0NB+ofmYcvi/cEJO5/
	0VjI/7b9ZvlYRSuQmbxe6XGnw==
X-Gm-Gg: ASbGncuNKGBm25WwTBIDFC/bKmLTqBjHoRbx576GiURC1M3CLiufHz/i6vPyLzaDyR7
	Uzw1TRaWjfF5hQaD8yQwsHpZEt7KqzaUm1onWxHBwnGwr0eIspVBTx90yVlXMITG1IKzPbhLj6A
	AOi2N+IOapgXfsMHEMYZyDn29BXpYYeorQYb7fEch5L22PhJeMuw/AzbALmaz2k/r6s4jMtq/ez
	lA+/oifJvEF6SYkDqZgPdCeJC5sD+aoRGcFzv2MSYkR67mqyEOm5WUlNoxLsVXAbgmhj4lFAgJ1
	leQOCBy7Q8VUJZqR/oeinitSQ1MGGHv7Y3NG9QaR9L3n+SCZ0iI8c3EqAs5X00EQiIYuXSpA8HL
	yAXHROjT343ya7G9AW8gVy5eNmkv6cr2P9RMZK1Fl9ki01Z4aTpIdPj+MSHNO+xAfst6Gbzp6Kn
	B+Ew==
X-Google-Smtp-Source: AGHT+IH8fIe+JB1a3vdXBAopd1gJs7Bpba7pPv2KxUaEqdrzJMcbO1kpGFCsXC9otBYzu/3gOnF5M9IamUn4
X-Received: by 2002:a17:903:1acf:b0:269:603f:41e2 with SMTP id d9443c01a7336-27ed4a2ee3emr30268105ad.21.1758782322777;
        Wed, 24 Sep 2025 23:38:42 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1758782320; x=1759387120; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y6nN+wZig1GQk2UjoJ1KZP1j1z4fYaXYRwF/RC2MXlM=;
        b=XXLaQztjIeVa9yl2+15UxPDpyjaLRljanqEk7TdRSUVY6HRZYmp7+QL8gMjgwTEX6Z
         8BbWtI2DnEfVEO4dsxLdXPZ355h47cawD6UVnSKvtv5FfxEzVc5SRbbiWkCiLdy2/PS4
         boRwd1eC9NBTWan6ApD5Ag/Gg+92tIoRpKraY=
X-Received: by 2002:a05:6512:2395:b0:57a:a1d:c6b4 with SMTP id 2adb3069b0e04-58305297f45mr426661e87.9.1758782320331;
        Wed, 24 Sep 2025 23:38:40 -0700 (PDT)
X-Received: by 2002:a05:6512:2395:b0:57a:a1d:c6b4 with SMTP id
 2adb3069b0e04-58305297f45mr426657e87.9.1758782319824; Wed, 24 Sep 2025
 23:38:39 -0700 (PDT)
MIME-Version: 1.0
References: <CADOAh9cRx64wR8a7X7918ma_nkYDXzQ8uK6Jsp0q4oe-ECr3Eg@mail.gmail.com>
 <20250513015957.GA29601@openwall.com> <20250924023739.GA21012@openwall.com>
In-Reply-To: <20250924023739.GA21012@openwall.com>
From: VMware PSIRT <vmware.psirt@broadcom.com>
Date: Thu, 25 Sep 2025 12:08:28 +0530
X-Gm-Features: AS18NWAdeb09Bf3XvanjXwU_-FsIE9czgyEv1yfa6zlkFv67yKtTpZ4m-hnBCbM
Message-ID: <CAL2zhBTvrV3kpq9u-RaF87CtsD+SCtERcjNWwah8EW1wNPEwng@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, John Wolfe <john.wolfe@broadcom.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Subject: Re: [oss-security] CVE-2025-22247 - Insecure file handling
 vulnerability in open-vm-tools

Hi Alexander,

We somehow missed your previous e-mail. Thank you for reviving this thread.

Please see our responses below:

> Skimming the code changes, I see that the second part - "disallow
unexpected symlinks in file paths" - is implemented by calling
realpath() (or a Windows function on that platform) and seeing whether
that changed the pathname or (almost) not.  However, this will not
disallow a symlink that appears after the realpath() call but before
subsequent use of the pathname.

Thanks you for raising this. You are right about realpath() and
symlink usage in general. However, as you can see we are performing
realpath() check after we completed the open() but before we read
anything from the file. So, there is no use of pathname after realpath()
call here.


> Is a race condition like this relevant, or is it irrelevant given the
way these tools are normally used?  In other words, is the filesystem
static when this code runs, or is it a live VM where "a malicious actor
with non-administrative privileges" may operate concurrently with this
code running?

As noted, the particular race condition you describe is not a concern.
However, you're correct that the file system may not be static when this
code runs because this code runs in a live VM, so, yes, there may be a
potential for other types of races.  What this fix does is (1) check for
symlinks where previously there was no such check, which helps to avoid
following symlinks when the file system is not changing rapidly and (2)
reduce the window of the vulnerability when the file system is changing rap=
idly.

We would request you to please let us know at vmware.psirt@broadcom.com if
you have further concerns regarding the completeness of the patch. We would
be happy to investigate and provide a resolution.

Thank you again.

Kind Regards,
Praveen Singh | Engineering Program Manager
Email: vmware.psirt@broadcom.com

On Wed, Sep 24, 2025 at 8:09=E2=80=AFAM Solar Designer <solar@openwall.com>=
 wrote:
>
> Hi,
>
> I'm sorry I just let this stay without a follow-up at the time.  I am
> CC'ing John Wolfe now, who authored the patch commit.
>
> I do think the fix was incomplete.  As someone wrote to me off-list at
> the time (didn't want to post publicly, so I post without attribution):
>
> > I let the oher person respond publicly, but the open-vm-tools runs in t=
he VM as
> > a service and communicates with VMware. So it is both risk to the VM it=
self and
> > to the VMware ESXi (or vCenter).
>
> To me, this means that the risk of race conditions applies.
>
> Alexander
>
> On Tue, May 13, 2025 at 03:59:57AM +0200, Solar Designer wrote:
> > Hi,
> >
> > Thank you very much VMware PSIRT for fixing and disclosing this issue.
> >
> > I'm sorry I'm not familiar with open-vm-tools, but I thought we could
> > clarify the below for everyone in here:
> >
> > On Mon, May 12, 2025 at 06:57:46PM +0530, VMware PSIRT wrote:
> > > A malicious actor with non-administrative privileges on a guest VM may
> > > tamper the local files to trigger insecure file operations within tha=
t VM.
> >
> > > https://github.com/vmware/open-vm-tools/tree/CVE-2025-22247.patch
> >
> > The commit message says:
> >
> > > Prevent usage of illegal characters in user names and file paths.
> > > Also, disallow unexpected symlinks in file paths.
> >
> > Skimming the code changes, I see that the second part - "disallow
> > unexpected symlinks in file paths" - is implemented by calling
> > realpath() (or a Windows function on that platform) and seeing whether
> > that changed the pathname or (almost) not.  However, this will not
> > disallow a symlink that appears after the realpath() call but before
> > subsequent use of the pathname.
> >
> > Is a race condition like this relevant, or is it irrelevant given the
> > way these tools are normally used?  In other words, is the filesystem
> > static when this code runs, or is it a live VM where "a malicious actor
> > with non-administrative privileges" may operate concurrently with this
> > code running?
> >
> > Can you please clarify?
> >
> > Thanks again,
> >
> > Alexander
