Received: (qmail 21666 invoked by uid 550); 25 Oct 2023 16:42:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11599 invoked from network); 25 Oct 2023 16:32:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698251549; x=1698856349; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sr3rTB9AUvWcxzuwO5KRvuKPIDFAtdp4J17uD/uXcc4=;
        b=A6UZM5J3+QWVXGQGpd9XEscfwTU5hXocTTZRUKm+OaF/Pb8b/h2ch94dJPD09fPMzV
         nO84w8M8jRfa5f3SywGtNd3IywlTofTXMEk4xbJw6Nx6Y6HDL/iV0gBxlcUEd+PQ2YIY
         8Uy0BuOO3psKdWB/JPr3UIP4XuCtIAGwHYMZs2Tzwjw4EUXG0z21d1RLYAfHYP/kaqrR
         weN5znfN24g7oOOVRzL3t9RW0DVXZg35fG5mse31JRcuHa9sPnrypBFyzOtLr8U3ADKA
         QrZSSYA7M27VVDWshdWsWiyFuHPJwu62bCmCh77UPavtOTk+oLHJeUEUd8a3KlnQZ5tk
         lPNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698251549; x=1698856349;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sr3rTB9AUvWcxzuwO5KRvuKPIDFAtdp4J17uD/uXcc4=;
        b=sGNgaTvOJDEAG4qF2+NDcxYhz5/Iz3mHkoPOvlVasQPsitvzk6kBoIiLXDT7CR2sUi
         P9KB3KxPJ8wb98URRmEuNq8ItbaJGV96v45LmkVD0qpVDJCGT7Tdw0ozDDnaKJ0ToPdk
         99a2RaaS/dHucKsbG6lFFTwvwVe00FgEh0MjZdcYd/PQiM6rKenFuCAiF5Q3eXXseZ3v
         Pidp1GUb8lCKNAZiwduCtEHMJitQilBQxKlEhcGNoyGWotX57FDXPojBfiTZOLBvn0Vu
         Haxh2E1nDuYXQZBhsOiAR3wHAFp1ObbK3usRDyYh1V3wpYpO4NS3IaUF0v6DI4wTRSja
         cKXg==
X-Gm-Message-State: AOJu0YzQ1T13Ezt93I4Cpn5k/TXWuiAYkp17KT7j+4YKIp9xUQklcRXz
	vd8wUjVgK+eAymZcrFWHsUDZYPmCrbpXmuXB5CUnKkH9M/iN3c/M7zM=
X-Google-Smtp-Source: AGHT+IHnMRJNUeAZfWoTMt4JvIIH6KPBiJOIwcGfds7MZjPu1ds0xLZZxm2cPvf4ZtD7G00i+3MWkG0gegIgm2+INlM=
X-Received: by 2002:a05:600c:4786:b0:405:38d1:e146 with SMTP id
 k6-20020a05600c478600b0040538d1e146mr120847wmo.4.1698251548684; Wed, 25 Oct
 2023 09:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGBd5xuk2xrH=f4UvHkDGFbDfP5NrgVxnguSou9s1oZ5PQ@mail.gmail.com>
In-Reply-To: <CABdrxGBd5xuk2xrH=f4UvHkDGFbDfP5NrgVxnguSou9s1oZ5PQ@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Wed, 25 Oct 2023 09:32:08 -0700
Message-ID: <CABdrxGDK0pq4i0eyJ6GU_LDaxeD8Pm5J=4cycYAeP9q3CTGHZA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004d431406088d00a8"
Subject: [oss-security] [kubernetes] CVE-2022-4886: Ingress-nginx `path` sanitization can be
 bypassed with `log_format` directive

--0000000000004d431406088d00a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Issue Details

A security issue was discovered in ingress-nginx
<https://github.com/kubernetes/ingress-nginx> where a user that can create
or update ingress objects can use directives to bypass the sanitization of
the `spec.rules[].http.paths[].path` field of an Ingress object (in the `
networking.k8s.io` or `extensions` API group) to obtain the credentials of
the ingress-nginx controller. In the default configuration, that credential
has access to all secrets in the cluster.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U=
/C:H/I:H/A:H>),
and assigned CVE-2022-4886.
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

   <v1.8.0

Versions allowing mitigation

   -

   v1.8.0

Mitigation

Ingress objects contain a field called pathType that defines the proxy
behavior. It can be Exact, Prefix and ImplementationSpecific.

When pathType is configured as Exact or Prefix, there is more strict
validation, allowing only paths starting with "/" and containing only
alphanumeric characters and "-", "_" and additional "/".

When this option is enabled, the validation happens in the Admission
Webhook, denying creation of any Ingress containing invalid characters
(unless pathType is ImplementationSpecific).

https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/c=
onfigmap/#strict-validate-path-type

Ingress Admins should enable this validation by default. If you still need
to allow implementation specific paths due to the usage of features like
Regex/rewrite on path, we recommend implementing countermeasures to allow
just trusted users to consume this feature, as an example with OPA:
https://kubernetes.github.io/ingress-nginx/examples/openpolicyagent/
Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See ingress-nginx Issue #10570
<https://github.com/kubernetes/ingress-nginx/issues/10570> for more details.
Acknowledgements

This vulnerability was reported by Ginoah, working with the DEVCORE
Internship Program.

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--0000000000004d431406088d00a8--
