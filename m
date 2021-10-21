X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2464" "Thursday" "21" "October" "2021" "09:26:08" "-0700" "CJ Cullen" "cjcullen@google.com" nil "105" "[oss-security] [kubernetes] CVE-2021-25742: Ingress-nginx custom snippets allows retrieval of ingress-nginx serviceaccount token and secrets across all namespaces" nil nil nil "10" nil nil (number mark "U       cjcullen@goo Oct 21  105/2464  " thread-indent "\"[oss-security] [kubernetes] CVE-2021-25742: Ingress-nginx custom snippets allows retrieval of ingress-nginx serviceaccount token and secrets across all namespaces\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [kubernetes] CVE-2021-25742: Ingress-nginx custom snippets allows retrieval of ingress-nginx serviceaccount token and secrets across all namespaces" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17920 invoked by uid 550); 21 Oct 2021 17:09:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28356 invoked from network); 21 Oct 2021 16:26:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=gbqll318EuiUdqtggPAxwxaGFfNHT0MKSTMe8vx62qY=;
        b=XVEisxN4V46StWKxZ3qXu7Z1uraPVoMZIpibr2LVeZiiIkJPDOMHGerNBUWOMc3bbf
         s3xaw5xMTa322LF/W9hwHX5HGsBiIxD/0qjS+lcgdkQwyCuFlzVC8rryg/lwnlFij2e0
         woK6dRfI21rdjHeMM7r6bBO866E9x7tRkaYi/gkzT3jU7dwAzTn/urhyAu5Jig0q9gRt
         rA5g43iPg8EUp0rINcDvgpFfNT8d8855LldjJgHctnnni3nBhByQ8R93/WL3zV0Rnexo
         SU+SseIVl9h38yi/b+4SeKn9FPBODNzOTnJRQqjKsEhNLKw/HN6g64JDBebBlo5jNfdP
         i90A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gbqll318EuiUdqtggPAxwxaGFfNHT0MKSTMe8vx62qY=;
        b=1G8VUSv4wvRgokp52v2nxZkyx96/rW+fI2BXyHegi1CTx9oyV1nmvZldAF3R+yJzin
         ATXpJ/POnODV08YprKhardBr4r+9MPfrgtax9kKd1Fdtx489ba9e0Cu+UJ/wy/ngW9VS
         cNPSTA7Q0tlEZLAYF3EQyBnUb3iwWhhh9aWqte6BBgBK5mXFQojfBD3WKUgG/Uv4mms9
         KjpVhfr1am0/b1UdJJ2mIvaAW20kOhcw6frtKQr0eT6eJeVoIAEs/iXJh69K4+ZMeyrU
         Uk1Q8w9Kiu5EZcMh2/qT+kRlxnMCY6cfGcs3/ElXAZfs+5c/DEWQ+/03hM09IjTLHOsZ
         uexQ==
X-Gm-Message-State: AOAM530qvWjLAxyMd9S7UwdHMCOHf9wQ3czs4r2nUkDI4ibtCmnghWQH
	JfTf02b4YLJEf3YVZKUVQoyfQ6JJtSz3mQBChYKJjV2VlvQsuw==
X-Google-Smtp-Source: ABdhPJycizO5rNdeKqdDsCAevIRgw8GOVeroYGQRSEnynbDscPz7lXmNeS3OxOb2/oe7PFyyiLzEs0X+S5a0mzVe5OQ=
X-Received: by 2002:a25:3a05:: with SMTP id h5mr7671761yba.306.1634833581483;
 Thu, 21 Oct 2021 09:26:21 -0700 (PDT)
MIME-Version: 1.0
From: CJ Cullen <cjcullen@google.com>
Date: Thu, 21 Oct 2021 09:26:08 -0700
Message-ID: <CABdrxGAGO99O4ZfiCMO2tqmjSZtDZE+q9vL3cUP0AkMGjFCPMg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e4a7f105cedf5a3f"
Subject: [oss-security] [kubernetes] CVE-2021-25742: Ingress-nginx custom snippets allows
 retrieval of ingress-nginx serviceaccount token and secrets across all namespaces

--000000000000e4a7f105cedf5a3f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A security issue was discovered in ingress-nginx where a user that can
create or update ingress objects can use the custom snippets feature to
obtain all secrets in the cluster.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:L/A:L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U=
/C:H/I:L/A:L>),
and assigned CVE-2021-25742.
Affected Components and Configurations

This bug affects ingress-nginx.

Multitenant environments where non-admin users have permissions to create
Ingress objects are most affected by this issue.
Affected Versions with no mitigation

   -

   v1.0.0
   -

   <=3D v0.49.0

Versions allowing mitigation

This issue cannot be fixed solely by upgrading ingress-nginx. It can be
mitigated in the following versions:

   -

   v1.0.1
   -

   v0.49.1

Mitigation

To mitigate this vulnerability:

   1.

   Upgrade to a version that allows mitigation, (>=3D v0.49.1 or >=3D v1.0.=
1)
   2.

   Set allow-snippet-annotations
   <https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configurati=
on/configmap/#allow-snippet-annotations>
   to false in your ingress-nginx ConfigMap based on how you deploy
   ingress-nginx:


Static Deploy Files

Edit the ConfigMap for ingress-nginx after deployment

kubectl edit configmap -n ingress-nginx ingress-nginx-controller

Add directive:

data:

  allow-snippet-annotations: =E2=80=9Cfalse=E2=80=9D



More information on the ConfigMap here
<https://kubernetes.github.io/ingress-nginx/user-guide/nginx-configuration/=
configmap/>


Deploying Via Helm

Set controller.allowSnippetAnnotations to false in the Values.yaml or add
the directive to the helm deploy

helm install [RELEASE_NAME] --set controller.allowSnippetAnnotations=3Dfalse
ingress-nginx/ingress-nginx

https://github.com/kubernetes/ingress-nginx/blob/controller-v1.0.1/charts/i=
ngress-nginx/values.yaml#L76

Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See ingress-nginx Issue #7837
<https://github.com/kubernetes/ingress-nginx/issues/7837> for more details.
Acknowledgements

This vulnerability was reported by Mitch Hulscher.

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--000000000000e4a7f105cedf5a3f--
