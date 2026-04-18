Received: (qmail 5961 invoked by uid 550); 18 Apr 2026 17:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3978 invoked from network); 18 Apr 2026 12:14:36 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1776514466; cv=none;
        d=google.com; s=arc-20240605;
        b=UQZ6DfvMe/uMDrUKM3xhrB69fEQtG4j/ZV8jZXbwXjsBZRpAhuMmuHAztrGnZM4F+I
         HMvLZxOcm34V/9jj20gGMHhjT1QcOUu1D3syTL0EcGZm6m/BS5TpzQDpLZHXgEc9A+E9
         W1EdZg+SjKl9o7hwQgO684tpUwM9n7LExmCy4QXXcerWZZ1d2LFtZx8yZ2vyNDRTXQxA
         F1LTk0OHeA7+lsplBvQn7vc4ce5m3AY0Fryny0hmqd05KwuG51bh7KGGYhhy7gHlgwLs
         jJAmXVxiVi7fMdntWxBAx8JZcN6peMt1+lLaIDyNCTA0Jlz0XXNvePXr0AJyodQCfh8l
         jrxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=R8+QSW6HFAZL0QuP3Hm3hXBPteElrn0x3Thwmf2l8Tc=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=cCQqHD2zisj3SXRKSnCpL0UXFpPGHGJnNRCbmc4qgGFn7OOF2w+PFhgSZaIdrXHujG
         1zWzZTJBzgPZyrJcRjoxG1tpczCzlMR1nn1Z78+I3RJOZWD0dDJsKTEB+5UYz5LGm6en
         lFRqEP3TZ0a+RsamjZtgxutOv+jhRg2VykY83WlH+GKfRXljBH4BgC38XT1IuBwgHNsX
         f6CYihYAn8znmR8ga84iycEnFZm2H7qP5hUdi3wyWsrWTaSlm/4YudSahtmAiIT19jZI
         ccJUPD8bFU0wBSvpZOrWOSMM/t1k/t7yao3E93fcy3NucsbwCXrLnJaAQvgkMuGnv955
         5x6Q==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776514466; x=1777119266; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R8+QSW6HFAZL0QuP3Hm3hXBPteElrn0x3Thwmf2l8Tc=;
        b=C//I/7MFOQH78eqYcunN3lW45pIpQ8uFL34JfoyCarsMHglJTB4voldMRFDYamfwbJ
         4PDKm+KPe6jWU5bV9phrkGFYdLeKM+WmSHxl/C3gs3xOT0kdht55tgXkEzZv+X9UCVsQ
         EgNjOfmy7lxVct5D3VK15IMbTggEnul0iII2QBxovT9tEvs91EHfBLGAgt2Iw3fpcDdR
         v+kRYN5qvTrPjFrPyik0N0TuTjsrXJkAmhKPaF3AlByCP9Hwf1WwGjn13F+ka/QzoARf
         BfiuAIsIjOqPOlo1SJXLsyjNaXC69a6QmtdvhAb6blTGegazQEuzgVRFopGC6K05q9VC
         eLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776514466; x=1777119266;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R8+QSW6HFAZL0QuP3Hm3hXBPteElrn0x3Thwmf2l8Tc=;
        b=Ve5tOS4C82xRSpwHI+8Rly/SqX8xmu+/QXlP7rIGb3XX1ryo63kCdx135frnr5AG/1
         WTpgnOgOu8btF1YmnU5Bs5LIwbCjdD1DtMhPngmXD6R6+9x1Txa4zC2HEvuBwGjXmV9U
         P50JrDR3/5ZvYbJ5BLceJgbfYLaDrwhkbj99mp3gp3uL8nOGtGuNRniiwwsrGgTb2Pp5
         WBA/u+XRe0GmZfcn6WdfCzMRR4UCnCXPMe/l+Wqich59KgVOIZRacyevDJPOT58XfbQB
         JwBLylYsSwDPK9RBWj/ZBXHIVgh4/1q7gtpEp7Hr7xdwDpbNx9/VR4CBapcLhJKNU6/P
         0eSQ==
X-Gm-Message-State: AOJu0YzhOElQUVIVGotzZcQ18Fwp4/rj8hnxyRneR6/KzQ+Ybvb33B7y
	f3QmVNK0OEpOk0rpnqUsUTLMbOkvjDvr6o4Am6BVedqoYtMQFnLDh8A2lgii1Om1QooUqpNY3po
	XbAZ5hx9BH9V6QnPF0jEg/J2wj/YMEiwpNWZN
X-Gm-Gg: AeBDiesfiCAMBJdN/PZTko3cQluOtm2lxdHsVO3BE1k6/9TpL4aelWwmacLhCSE+LGP
	IbNC2lPOLB2YGP/+qPk6eZZ3jKhUqIaPGFQ44X6WGqhGl5rBiUTPNTMcC8vfd5BZiiWXnYt6w5U
	+XfxRcsveKDJYTcd8KC1gwTLso4gCbPOPkaSM2y7FWNiaa85XhNDHqE2MwWIH1rsncgH+IfR+Cd
	QcUvnM/QvFRiyqojmBgDWAEI4ykPszUhIeLvTtP4qWYCTdRItqqKUTIx6miygmUprgGd6Eab0OG
	s83snzs2wOcrUw4NzlAQTnX9cY1gzg==
X-Received: by 2002:a05:6512:138c:b0:5a2:a52a:c69e with SMTP id
 2adb3069b0e04-5a4172dc4bbmr1141121e87.4.1776514465926; Sat, 18 Apr 2026
 05:14:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAPmip_xXkz6hjTUUKbaHr1hwq5ROfpNwn5Rq-t9cxMgs6uXhZQ@mail.gmail.com>
 <CAPmip_xVPZ_mFkTUjGd=k_3K222BQxPhySy1ei2VieqBp=pBng@mail.gmail.com> <CAPmip_zm57=Za1HVTM4RMr9xZiS3YNRcYRwXHXwPN3yMRC_eug@mail.gmail.com>
In-Reply-To: <CAPmip_zm57=Za1HVTM4RMr9xZiS3YNRcYRwXHXwPN3yMRC_eug@mail.gmail.com>
From: cyber security <cs7778503@gmail.com>
Date: Sat, 18 Apr 2026 08:14:12 -0400
X-Gm-Features: AQROBzBT8dtHnxSu0a7CECjlSWdANsJRfKQhcIL3j2Hw9-xHTzO-DPzNJYw2udY
Message-ID: <CAPmip_yuO6dEb7VNUmysMU3u1=4bjxpJyq=Q3SMAbM-ijAvqEA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: [CVE-2026-33691] OWASP CRS whitespace padding bypass vulnerability

Also you can use CVE-2026-33691, to disable security headers while bypassin=
g CRS

More info at https://unlockoldupload.hashnode.dev/turn-off-security-headers=
-using-cve-2026-33691

On Sat, Apr 18, 2026 at 3:00=E2=80=AFAM cyber security <cs7778503@gmail.com=
> wrote:
>
> After deep analysis we confirm, that CVE-2026-33691 aka it alias
> UnlockOldUpload, can even disable ModSecurity WAF
>
> More info at https://unlockoldupload.hashnode.dev/disable-modsecurity-waf=
-using-cve-2026-33691.
>
> On Thu, Apr 16, 2026 at 3:37=E2=80=AFPM cyber security <cs7778503@gmail.c=
om> wrote:
> >
> > Deep analysis by US confirm, that using CVE-2026-33691, in any
> > platform wheter windows or linux or mac, you can bypass unpatched CRS
> > and use CVE-2015-10138
> >
> > as confirmed, as we see in that line
> >
> > ```
> >    1   // Lines 493-498 of public/includes/UploadHandler.php
> >    2   protected function trim_file_name($name, $type =3D null, $index =
=3D
> > null, $content_range =3D null) {
> >    3       // Remove path information and dots around the filename...
> >    4       // Also remove control characters and spaces (\x00..\x20)
> > around the filename:
> >    5       $name =3D trim(basename(stripslashes($name)), ".\x00..\x20");
> >    6       // ...
> >    7   }
> > ```
> >
> > It unlocks the old CVE-2015-10138 and an attacker get RCE if WAFs are
> > not patched, that unlocks the old vuln power against a modern WAF,
> > most peoples rely only on the WAF alone and `Work The Flow File
> > Upload` plugin is never patched and even run **EOL** that is very
> > common, That is the danger, after that confirm, we see one wordpress
> > plugin confirmed trims whitespaces from uploaded files
> >
> > On Sun, Mar 29, 2026 at 3:33=E2=80=AFAM cyber security <cs7778503@gmail=
.com> wrote:
> > >
> > > A vulnerability was identified in OWASP CRS where whitespace padding
> > > in filenames can bypass file upload extension checks, allowing uploads
> > > of dangerous files such as .php, .phar, .jsp, and .jspx. This issue
> > > has been assigned CVE=E2=80=912026=E2=80=9133691.
> > >
> > > Impact: Attackers may evade CRS protections and upload web shells
> > > disguised with whitespace=E2=80=91padded extensions. Exploitation is =
most
> > > practical on Windows backends that normalize whitespace in filenames
> > > before execution, In linux harder because it require a backend that
> > > use like `.strip()` and `.trim()` and other whitespace trimming
> > > methods depending on the language here vulnerable to that or the
> > > webserver strip whitespaces or the backend on general, If not they not
> > > vulnerable to that.
> > >
> > > Fix: Patched in CRS v3.3.9, v4.25.x LTS, and v4.8.x. Security fixes
> > > are always backported to supported branches.
> > >
> > > References:
> > >
> > > Full advisory: https://github.com/coreruleset/coreruleset/security/ad=
visories/GHSA-rw5f-9w43-gv2w
> > >
> > > Credits: Reported by RelunSec (aka @HackingRepo on Github).
