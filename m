Received: (qmail 14057 invoked by uid 550); 11 Apr 2026 01:11:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32568 invoked from network); 10 Apr 2026 23:05:38 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1775862329; cv=none;
        d=google.com; s=arc-20240605;
        b=YgauJJTJcloQNWERMbkuU9sTVMN0/XkVTSQmCkOCRnhqTqKR1RsRAvMGnpvh7pBZpU
         FrvMSJhzAhu5C/XQx0ZpkDznrxx+OUDtSXiQM2hod2U31TBx33MysP5faAx31yF4JBGo
         hWojFuwFQhtfk8nf18/vvarC9mZy0p9twgTGO5NbY6Yt0eAAZdS2zo4RDGiu3AHwft5D
         o168iMbQwoWqEQXeN/vbK0QqjnH3BHvrWfNPg2s7ZAxhRuFmIfQlmb9DkjP8eQoZGHL8
         AaFnq5NuC0Cny3cxB4M6UTx0/KplHPqaq0mDeDYbHUfIfl6/qxpIESagjy85VDrZ2JhV
         TakQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=CTXffv+DGVK539OHo+Dxw+FapmD1gNQumMUllFAHsYg=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=Ff2LCYEUcptuI7FTGzzf9MWIMD2/5CuD3fDxXIfPEy9lJpaprYA7yrmLKfqTue9gN/
         eqACmG++m7uVWQvE/CRBRaypisukFNqqIlu/iKGnOLVgdee9BDW+fffXYOiT0Z+TOBFo
         vdhQlewtOawL/RMVgPymroSrZtM9X+nAvL+txUVW6eUajAbHcskjUaPfN2LO1Qo4i7Ae
         kOeAZMG59pPvw3R6kyEYd7EA67zfblwcJHYjcEwR8ezCLE+veeFJEKwN/ZfspkFl21i1
         UYSUv/KgU7lfb150cnvKubcwfVNeL7RQ3kbkOG19pIjjxQDMilzbTZW07PIurY93oglu
         WytA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775862329; x=1776467129; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CTXffv+DGVK539OHo+Dxw+FapmD1gNQumMUllFAHsYg=;
        b=Y/XmNfHJjO7hCzE11T7sHQVsGEYUBX+NlSFxmaOHeIS/ikXPNrZXLYB3ZS5aXMdxQd
         XYqqdivKAdj+Lfoykv2Hm5I1XPrGrmHGhCPzR9PzTxITfB6JURb6pT/DoaWkiIqaBpJW
         48nFFdwtnWOHq/MvSCENZjYlg6KVstSCMUGiOZaKGDiSMoQQJEi6CIL+yExQuWOE+X5i
         /eTyYXzvMskgBOLpFUS26BB4orKf3yQMdJfcfqrkkHFtb59Ou+oIFzT/eoSiBNTCX5aP
         cUXhbyogPnqhkTc2dgRvdSyIRIcnDMWnpG9UFdxfYybN3PXh/F7BvH7sGyGfk4g142Cs
         WTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775862329; x=1776467129;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CTXffv+DGVK539OHo+Dxw+FapmD1gNQumMUllFAHsYg=;
        b=KJ7IsDeB5Y+REgUDlmF6DBFUhmEkFg/5J3O+tdY0Iz/fE7r9WYeXXV1pPsV52onH88
         0GmdDAiJjj4/E8FYhrijC18waoT6iluYv4J3MUWvvj13yVrkxVRjPdG+EyPlF3g61piL
         b7bbAdkKx6WwSbAeuUiK5Xyph6/CvGUeL9g21CVkXLpZVsDCBDvYLsizQ5ANrStNffYw
         Q1ll0bBFRzOlk52FidV/DTKklgLnBPoE2XFI3OtHH69ccRtIr0YcBO3kr9cC+ZgC1WCF
         Xtr3ji+07xV+JMD6jNcOmUSTkXGw/dWaMsJA2cCmfMfgOXz7iSJCqpsYDUWxYN8KltOb
         N5bw==
X-Gm-Message-State: AOJu0Yyi4zhg0LXiFxcVZyRDwClpNYPw/aJfb1upGel+SXRO22xfm3SE
	iQ5ZN0dTcD/OG4VDtkMqCMZd9aA0V+K8xSVgSPx1m/WeDdnq7HPxUqGs+YhE8vTwu7F2BChBSqx
	ZU8YhttxHKcLd0oFvvmH2/iHtUj5xcYgTtN8xUJ1iBA==
X-Gm-Gg: AeBDietLTjXjsIGDZFG/FB24wghcgD+um+oghVc6KnJQBqIgZxnSE1ClQ3s6ieYcOUn
	6IMUqr+iw57Sb6XhGUUQYG1jZSnVlMy4n++QZJg670AsjiDF26G/jh5IIzjdBBZ3w1YyTm5HEEB
	kRZxdo4wKJNepe7Muxl9D9497VcftB278V4g47eDK0ox8ynHuWi6Zr7eTNXDneD6SJtVBDBi59U
	2FSKG/8pwUbKli6wY5M/b742HffEPx3oZWpTk32VNERkl9+OKQvFGBrrwA58vTqznmBZBSUIXdh
	j6WyuewShA==
X-Received: by 2002:a05:6820:61d:b0:689:5094:a2d7 with SMTP id
 006d021491bc7-68a6a5b9d3fmr4363126eaf.22.1775862329089; Fri, 10 Apr 2026
 16:05:29 -0700 (PDT)
MIME-Version: 1.0
From: Vinayak Goyal <vinayakankugoyal@gmail.com>
Date: Fri, 10 Apr 2026 19:05:17 -0400
X-Gm-Features: AQROBzAoZkY6CE3c_2VntsyBBBDZY5Jdm5ZrYalhaomCG4rf88b-SF2vmN870cI
Message-ID: <CAH02z484+in9inWQ0KEcDoij9KK5=Q5Q1gcJx0TP7GDLn9F4Bw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004ba428064f232b0f"
Subject: [oss-security] [kubernetes] CVE-2026-3865: CSI Driver for SMB path traversal via
 subDir may delete unintended directories on the SMB server

--0000000000004ba428064f232b0f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,


A vulnerability was identified in the Kubernetes CSI Driver for SMB where
insufficient validation of the subDir parameter in volume identifiers could
allow path traversal. A malicious user with the ability to create a
PersistentVolume referencing the SMB CSI driver could craft a volumeHandle
containing traversal sequences (for example ../). When the driver performs
cleanup operations during volume deletion, these sequences may cause the
driver to operate on unintended directories on the SMB server.


An attacker exploiting this flaw could cause deletion or modification of
directories outside the intended managed subdirectory within the SMB export.


This issue has been rated Medium (6.5) with
CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:H/A:H
<https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U=
/C:N/I:H/A:H>
and assigned CVE-2026-3865.



Am I vulnerable?


You may be vulnerable if:

   -

   You run the CSI Driver for SMB (smb.csi.k8s.io)
   -

   Your cluster allows users to create PersistentVolumes referencing the
   SMB CSI driver
   -

   Your CSI driver version does not validate traversal sequences in the
   subDir field


Affected Versions

   -

   All versions of the CSI Driver for SMB prior to the v1.20.1 release
   containing the fix for traversal validation are affected.

How do I mitigate this vulnerability?


This issue can be mitigated by:

   -

   Upgrading the CSI Driver for SMB to a patched version
   -

   Restricting PersistentVolume creation privileges to trusted
   administrators
   -

   Reviewing SMB exports to ensure only intended directories are writable
   by the driver


As a best practice, untrusted users should not be granted permission to
create arbitrary PersistentVolumes referencing external storage drivers.

Fixed Versions

   -

   CSI Driver for SMB versions >=3D v1.20.1

Detection

To determine if your cluster may be affected:

   -

   Inspect PersistentVolumes using the SMB CSI driver and review the
   volumeHandle field.
   -

   Look for traversal sequences such as: `../`
   -

   Review CSI controller logs for unexpected directory operations. e.g.
   =E2=80=9CRemoving subPath: /tmp/mount-uuid/legitimate/../../../exports/s=
ubdir=E2=80=9D


If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/138319


Acknowledgements


This vulnerability was reported by @Shaul Ben Hai, Senior Staff Security
Researcher from SentinelOne.


The issue was fixed by the CSI Driver for SMB maintainers and the
Kubernetes Security Response Committee.


Andy Zhang @andyzhangx

Vinayak Goyal @vinayakankugoyal


Thank You,

Vinayak Goyal on behalf of the Kubernetes Security Response Committee

--0000000000004ba428064f232b0f--
