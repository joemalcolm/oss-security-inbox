X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1725" "Thursday" "23" "May" "2019" "00:52:17" "+1000" "Wade Mealing" "wmealing@redhat.com" nil "49" nil "^Date:" nil nil "5" nil nil (number mark "U       wmealing@red May 23   49/1725  " thread-indent "\"[oss-security] CVE-2019-10142 linux kernel: integer overflow in ioctl handling of fsl hypervisor\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10142 linux kernel: integer overflow in ioctl handling of fsl hypervisor" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1858 invoked by uid 550); 22 May 2019 14:52:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1840 invoked from network); 22 May 2019 14:52:40 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=QqBzs9zQGHOApRUo/PwVoNG8IgoEqotiOjrg50IrS4o=;
        b=EZlOIIM1FUlylBqCFZwgA4fHtweCltOXZzXMBhafjf0AUPqrDwbrxVEzgijsnQTMOS
         QGJbRgi9HCAXM0C+ce2/U6aKWs8DLVXGE3jw4Y9VMTCqVZZxIG0IkMtyzkv4nKTjc0ue
         Ns5HhbzAUAVKX9+74hjdb3Mh29i9+KVB1GRgJutPOaqW30jAnPCJGnlwpd4F03uZlCBO
         3nvCA5MoUQEoPOeKmfYLVsONLj7n9sqGmD1AEz2OfuLOnxQeKwmtoP4hO8Zm/sF2S55Y
         jndtL9Avh7o8QRJFEABW90AlD90SGs2LTWlcIBml40BKyCXUp/ghmYL0XIW53wrKiNy+
         WqxQ==
X-Gm-Message-State: APjAAAVMSPicAaFVpy6rxLS6rQSYTDvDtZrlZSv7nPUpSgq/UiI+zo8I
	HYC3b8ufMxn+zVD9W4LOZgqMXZlQCns70Ekc6SskQwFUzbI=
X-Google-Smtp-Source: APXvYqz2f6qDQrSRfYUmMhgHAXjEBRjgYqdtEEbH5Kq5E604gPkk7eBQHh6i/xFxnfpx5Eo5GZAGskVkdwOCfO6Qyh4=
X-Received: by 2002:a05:660c:4c2:: with SMTP id v2mr9182189itk.71.1558536748729;
 Wed, 22 May 2019 07:52:28 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhTO3R81kFF4sMdWakQ23E9MfR_JS_dAjXbMLtE1AKZbPg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000472a5b05897b1da3"
Date: Thu, 23 May 2019 00:52:17 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-10142 linux kernel: integer overflow in ioctl handling of
 fsl hypervisor
To: oss-security@lists.openwall.com

--000000000000472a5b05897b1da3
Content-Type: text/plain; charset="UTF-8"

Gday,

>From the upstream git commit:

"The "param.count" value is a u64 that comes from the user. The code later
in the function assumes that param.count is at least one and if it's not
then it leads to an Oops when we dereference the ZERO_SIZE_PTR. Also the
addition can have an integer overflow which would lead us to allocate a
smaller "pages" array than required. I can't immediately tell what the
possible run times implications are, but it's safest to prevent the
overflow."

At this time Red Hat products are not affected this code is not built as
the CONFIG_FSL_HV_MANAGER build option is not enabled by default.    Device
(/dev/fsl-hv) ownership and permissions which prevent unprivileged users
from being able to exploit this without some elevated permissions (I think
this will default to user: root group:root with 0660 mask) however some
Linux distributions may use udev to set this to non root ownership or
another group.   In the default configuration, a user who is sufficiently
privileged to exploit this is likely able to attack the system without it.

I open the discussion and note the CVE listed above for discussions that
may reference this patch and perhaps save someone some time in
investigation.

Red Hat bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2019-10142

Upstream fix:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6a024330650e24556b8a18cc654ad00cfecf6c6c

-- 

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

<https://www.redhat.com>

wmealing@redhat.com
<https://red.ht/sig>
TRIED. TESTED. TRUSTED. <https://redhat.com/trusted>

--000000000000472a5b05897b1da3--
