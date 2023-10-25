Received: (qmail 20423 invoked by uid 550); 25 Oct 2023 16:42:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11598 invoked from network); 25 Oct 2023 16:32:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698251549; x=1698856349; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7C8dqqT7n+QehvrZbWWY2CTCJBGtxhhliR9NlHooB10=;
        b=2yjrhJdVBtFJUz2gWzGrkZvSsIqXwj5TfJVcms6POPfPrijA1Ly2uZ9OKrIpyC4wBt
         OXKxuz3qkAjvBAi3/5gtHHQfLC8LOUDmLGJkRhdtC2L2EEawbn8/HA0aKm2qGwd8/7Gi
         AW5ngp5Z/Oodq9CrPs1Sk1saGTjXJfIq2RlNONt5LfH8f8t4vhz5Uq7t6DHGltpBrVWa
         GQAreEjQlhtciuY6C9H5R/QfvaKyVzOXNEPOIKh9BNDoESO5cnD0snza9TTQjT4O6RVK
         E0YVnh3w14yc3VLogJwVSBaftUesr7ywkMC1daSi0vRHlkklBf1SxyXD0diHK99kdPDi
         JX/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698251549; x=1698856349;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7C8dqqT7n+QehvrZbWWY2CTCJBGtxhhliR9NlHooB10=;
        b=c6+H9KwvJjoynYF9ULXuxsrPToscU8yS9k0bZJam4JhgIQJhgpcSr+h+QZhPH9UIrh
         ovTsPdQzEn8OUDEASPPqQ1W1Z0lWe2AOCwOdQ/WJTmI+w8GcP+S8KxVpHwJXgK/DoFCq
         0iqcLxNxCTtfDxDTRD4qjB/fu4znW17ufUPo4pB96GUCNFlYmSoijsvfxES7Ww+8dp0W
         Ho8vN31uqflss2oQYqokk2ysrdLtYdR440G2vzEXKxS6/BeH5oznr47mnhs7cWksAYS9
         yr7u67jOlFBSKiRGzzQ2jlsmpNdK6/q6+v+6PB0njPVNhQAt10QPJ5dxfAzPXBmybSKw
         xopQ==
X-Gm-Message-State: AOJu0YwCE2ebO94CSuoM+hke88qLnCId9NB/oTb4MvXdrDxmmtwXXA7I
	Qxt2HefWBAxl/rCSb+TrYt5Zsxc7UARrA+i6SfDmRvSIX2FhQfh/xqg=
X-Google-Smtp-Source: AGHT+IFlot4EKDEpZgmkM6P2tbEaernngqGMVr+5/UEJznwJjoLvt+rJvWH8CaDJeF7dmSjAnZDACLSgCyl3mspKfcw=
X-Received: by 2002:a1c:7504:0:b0:405:320a:44f9 with SMTP id
 o4-20020a1c7504000000b00405320a44f9mr97596wmc.5.1698251548687; Wed, 25 Oct
 2023 09:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGDn2UZrsYERecytp1M51b18O9ttvnW7i+BO+4Q4ZkOY1Q@mail.gmail.com>
In-Reply-To: <CABdrxGDn2UZrsYERecytp1M51b18O9ttvnW7i+BO+4Q4ZkOY1Q@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Wed, 25 Oct 2023 09:32:11 -0700
Message-ID: <CABdrxGCJk1x_5zs1Ja-NmyGRdL6q+ss5t2NyJ3dBtekcoV66Zg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004d616c06088d00da"
Subject: [oss-security] [kubernetes] CVE-2023-5043: Ingress nginx annotation injection causes
 arbitrary command execution

--0000000000004d616c06088d00da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Issue Details

A security issue was identified in ingress-nginx
<https://github.com/kubernetes/ingress-nginx> where the
nginx.ingress.kubernetes.io/configuration-snippet annotation on an Ingress
object (in the `networking.k8s.io` or `extensions` API group) can be used
to inject arbitrary commands, and obtain the credentials of the
ingress-nginx controller. In the default configuration, that credential has
access to all secrets in the cluster.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U=
/C:H/I:L/A:L>),
and assigned CVE-2023-5043.
Affected Components and Configurations

This bug affects ingress-nginx. If you do not have ingress-nginx installed
on your cluster, you are not affected. You can check this by running
`kubectl get po -n ingress-nginx`.

If you are running the =E2=80=9Cchrooted=E2=80=9D ingress-nginx controller =
introduced in
v1.2.0 (gcr.io/k8s-staging-ingress-nginx/controller-chroot), command
execution is possible but credential extraction is not, so the High
severity does not apply.

Multi-tenant environments where non-admin users have permissions to create
Ingress objects are most affected by this issue.
Affected Versions

   -

   <v1.9.0

Versions allowing mitigation

   -

   v1.9.0

Mitigation

Ingress Administrators should set the --enable-annotation-validation flag
to enforce restrictions on the contents of ingress-nginx annotation fields.
Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See ingress-nginx Issue #10571
<https://github.com/kubernetes/ingress-nginx/issues/10571> for more details.
Acknowledgements

This vulnerability was reported by suanve

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--0000000000004d616c06088d00da--
