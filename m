Received: (qmail 5192 invoked by uid 550); 6 Jul 2023 21:55:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17852 invoked from network); 6 Jul 2023 21:28:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688678881; x=1691270881;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=te3quHZPrAVEB+WNjFVnc1SnG60NJORTEiglXb3lx/0=;
        b=p7LS5m5No482yTp2xMpMWL9jWaIt8d5YhC626XD53VQh1e4a4S2Kz4NCv7jK3+fTwR
         MnPJ24wAMX6c1nnG50e1fg6uLbsy2YMX5LFHtMCFj3229papjYPZpTaAOaNtMEDEFtCN
         t2EZVu1k4PQOcikCJ8WwJDZmqxALcYQduBbJpDkJaDhXOX49ITmJvs0tNHjW/z1yr0j6
         JA5od9TfM6OAqaRxjecQ+9FSSDqwFOV7dfpn3MeeRigxMJOh96DG36OlBxYFA6TR2Fpq
         pmjTHBYoG+PvwuCyuu3viZt98MXVmuhxV8SkUmlT0SUhP6PtKsr3uSsWEBfl+obOoCdi
         6S4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688678881; x=1691270881;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=te3quHZPrAVEB+WNjFVnc1SnG60NJORTEiglXb3lx/0=;
        b=ltbzzGiIgjofcNYs4PxbrNFCR9sGx54+25VdNMe6nfPaMXeCdSO+938lZklrokcafA
         GN9qe1WjjBNgTRlE173gOfx5fktYE4+7ykPHNAZbJaGIwZw/ZqYY5iJw5v4dU6mf8BJu
         JaLoVjUg/J0jFPbvarv3Mt3vrBLHURZ8GfOQ8iRsMX0IBpK/3mZWePReRb5LMRU2Bq/g
         ZGtxSEmFwRTXBZARfZbML6S5cU0LgkAv+de4sKBZ4QWZP5FL0HBEKI1FfWnaw2+vYYhv
         7py3xpAXqvsy1jq6RPLY5pdoFO3zJudYKjsdTiFXLFVB+e7EeouenM8K55O8G2q1RBlo
         a51w==
X-Gm-Message-State: ABy/qLYQMB76lmoc28vZjB4beWmOJQDEEIo79gyzpKJZLA4XA+MHryh6
	Nrs7w7PT/k4uj2+nS7uLMCtJcWy3wGAnEwxyx1tRefuNdo0=
X-Google-Smtp-Source: APBJJlGGpuxNMlY5bXVSEgCqPCWHtbn5NAdj8a34sZbB0wt4UvIEe1AuoH0G5wcLMHaEKhd34BFW/O76HS7D5Dq1j2I=
X-Received: by 2002:a25:a241:0:b0:c5f:85f5:a0e3 with SMTP id
 b59-20020a25a241000000b00c5f85f5a0e3mr2831320ybi.13.1688678880677; Thu, 06
 Jul 2023 14:28:00 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Thu, 6 Jul 2023 14:27:49 -0700
Message-ID: <CAL7+V1zEJQLeNE2Gm-1SaY4Gv1fRsTTtJNFQVKa85s8H0TyeNw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000d2942605ffd83075"
Subject: [oss-security] [kubernetes] CVE-2023-2728: Bypassing enforce mountable secrets
 policy imposed by the ServiceAccount admission plugin Rita Zhang <rita.z.zhang@gmail.com>

--000000000000d2942605ffd83075
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where users may be able to
launch containers that bypass the mountable secrets policy enforced by the
ServiceAccount admission plugin when using ephemeral containers. The policy
ensures pods running with a service account may only reference secrets
specified in the service account=E2=80=99s secrets field. Kubernetes cluste=
rs are
only affected if the ServiceAccount admission plugin and the
*kubernetes.io/enforce-mountable-secrets
<http://kubernetes.io/enforce-mountable-secrets>* annotation are used
together with ephemeral containers.

This issue has been rated *Medium* (
CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U=
/C:H/I:H/A:N>),
and
assigned CVE-2023-2728

*Am I vulnerable?*
Clusters are impacted by this vulnerability if all of the following are
true:

   1. The ServiceAccount admission plugin is used. Most cluster should have
   this on by default as recommended in
   https://kubernetes.io/docs/reference/access-authn-authz/admission-contro=
llers/#serviceaccount
   2. The *kubernetes.io/enforce-mountable-secrets
   <http://kubernetes.io/enforce-mountable-secrets>* annotation is used by
   a service account. This annotation is not added by default.
   3. Pods are using ephemeral containers.

*Affected Versions*

   - kube-apiserver v1.27.0 - v1.27.2
   - kube-apiserver v1.26.0 - v1.26.5
   - kube-apiserver v1.25.0 - v1.25.10
   - kube-apiserver <=3D v1.24.14

*How do I mitigate this vulnerability?*
This issue can be mitigated by applying the patch provided for the
kube-apiserver component. The patch prevents ephemeral containers from
bypassing the mountable secrets policy enforced by the ServiceAccount
admission plugin.

*Fixed Versions*

   - kube-apiserver v1.27.3
   - kube-apiserver v1.26.6
   - kube-apiserver v1.25.11
   - kube-apiserver v1.24.15

These releases have been published today, June 14th, 2023.

*Detection*
Pod update requests using an ephemeral container that exploits this
vulnerability with unintended secret will be captured in API audit logs.
You can also use kubectl get pods to find active pods with ephemeral
containers running with a secret that is not referenced by the service
account in your cluster.

*Additional Details*
See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/118640

Thank You,
Rita Zhang on behalf of the Kubernetes Security Response Committee

--000000000000d2942605ffd83075--
