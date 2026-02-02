Received: (qmail 21957 invoked by uid 550); 2 Feb 2026 16:55:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31949 invoked from network); 2 Feb 2026 16:43:55 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1770050626; cv=none;
        d=google.com; s=arc-20240605;
        b=hH1ljrMFV5pYw5958ptIv8bGMIAcLg6ml4lIdz5ATOD3i/O1voKy8zxS7nO3pgK6Zi
         Teff8c73yrHb1DSSPfwzw/ojlY0MGG6eKPFzs9EIORVoKwYn9CAyt6FDIeIDj6xwI7t6
         qkl3BsKLCuX2fVu8wSvyIqHgpa31fportG4UuomeQmpkAQdwrUr/6dP4SmqOgUoJIjD/
         +kJ8J4tgz/n9tze4QAPefQaT0qbgDpPHew+ZBx7the+hjeuJu1a/mygALSFoQpOhqBaM
         HUIznlAuioRpt0k4zBWiOGR5HuJBLEX9rQfEYh6Ztw1K0LytXC9pGqqJuVbg+iJZftQ7
         ax0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=yhnLWJY4iqvOMFl4l10cXAhAdh/EcJN7b0yYKGzuxfI=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=iZFk76NvF/U/llTWYSYweUPpRsZwxaTp1ll8b2FquRcCkqOcihmsiw5uFcd0Cblcjt
         ALh5tLsxveuct1/4G48EHZ6qo0GX0hWtzHxOEZp0Yjx1ywCwzLg8G8DJAeOxAeVvFI79
         53mVBdwUe1dA3R5h8UIaoyFn5McxUUO5pl7QZlDKoyXreQyrs3/0cTLGTvFyiG0rKQqy
         aj/KOCEOREKBWpLg2KiP24lKG8/Wx5ArE7Y5YPWG5HFHSpH0b4/WrWr+LhN6GpvH1d3l
         0BrBkH03Dq1DXuB+9tXetLx0yKSFFpSvwd4DcgJDblu28G52ujDtPvzGEVXW096hQNeH
         ZBpg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770050626; x=1770655426; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yhnLWJY4iqvOMFl4l10cXAhAdh/EcJN7b0yYKGzuxfI=;
        b=PLqgeRag8HjKFIbHE/xOAk9EFf/wLfNpXu7LDe79ThnYna9aU9CS57lh54lK+sUVto
         9ZD3uEzRgsAI6PFV70zVc7KHPM0tWnVxAxXx/3GK9oEB/bFVFHvmWR5+elZNRMNOC6hl
         cnoAPMrpHri9qxWkQTFLEIhDH8XZc6v3napeYumemgF7hlB4gfq3y/lCT7njbdyLBRqV
         ASWB4KjB3j5f6+B7BpVEtb/rcZ+T/FzMGvDZ9yYC0xXtxskpqOd0aIsWHhosIKyOLpjt
         Q8KGx4H6ow63BWQi4CeBSPc9JOwL28AA0A1qLmSuqxtHzpXp+Tl+urBVk20VTdD5QLQ1
         fcNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770050626; x=1770655426;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yhnLWJY4iqvOMFl4l10cXAhAdh/EcJN7b0yYKGzuxfI=;
        b=K8NbTHrnGehhLsbDdeJ3snMDFSWgWXRbJtP0wG0bTFF3mKeCXmlovxhZt247Lne4J0
         KqJ1wyFCej6h1a+7J2ex/gndTUn19Y2PmxFhwH8I6M9ojPq6WhYNwWheL8cWd3e+ubzR
         7gGJpqcrctwb5XAZQ8uGY7WAExYt/+dSw1fzQAe5FdrIN9GkmR99+VuSoUBYAfmYXUwk
         kqCkb8pMeaVqEKxc+65b5T+Pln7uBaFzQwyyr0POMX8/TReVvBcZU+pGhbqja5uT5VBg
         /l12W3jR4iMV2Z0+uxC40cjfGMLlN+EfNLnB2iLI+tdbKl06nErKiZ6hRD1crEDAA8yx
         r3GQ==
X-Gm-Message-State: AOJu0YzyrVbdhHG5KQVIDGuEQMmD5mj8Qt1WE6b4fn4aUUNvZVxUfVA9
	degxhAdOmZPdGnjBo2VKPeyBPU2srVDqLQlh0T3Nr96tICPRkoYH7Z8itQqeQlN1snjj9cFnGa6
	bHKQQxlq/OkFDEQmGnPJD80TAua5ysXJF9odQ
X-Gm-Gg: AZuq6aI+kyDtfZHHMLDidOyFhlFA1z/zRU052hEfxjtFp9Xo7NiBlGE0l1OE91piiy/
	dof8hc+RAtPq66jqVwewxDGHPcYfTmen4lWHT0XqTYWwox/Jjk6XnkFxLshBynsjrlMr46afj4h
	KcYZ5ME6467W0Xo7b00V7ObPc1fTqT3HsW+CMPYtsR7rhgXltoo52vQIRMF+cC82ETgH4JOFHGf
	QRv7Q9U0aYuSM4EL/d7k5eY5F14c3vMzeuQDwBufDMChEWAd4qS8CScmgUJGSGbZKSV0hwbA/w3
	jiNzCAU=
X-Received: by 2002:a05:6102:3ec5:b0:5df:b5d4:e46e with SMTP id
 ada2fe7eead31-5f8e261d497mr3881634137.32.1770050625631; Mon, 02 Feb 2026
 08:43:45 -0800 (PST)
MIME-Version: 1.0
From: Tabitha Sable <tabitha.c.sable@gmail.com>
Date: Mon, 2 Feb 2026 10:43:34 -0600
X-Gm-Features: AZwV_QjrB-59Ie_lB8NJxbp96mnifuHTOwK03LCg_o67gLct2O0rRE8VirhQKbs
Message-ID: <CAM62SmL+HyyuLPveV7fZrBWDoYi0etZRS2fRGdMQDnQZJOAF=A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c679c50649da0685"
Subject: [oss-security] [kubernetes] Multiple issues in ingress-nginx

--000000000000c679c50649da0685
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

Multiple issues are disclosed today in ingress-nginx, and assigned the
following CVE IDs: CVE-2026-1580
<https://github.com/kubernetes/kubernetes/issues/136677>, CVE-2026-24512
<https://github.com/kubernetes/kubernetes/issues/136678>, CVE-2026-24513
<https://github.com/kubernetes/kubernetes/issues/136679>, CVE-2026-24514
<https://github.com/kubernetes/kubernetes/issues/136680>.

The most serious of these issues have been rated HIGH (CVSS calculator
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>,
score: 8.8).
Am I vulnerable?

This issue affects ingress-nginx. If you do not have ingress-nginx
installed on your cluster, you are not affected. You can check this by
running `kubectl get pods --all-namespaces --selector
app.kubernetes.io/name=ingress-nginx`.
Affected Versions

   -

   ingress-nginx: < v1.13.7
   -

   ingress-nginx: < v1.14.3

How do I mitigate this vulnerability?

ACTION REQUIRED: The following steps must be taken to mitigate this
vulnerability: Upgrade ingress-nginx to v1.13.7, v1.14.3, or any later
version.

Certain of these issues can be partially mitigated before patching. Please
see their respective GitHub issues.
Fixed Versions

   -

   ingress-nginx: v1.13.7
   -

   ingress-nginx: v1.14.3

How to upgrade?

To upgrade, refer to the documentation: Upgrading Ingress-nginx
<https://kubernetes.github.io/ingress-nginx/deploy/upgrade/>
Detection

Detection information for most of the vulns can be found in their
respective GitHub issues.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

For further information, please see the following GitHub issues:


   -

   CVE-2026-1580 <https://github.com/kubernetes/kubernetes/issues/136677>
   -

   CVE-2026-24512 <https://github.com/kubernetes/kubernetes/issues/136678>
   -

   CVE-2026-24513 <https://github.com/kubernetes/kubernetes/issues/136679>
   -

   CVE-2026-24514 <https://github.com/kubernetes/kubernetes/issues/136680>


Thank You,

Tabitha Sable, on behalf of the Kubernetes Security Response Committee

--000000000000c679c50649da0685--
