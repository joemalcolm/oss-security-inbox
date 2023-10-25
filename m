Received: (qmail 19953 invoked by uid 550); 25 Oct 2023 16:42:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11597 invoked from network); 25 Oct 2023 16:32:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698251549; x=1698856349; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KtB6vZ3ndA7FzUFxDvlCYQAKLsl7xAwThtilCDi638c=;
        b=Az3EyVlTqhZaDxYdEPMvg+1Gu6H4D87TmX8Bj9c5wiHqspRYDh5GarKAcNbzhprlJO
         FCwO2kPLkn5e/GO73fMfAt3VXjTKLs16DDKqRM0HtGy4bCb98VVwgqhd3BLjgRED1IFc
         tXKpM7AIILs4zdFph01HS8+xAW7f47wvRlCl7QH/N3PDlCrqqEd737KjVxB03dA0Crso
         TUktDxb1uclTH9eHZ89lVz2kbnJWTGfKglV8oo/Ege7P9SL0dcZERbzrjGy6JV+ErMsG
         onn0sV3tZzkUleyMXXowElWevMeX2rSlSh00LIQmYc+llBD8RcZYNvmdkbFHML5BbfB4
         0PuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698251549; x=1698856349;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KtB6vZ3ndA7FzUFxDvlCYQAKLsl7xAwThtilCDi638c=;
        b=EOAA+JolwSpgC9sbhYs0lt+EMRyI+Z/CIxw+yIBPljTsc7SGfdy1EKUGvH42e7i7cV
         8F5s34lGQSyx5igSbFu8wiNViEozb/LoFjgH4XYZ4Sh921mV0LjsLT8M7SBIYY5mO28m
         4BRjL3B4wbzOXblFfnQ/EbTixSEw1yhCROZDcQVg7HCl2Y8yzSXHwHl51ly1Uez1vb3i
         P6tmLsOzbK1Ks2SMfeJnJX/eqBTH7cbFFmK0EhLmdW7MUMKVBnX2MI9lR819dBhWtSOp
         twgq1zF12Ytt+Q7TBiYCp5bJ86+cklk8F3T4jphMFDOhpjm+nDR8uyj3DwDKE0kCwLK0
         NvAQ==
X-Gm-Message-State: AOJu0YyFk4RBCzm7SXqhNfYkTp2yT4rEi5CtRny6WnqyVwXc9Ffgl4X/
	PlMEXISmxRNTserNONlnmyTKCSgD6Gm3SoCJungeAloJoo/efT3LFw0=
X-Google-Smtp-Source: AGHT+IGyC4aZtLV7sEnA9ZxR5C3NijawVLZ1g52V0ALndSSDbMxmSgNn1Sf7oT2LbEx/1oN4Ow0aatUZ6eYZ5RUl7rY=
X-Received: by 2002:a05:600c:4592:b0:3f6:f4b:d4a6 with SMTP id
 r18-20020a05600c459200b003f60f4bd4a6mr98543wmo.7.1698251548694; Wed, 25 Oct
 2023 09:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGBOt0M6wD+gq6h0CPR__tL1pxzg-EivJtLGK82DzzEBQA@mail.gmail.com>
In-Reply-To: <CABdrxGBOt0M6wD+gq6h0CPR__tL1pxzg-EivJtLGK82DzzEBQA@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Wed, 25 Oct 2023 09:32:13 -0700
Message-ID: <CABdrxGDrYdK-nhcA_Jt9=2MYvyxwS46-14MwMsaa-+tiQTQnfw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004d3ba406088d009b"
Subject: [oss-security] [kubernetes] CVE-2023-5044: Code injection via nginx.ingress.kubernetes.io/permanent-redirect
 annotation

--0000000000004d3ba406088d009b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Issue Details

A security issue was identified in ingress-nginx
<https://github.com/kubernetes/ingress-nginx> where the
nginx.ingress.kubernetes.io/permanent-redirect annotation on an Ingress
object (in the `networking.k8s.io` or `extensions` API group) can be used
to inject arbitrary commands, and obtain the credentials of the
ingress-nginx controller. In the default configuration, that credential has
access to all secrets in the cluster.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U=
/C:H/I:L/A:L>),
and assigned CVE-2023-5044.
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

See ingress-nginx Issue #10572
<https://github.com/kubernetes/ingress-nginx/issues/10572> for more details.
Acknowledgements

This vulnerability was reported by Jan-Otto Kr=C3=B6pke (Cloudeteer GmbH)

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--0000000000004d3ba406088d009b--
