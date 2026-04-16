Received: (qmail 1609 invoked by uid 550); 16 Apr 2026 19:42:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6045 invoked from network); 16 Apr 2026 19:37:42 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1776368253; cv=none;
        d=google.com; s=arc-20240605;
        b=T4jGVzO2p5qgnxZyY4b7h89qvzCwNvej3aLXkpwQXhnZqLMem9a6k81/Vhha3CXxKu
         AueeT0AZTDCV4b9CRKjl+ObHWVG34fHGhODmMUD+XPGQe09doZ15dH/ftYgGPrK8b0Wl
         +lMIYMKEA/I2qZX2D4nbcLl1I3JExl63nnwYlgC/2lBPndELuJl5W+zbVGcVKNdIbZPj
         DdzBQV8FXFaOPgIn/3TjC4JRHJMJ3IyWAdMvdTdOxxwQGYycKtMB6VXlQHqlX/YIckPV
         3cw6GGx+WPIQB9DeuyhHyZ5kcsH+Uqij6dPDQhG9JW7MWhQC5jRQpnaf+UI71UzkeTMy
         D1Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JSZG2y9RtLV+ZEFosWUJRkfB15/bUJEneAepkVZnKeM=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=SmNeubWSUvelhEgGGUp69Mbo9zygHUp68dRkkochwrpreD5RwMISGcGkc1i844xl8T
         qDzGeQ/1Ms8/XKUCFvVHbEJhejXO7NiIO45KEwPmfBGYCu+u1jxVhzgMc3gUMgU1LYl5
         DlIua1HZ0u4v62NOJmDIrDrea3lv/H6oOZ6GodUzufrDv4/CwwRxqsSbU31MrEJZZbf4
         p4NV+jW4+oh3pgB9GZaGneuy2PtQ9KbDFX9GWsGfRauBxQu7sIBUjhqjBQSahEOqpTR+
         BkIPlQdI3nN6BkmkGTsvnbEy8pQ7i9PD46eVOvDcncjATqMQK2SLCzyF0A/rKYWFByi2
         pBhA==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776368253; x=1776973053; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSZG2y9RtLV+ZEFosWUJRkfB15/bUJEneAepkVZnKeM=;
        b=W7lqHrOVeucAQbLHe4jd4AcTLJCav7VQ7H+G/gb9G6NHJljRLipvIeJuU9wMhe7T8A
         nfVX9ILBiwwrFfBIvAh6VomyxJTjxSGPUObuT9nMYHQ9uBM+nhyXwSCKgec19cUtEmUh
         uhEBE27GKe7yQaiS3geIbqcwBDXGYHpmNyY7DLApcCEgq7dqcpVvEF3cf0rg8tB7ZLhY
         LOo3wDjrcc5n81e+rRuB6dEE+UvKri/C3Yp8ZI9Gk6B8WKXDls2L4A6eO22f4qLCKsLI
         WnUanUWGtBtIdprM8AwDgqd86JXyHkclrlqQXJjoH0r/6Up3lXVWUKVE/2wiGpyE4Pdp
         dubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776368253; x=1776973053;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JSZG2y9RtLV+ZEFosWUJRkfB15/bUJEneAepkVZnKeM=;
        b=rGlrVpZ4taL8QVTC5VixzM4apUnc2EthvDt9BVs1VFtZI+Ap70LekPk4vcRB5Rt5vp
         4Qloe08oP4gmwEwGkJrjmn9pMVYOoGPie7hDpBCXJa0ONhJ1xZnKis2q79sgFz6phclr
         qwIkeyYZ49uBpRArelQM3XGAcXeLsvX7EEZLj6oT227unHA4HBj9iz3jfEdZEXQW2DGX
         SyPCgTy8ptpwEW6nTPPbcmAoL63RpFLgg1oxbWEvL5CFzrtp/jNoy2l4Lh8vHboUtl4y
         kPMFFmhQOqZvK0eMXx7NLriuwodkaLwZ2eYBX+lKA6VvGvTxM+hDL9JNI9oS2Fcz1dyZ
         DSBQ==
X-Gm-Message-State: AOJu0YyLCnTKyVGfWsTxfotvcVWmqtNiDfFl9901Lh2QSMxl7zCiHtBX
	dk4mx5Lm2NribrwjEXSh4KTh/tTCB+Ju6dwYuSeH/RYIhUM2BW6hYuzizIvT4XatA7jF2FWWw+v
	MVcl76QxCn0GC/ihAIoiXqE+tSEy73W63My+X
X-Gm-Gg: AeBDievvyFWqSVQAPjWX5HqDuItCOFGM/bDOPN4AN8LtnsP8swfWFELiocT0UllpoGX
	OY4Ep2p66ygk31Qkgex++MCLVFHt6oRbP6H2RDlcK/nxVRneKO7GUpuKy40kYJDVwiMAPnja/4d
	dA1VXNiQUFrRGJBgQWq6pYbCq6UcOPp+7KYNNVfjPAhyCcqwYJ9Q2iCuMsznoW0kwvpG8x3xY5Y
	W9wX1fbsy3J+VDP5MPoqidjS/Hf/fgWVOPJaKcQaR9AkymheZv+vKQ/CfkJYsuEZG6B/MY4HTy6
	JbuIjIiMMlYBqkgYXg==
X-Received: by 2002:a05:6512:3b99:b0:5a4:3fe:9d30 with SMTP id
 2adb3069b0e04-5a4153c1317mr80526e87.0.1776368252654; Thu, 16 Apr 2026
 12:37:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAPmip_xXkz6hjTUUKbaHr1hwq5ROfpNwn5Rq-t9cxMgs6uXhZQ@mail.gmail.com>
In-Reply-To: <CAPmip_xXkz6hjTUUKbaHr1hwq5ROfpNwn5Rq-t9cxMgs6uXhZQ@mail.gmail.com>
From: cyber security <cs7778503@gmail.com>
Date: Thu, 16 Apr 2026 15:37:21 -0400
X-Gm-Features: AQROBzCExP9AomKzpq1FNamvWFPUEoPeba4kGeOA4nY8iXoPwZlzjbIzyEFE120
Message-ID: <CAPmip_xVPZ_mFkTUjGd=k_3K222BQxPhySy1ei2VieqBp=pBng@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: [CVE-2026-33691] OWASP CRS whitespace padding bypass vulnerability

Deep analysis by US confirm, that using CVE-2026-33691, in any
platform wheter windows or linux or mac, you can bypass unpatched CRS
and use CVE-2015-10138

as confirmed, as we see in that line

```
   1   // Lines 493-498 of public/includes/UploadHandler.php
   2   protected function trim_file_name($name, $type =3D null, $index =3D
null, $content_range =3D null) {
   3       // Remove path information and dots around the filename...
   4       // Also remove control characters and spaces (\x00..\x20)
around the filename:
   5       $name =3D trim(basename(stripslashes($name)), ".\x00..\x20");
   6       // ...
   7   }
```

It unlocks the old CVE-2015-10138 and an attacker get RCE if WAFs are
not patched, that unlocks the old vuln power against a modern WAF,
most peoples rely only on the WAF alone and `Work The Flow File
Upload` plugin is never patched and even run **EOL** that is very
common, That is the danger, after that confirm, we see one wordpress
plugin confirmed trims whitespaces from uploaded files

On Sun, Mar 29, 2026 at 3:33=E2=80=AFAM cyber security <cs7778503@gmail.com=
> wrote:
>
> A vulnerability was identified in OWASP CRS where whitespace padding
> in filenames can bypass file upload extension checks, allowing uploads
> of dangerous files such as .php, .phar, .jsp, and .jspx. This issue
> has been assigned CVE=E2=80=912026=E2=80=9133691.
>
> Impact: Attackers may evade CRS protections and upload web shells
> disguised with whitespace=E2=80=91padded extensions. Exploitation is most
> practical on Windows backends that normalize whitespace in filenames
> before execution, In linux harder because it require a backend that
> use like `.strip()` and `.trim()` and other whitespace trimming
> methods depending on the language here vulnerable to that or the
> webserver strip whitespaces or the backend on general, If not they not
> vulnerable to that.
>
> Fix: Patched in CRS v3.3.9, v4.25.x LTS, and v4.8.x. Security fixes
> are always backported to supported branches.
>
> References:
>
> Full advisory: https://github.com/coreruleset/coreruleset/security/adviso=
ries/GHSA-rw5f-9w43-gv2w
>
> Credits: Reported by RelunSec (aka @HackingRepo on Github).
