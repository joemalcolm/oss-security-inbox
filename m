Received: (qmail 1410 invoked by uid 550); 10 Jun 2022 16:39:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8180 invoked from network); 10 Jun 2022 16:12:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=02HOH/C/c7PEvZdwDhppDgb7z3yM3yTxeqnNjz6Vg6E=;
        b=b6a1zmqcvprKwoImf/Wfee+hTdQUAIzOspsybJqy1s+tYWK7/ZpjJzgQIH10hs1AWE
         Dl4qN8KxSS4GuMkugBluQpCjgiJsWz4vh/5uwX/Tv11J1qtQQR+m26+YjkA0FKvosMkp
         orStUvQWOLipkbdg8xSD2iFkHsEmZ3KOfSCDiEY4VugkgYwkfMs3zwFHrwaltHte2V+R
         oHbX3a+mgVMg3/8zOxEO/cLAPe23RjzogBLnB5aloqgBxQM0D9QE9IOzRd50zYgpEEgA
         QL4N9ogOWUzf2d3hrQ/gS8sKpskxZE6RvY2V5de/6qmgSxAew+rCxQ3aGdU1/sGyvwuP
         RqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=02HOH/C/c7PEvZdwDhppDgb7z3yM3yTxeqnNjz6Vg6E=;
        b=n3ypGNffHUO6da6b26vs8A9WoYg4nxfNrqXjiv81Hb2xGgUfxQJfoA0QCRe3YHZc+T
         Xerr97siPq3h+jDetNSItzCHVdsoL3vPUzVQnl7+ZSxfmF9XQC6x42Ch3NIcknuI4Yqb
         Z/1ToCxf2KnyMEStT43D/Og9LzNiLAQgkrU18sNRebKUizhdaeTU24/yEsKpvJgogOwQ
         2ZYOfZhByp+Oa+IXVuzAF05lucaB/uj+1hfHHElHTSZNMMx8MdcwnK7wHzPfBRcqq1FS
         xNX9aXV+JTHad0sk9fKPhF1rWfJY3Q8AzcYYdhA3w/jU35osUKlwHUmvQfUYDxYIgzVD
         bYwg==
X-Gm-Message-State: AOAM531yZ1FjY0onjdErf+Ao2CKn5wgP+i37wHzXoG5blSD6Yd8/t2LN
	TL9Zy6thRn1/zf3CJZnYSKdUzwEtHrkkr2u5d7UXqdCGR6FJQQ==
X-Google-Smtp-Source: ABdhPJxmPsdNwLYcmFYAleKdHex36lwSNadiagl3a+8zlI+Sv3evHyxZUKEmDRkq8VYu08RBimw/ioZIqgvUCSkUkWs=
X-Received: by 2002:a81:7607:0:b0:2fb:7bee:bf70 with SMTP id
 r7-20020a817607000000b002fb7beebf70mr49777899ywc.279.1654877518648; Fri, 10
 Jun 2022 09:11:58 -0700 (PDT)
MIME-Version: 1.0
From: CJ Cullen <cjcullen@google.com>
Date: Fri, 10 Jun 2022 09:11:47 -0700
Message-ID: <CABdrxGBr+uS70N8OhVvLZ=qW8EaGLJkA84Q0vAjQ3tpv6bdX0Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a5cd9505e11a32a0"
Subject: [oss-security] [kubernetes] CVE-2021-25748: Ingress-nginx `path` sanitization can be
 bypassed with newline character

--000000000000a5cd9505e11a32a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Issue Details

A security issue was discovered in ingress-nginx
<https://github.com/kubernetes/ingress-nginx> where a user that can create
or update ingress objects can use a newline character to bypass the
sanitization of the `spec.rules[].http.paths[].path` field of an Ingress
object (in the `networking.k8s.io` or `extensions` API group) to obtain the
credentials of the ingress-nginx controller. In the default configuration,
that credential has access to all secrets in the cluster.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U=
/C:H/I:L/A:L>),
and assigned CVE-2021-25748.
Affected Components and Configurations

This bug affects ingress-nginx. If you do not have ingress-nginx installed
on your cluster, you are not affected. You can check this by running
`kubectl get po -n ingress-nginx`.

If you are running the =E2=80=9Cchrooted=E2=80=9D ingress-nginx controller =
introduced in
v1.2.0 (gcr.io/k8s-staging-ingress-nginx/controller-chroot), you are not
affected.

Multitenant environments where non-admin users have permissions to create
Ingress objects are most affected by this issue.
Affected Versions

   -

   <v1.2.1

Fixed Versions

   -

   v1.2.1

Mitigation

If you are unable to roll out the fix, this vulnerability can be mitigated
by implementing an admission policy that restricts the
`spec.rules[].http.paths[].path` field on the networking.k8s.io/Ingress
resource to known safe characters (see the newly added rules
<https://github.com/kubernetes/ingress-nginx/blame/main/internal/ingress/in=
spector/rules.go>,
or the suggested value for annotation-value-word-blocklist
<https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/=
configmap/#annotation-value-word-blocklist>
).
Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See ingress-nginx Issue #8686
<https://github.com/kubernetes/ingress-nginx/issues/8686> for more details.
Acknowledgements

This vulnerability was reported by Gafnit Amiga.

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--000000000000a5cd9505e11a32a0--
