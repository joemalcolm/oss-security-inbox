Received: (qmail 5201 invoked by uid 550); 18 Apr 2026 17:18:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28447 invoked from network); 18 Apr 2026 07:01:10 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1776495660; cv=none;
        d=google.com; s=arc-20240605;
        b=hpdHmrzCvkWUKGuwd22YKoIhQ44J7B5dqOyZrGmw6h29dKZYtUwtbrDw0U+6SSHFFQ
         n0tTaxoP8xKuUj9YYo6G5pZzvlqUjmGEIIZ2Qz1zp2bjeFpMQIsZmm6kBDorc66by0w7
         6VZhK+lEwhGr6nZwwuxLq50xDXBO1/Bj1ZY6r+Af+CwMBaYIqmytJvIVw6Gb+rUI7mAh
         yyv1eSKCyR42c4Tmx8A8Q9HyUDVvEYfIIKFZ3FLIwoxSdtfToyywXGi+pwK5hZ3NFPx7
         JQcSxslyBPdNUkUaxLJEqU0Gb7xdkiu9Jggv5jyGoHBXC89/eEpdDATqai7+h5HY0bI0
         2Kcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=R21mXrdczT3QrcSYd5Thyg+3iADsMDy+khhr28+SfQI=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=Tjuw3NHV/RyRCQaXzGYsT1+khY+TUIRM7Cw/CBy4+GocywFHi89txwclHwZ/7bvHfQ
         uTtxPVv5gl0m9AwN2nf7oj3NpERcAHLpTYjr8Vp+a84/UaiRruiOTVFQ8g4vCMRjo1Cl
         flFJa4+ucRurzYnF7Q80F79cN0J0wxwSY8X4/W8XX0byE2W2XNirxAS7tSJ/jwdDJzAn
         f40rUU3nT7+P0j7b6wE4SXF672OG0yjxlS/jbsvirG4Y9bG/nSc8s8RhypsJn0QZkhDu
         RH8sth4WG3W5ndYqfaadW/bRh24v97rcDZ9DBZU4JU1h0xswPrRdAxCdBZvdNPf7MAsC
         27oA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776495660; x=1777100460; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R21mXrdczT3QrcSYd5Thyg+3iADsMDy+khhr28+SfQI=;
        b=PWhQ8jf5sF47PVFhWW7UHrShtl8r+l6NwsTgZH5ia/lEf4xb8UFNjRhOJkdDBYr8cs
         4mTuHUgrI5wnE7ZhRWTypT7W9BxkOixx9BuETPEJt81hmHbxiL3sm+D5kjTnjC9IezBB
         W4kZbs9z8YjLt4QJex/BZl57gi08BiE7fQPtC0SVJtmPWGKMAoH7R+BrKCSqC1WA48x0
         W6s7m/UHGtVEfU5VwE2XcfIXPnOVU6vX1mnwBLr33NWQW3GUdGONv/49/p4HMLBf1VKQ
         BOfdp8naNdCOhVwHPIGx44dHJm8filLrA+mM9GDXk/j4a0DHyPFFYzTtXGm189TMgd3s
         lZbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776495660; x=1777100460;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=R21mXrdczT3QrcSYd5Thyg+3iADsMDy+khhr28+SfQI=;
        b=NbYLBVlmYJbFmGPRCng9f99WrZsdarJvK8PtRP5LyWk6V3Sh2TJZcaitY+grWVDZ2A
         pgBA3dUC8nTpUjMFDojrrRlghmAi4tcIOZukTCJ0m8G7K4WrpYTpaUNV6aqBmRiwHLyn
         JJmz1kXw558epZi9X5QVu5TqRjLhE/YKG6IQdyxkkwk7m7Cy85aNiKpbD9NNZnP/7YFn
         R5FLJHVjJEE6eOKzYq0GjzGgyZWrDsQMh8VbYLA6mPchLhhWCoI/UxfcuVkC8LSoTjxk
         5wBcTrCPHcFgylEj6JiD7yI6EtbX/Y7+Nh6ywCinnlvojhuIf97pSVqAhJwzt6Yfz3dK
         QTHQ==
X-Gm-Message-State: AOJu0YziERTYJ8gmPIQuwRQ1KyMtkAlF8a2mntiYfJpuGFjrSuHswHMB
	Xg2xfDyGSbNExA9SoFBI7xVdNLUbGqf+DucnowWn2pfazyLht5CyE71Jlgdq72WI94uS13iLUw4
	EDUgrnsCPJpQ3KRT68TiCReGk8xCRMbcV4xPX
X-Gm-Gg: AeBDieufugR8/YcAURnpZ7V5vzUHJu2fGWTOvCw2SwnxIQ38r2nN4UC8efUO+bfzv7l
	8JG9ri4020K2vTMhDDToy2P0zA1K9NqgfrYoIyZt3vfOrFWYoXM6GAHnu31r/oBUfd33MLiIGhN
	0OIm7TCEEyD7nuEGGeAR4n09aKwE9N6zKdHqLP9LvDUtHQ7kBoKEqP5sdscF0ALzwJ5daZUBOSO
	OlY1y181P5kd4dPyk6kWGU0X90j9mdUpIcca1p9QAPlotvrUxFteyXaB667ywiWMXjzF9tSl9/O
	4XRLnN0r3tMTNDEFVlU=
X-Received: by 2002:a05:6512:b87:b0:5a2:78e2:504b with SMTP id
 2adb3069b0e04-5a4172e7cc8mr644149e87.7.1776495659286; Sat, 18 Apr 2026
 00:00:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAPmip_xXkz6hjTUUKbaHr1hwq5ROfpNwn5Rq-t9cxMgs6uXhZQ@mail.gmail.com>
 <CAPmip_xVPZ_mFkTUjGd=k_3K222BQxPhySy1ei2VieqBp=pBng@mail.gmail.com>
In-Reply-To: <CAPmip_xVPZ_mFkTUjGd=k_3K222BQxPhySy1ei2VieqBp=pBng@mail.gmail.com>
From: cyber security <cs7778503@gmail.com>
Date: Sat, 18 Apr 2026 03:00:05 -0400
X-Gm-Features: AQROBzDl4A1g448K56Y-DhDRS2-Wx-UWWAV5xUZDAG49SgTk2YMfIvUmdKffA2A
Message-ID: <CAPmip_zm57=Za1HVTM4RMr9xZiS3YNRcYRwXHXwPN3yMRC_eug@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: [CVE-2026-33691] OWASP CRS whitespace padding bypass vulnerability

After deep analysis we confirm, that CVE-2026-33691 aka it alias
UnlockOldUpload, can even disable ModSecurity WAF

More info at https://unlockoldupload.hashnode.dev/disable-modsecurity-waf-u=
sing-cve-2026-33691.

On Thu, Apr 16, 2026 at 3:37=E2=80=AFPM cyber security <cs7778503@gmail.com=
> wrote:
>
> Deep analysis by US confirm, that using CVE-2026-33691, in any
> platform wheter windows or linux or mac, you can bypass unpatched CRS
> and use CVE-2015-10138
>
> as confirmed, as we see in that line
>
> ```
>    1   // Lines 493-498 of public/includes/UploadHandler.php
>    2   protected function trim_file_name($name, $type =3D null, $index =3D
> null, $content_range =3D null) {
>    3       // Remove path information and dots around the filename...
>    4       // Also remove control characters and spaces (\x00..\x20)
> around the filename:
>    5       $name =3D trim(basename(stripslashes($name)), ".\x00..\x20");
>    6       // ...
>    7   }
> ```
>
> It unlocks the old CVE-2015-10138 and an attacker get RCE if WAFs are
> not patched, that unlocks the old vuln power against a modern WAF,
> most peoples rely only on the WAF alone and `Work The Flow File
> Upload` plugin is never patched and even run **EOL** that is very
> common, That is the danger, after that confirm, we see one wordpress
> plugin confirmed trims whitespaces from uploaded files
>
> On Sun, Mar 29, 2026 at 3:33=E2=80=AFAM cyber security <cs7778503@gmail.c=
om> wrote:
> >
> > A vulnerability was identified in OWASP CRS where whitespace padding
> > in filenames can bypass file upload extension checks, allowing uploads
> > of dangerous files such as .php, .phar, .jsp, and .jspx. This issue
> > has been assigned CVE=E2=80=912026=E2=80=9133691.
> >
> > Impact: Attackers may evade CRS protections and upload web shells
> > disguised with whitespace=E2=80=91padded extensions. Exploitation is mo=
st
> > practical on Windows backends that normalize whitespace in filenames
> > before execution, In linux harder because it require a backend that
> > use like `.strip()` and `.trim()` and other whitespace trimming
> > methods depending on the language here vulnerable to that or the
> > webserver strip whitespaces or the backend on general, If not they not
> > vulnerable to that.
> >
> > Fix: Patched in CRS v3.3.9, v4.25.x LTS, and v4.8.x. Security fixes
> > are always backported to supported branches.
> >
> > References:
> >
> > Full advisory: https://github.com/coreruleset/coreruleset/security/advi=
sories/GHSA-rw5f-9w43-gv2w
> >
> > Credits: Reported by RelunSec (aka @HackingRepo on Github).
