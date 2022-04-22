Received: (qmail 29776 invoked by uid 550); 22 Apr 2022 17:05:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22284 invoked from network); 22 Apr 2022 16:38:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Jqk8WiaVgdsahuEYZYBvQsZbqNizU7cG0Z0TkAl127s=;
        b=ICVr5sxZPb6RJGir4ZHAms0DHjW3vejr5H+CpFcLnBYlPFN9hMOkFNMSB2k+Or9G4O
         aEXCDGcmQH2Q+eZAxH39N+sp7sMzR1Z/IRVB+wSXpOKS0G/gOVtcknzwCQNnWW9wxq8S
         QCqD+4BrvEcCPJfzaVWGqqfJgQes2ebSOkWK0AXNdGISYoWeIZAbSsif9FbS25rQUAyk
         vCx7DZ02BsecKGYItKkFcyppMwb5TKPr5+vRbWE6zoj6x45VhXKWT+UzNe8wuYEBwYQi
         NIUdtLaPo7rhkdb7TXOXTREr4mjwXSvUwmMPRnNIlFxEz7EScL/wpGPxacnV9eGM2zEi
         4REw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Jqk8WiaVgdsahuEYZYBvQsZbqNizU7cG0Z0TkAl127s=;
        b=QRHG2hVO0sQOMb9ZhuW2F6O8gU5xOLbvqs2PFJre5LgQyw/QXLrIug7RqI76NmOmgT
         oZnQPAw2xbsu5inaExMi3PXhg8KcnOWp34gKOk5E0oz99Vh4+R4zzsq5Zro7sVNOARqC
         Kl0Q9n/QAbrgDdMBEnUIWrWT3+NGihjWKp2cbflSFrmU8L6cfW5cObcezGeEa9lnWXaW
         N8h2oYEKzIyvaSOPkzAw+SNwfDUV/JnKhRkM18k3iw5LDNguSluVcs0aWWMyxNzaNhbh
         U2ZZZATj6iQBeoiru1XSGmdWqldyqR6b6ar1m2owqEdWzyTSkH6BYJVrfFvb192ao3oh
         VUlg==
X-Gm-Message-State: AOAM532MvSDrDe4bZZ7+2L1cX0OdxqfZvxt3qd96GleaTkazcp1qDThH
	NY4WK8p1zRlb7/dh50VrE9H1JBeZXQGkw45N3hyjmWprzWk=
X-Google-Smtp-Source: ABdhPJwYtjDctHToKgRZk3LjYTr+5IUx6SDmahdEoUTIcZAkBZnGTMJLiZPrbq1nUljwMxNoBiAY5KFBw4B3DuLHBTw=
X-Received: by 2002:a81:9d5:0:b0:2f4:dd93:4513 with SMTP id
 204-20020a8109d5000000b002f4dd934513mr5578227ywj.54.1650645471799; Fri, 22
 Apr 2022 09:37:51 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGAvPXmkfcZaDKtSK9wdZrreHGR48oC7HUPQO3gXJm_BwA@mail.gmail.com>
In-Reply-To: <CABdrxGAvPXmkfcZaDKtSK9wdZrreHGR48oC7HUPQO3gXJm_BwA@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Fri, 22 Apr 2022 09:37:40 -0700
Message-ID: <CABdrxGC5N9J4TqhzAOVpKuFkYijWREVtj5ToB5aD+GQx-YDsJA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ff9d8a05dd40d8ec"
Subject: [oss-security] [kubernetes] CVE-2021-25745: Ingress-nginx `path` can be pointed to
 service account token file

--000000000000ff9d8a05dd40d8ec
Content-Type: text/plain; charset="UTF-8"

Issue Details

A security issue was discovered in ingress-nginx
<https://github.com/kubernetes/ingress-nginx> where a user that can create
or update ingress objects can use the `spec.rules[].http.paths[].path`
field of an Ingress object (in the `networking.k8s.io` or `extensions` API
group) to obtain the credentials of the ingress-nginx controller. In the
default configuration, that credential has access to all secrets in the
cluster.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L>),
and assigned CVE-2021-25745.
Affected Components and Configurations

This bug affects ingress-nginx. If you do not have ingress-nginx installed
on your cluster, you are not affected. You can check this by running
`kubectl get po -n ingress-nginx`.

Multitenant environments where non-admin users have permissions to create
Ingress objects are most affected by this issue.
Affected Versions

   -

   <v1.2.0

Fixed Versions

   -

   v1.2.0-beta.0
   -

   v1.2.0

Mitigation

If you are unable to roll out the fix, this vulnerability can be mitigated
by implementing an admission policy that restricts the
`spec.rules[].http.paths[].path` field on the networking.k8s.io/Ingress
resource to known safe characters (see the newly added rules
<https://github.com/kubernetes/ingress-nginx/blame/main/internal/ingress/inspector/rules.go>,
or the suggested value for annotation-value-word-blocklist
<https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/configmap/#annotation-value-word-blocklist>
).

Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See ingress-nginx Issue #8502
<https://github.com/kubernetes/ingress-nginx/issues/8502>for more details.
Acknowledgements

This vulnerability was reported by Gafnit Amiga.

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--000000000000ff9d8a05dd40d8ec--
