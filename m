Received: (qmail 11273 invoked by uid 550); 10 Nov 2022 17:30:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5437 invoked from network); 10 Nov 2022 17:27:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8k6W8LeOjFfVOl6jCUIMYl6AGJuwiHqJJ8wxsXQbiJE=;
        b=qla7adEwSINeMFEoO8AjLTVv6EX3LM3HaXfxUk5rte9/3jYSq5z+O9ssvkLS2CSOOf
         b277ZeW5SPxHQLKaeqJS+z0bSJ9dnkidYrOjjSKyPZGH73RFHIeDVy/zh3KLzFzuJXm+
         7WQ1v8nrl14ocL9gYiVm/L+YstU+uGKblSb6aTUlVgpUUY189X0rCt6lsdfeRbqjI+0b
         PZHxTVzKEvKG7iJzily4cmZDpCv/8opE2gQWIjm/ybStDooR0nVqG/x7w7TWeT9+XPeY
         OawS6u/TSS0vPpMQYqyDDSx6ta0qiwCBZkQXyU6J4d/ERx9SlZj04uYN/xWRmZ0pE8sG
         fpFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8k6W8LeOjFfVOl6jCUIMYl6AGJuwiHqJJ8wxsXQbiJE=;
        b=AJFABVwrFLLhRWXfgM6VnlQHkOUPLzoxmPoQulmIiIxlH/XnGcdw26cqCPIoLQrNII
         U1rbUYYjP3wPXf4HwwGizmwNrVyA32rx0TpxlcI42oCewStcixZMEHqeb/vggnC1Q/Pt
         jxkre546dziBYnc/0CEni5FodcAsFX1mfKscBTD8/GylDpgvrFzQ5zozgkLx8xHnw7zd
         d1/GiA9Spvkz0XzfdId//9Fw86HNkPdVP2yAeBjrGOU1pVrQxWY/ODOFMwR2wNflUyMq
         FOvQAa9PtSJmh/YrcQAotQGLvgIY5WHVHZvpc1yCWsCW4gJHO1Q9odxeLoZgsNrTBr1H
         ka4w==
X-Gm-Message-State: ACrzQf3X34ch14wqOj80HI7LVVmr9BTjHEwnn6urSzgZgrD2WdWmzXZQ
	So4MD9D6Q+3dsDzxsyDOTNMTj/E3gutwELTq/VS9sIUlsO8=
X-Google-Smtp-Source: AMsMyM5K2Eb0HpXxiHOKDbxd0v1UibL24GAq+Y2rQqt1hDOlnfqfK4k13D2M3af7YaV4rgbqf/cCyIST/AiU2svBvbY=
X-Received: by 2002:a05:6402:22b3:b0:461:6f87:20bb with SMTP id
 cx19-20020a05640222b300b004616f8720bbmr2769725edb.300.1668101211130; Thu, 10
 Nov 2022 09:26:51 -0800 (PST)
MIME-Version: 1.0
From: Tim Allclair <timallclair@gmail.com>
Date: Thu, 10 Nov 2022 09:26:15 -0800
Message-ID: <CALXpagy9180LrnQ_1Ekgek+xj6+iaYRghU+CjRdnWGDcKXxUkQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000238ff305ed2114ea"
Subject: [oss-security] [kubernetes] CVE-2022-3294: Node address isn't always verified when proxying

--000000000000238ff305ed2114ea
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where users may have access
to secure endpoints in the control plane network. Kubernetes clusters are
only affected if an untrusted user can modify Node objects and send proxy
requests to them.

Kubernetes supports node proxying, which allows clients of kube-apiserver
to access endpoints of a Kubelet to establish connections to Pods, retrieve
container logs, and more. While Kubernetes already validates the proxying
address for Nodes, a bug in kube-apiserver made it possible to bypass this
validation. Bypassing this validation could allow authenticated requests
destined for Nodes to to the API server's private network.

This issue has been rated Medium (
CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:U/C:H/I:H/A:H>),
and assigned CVE-2022-3294
Am I vulnerable?

Clusters are affected by this vulnerability if there are endpoints that the
kube-apiserver has connectivity to that users should not be able to access.
This includes:

   -

   kube-apiserver is in a separate network from worker nodes
   -

   localhost services

mTLS services that accept the same client certificate as nodes may be
affected. The severity of this issue depends on the privileges &
sensitivity of the exploitable endpoints.

Clusters that configure the egress selector to use a proxy for cluster
traffic may not be affected.
Affected Versions

   -

   Kubernetes kube-apiserver <= v1.25.3
   -

   Kubernetes kube-apiserver <= v1.24.7
   -

   Kubernetes kube-apiserver <= v1.23.13
   -

   Kubernetes kube-apiserver <= v1.22.15

How do I mitigate this vulnerability?

Upgrading the kube-apiserver to a fixed version mitigates this
vulnerability.

Aside from upgrading, configuring an egress proxy for egress to the cluster
network
<https://kubernetes.io/docs/tasks/extend-kubernetes/setup-konnectivity/>
can mitigate this vulnerability.
Fixed Versions

   -

   Kubernetes kube-apiserver v1.25.4
   -

   Kubernetes kube-apiserver v1.24.8
   -

   Kubernetes kube-apiserver v1.23.14
   -

   Kubernetes kube-apiserver v1.22.16

These releases will be published over the course of today, November 10th.

Fix impact: In some cases, the fix can break clients that depend on the
nodes/proxy subresource, specifically if a kubelet advertises a localhost
or link-local address to the Kubernetes control plane.
Detection

Node create & update requests may be included in the Kubernetes audit log,
and can be used to identify requests for IP addresses that should not be
permitted. Node proxy requests may also be included in audit logs.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/113757
Acknowledgements

This vulnerability was reported by Yuval Avrahami of Palo Alto Networks.

Thank You,

Tim Allclair on behalf of the Kubernetes Security Response Committee

--000000000000238ff305ed2114ea--
