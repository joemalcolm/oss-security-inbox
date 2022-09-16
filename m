Received: (qmail 29829 invoked by uid 550); 16 Sep 2022 20:01:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17473 invoked from network); 16 Sep 2022 19:41:58 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=npHgSiHkTcNWlvjjzqrMIPy6ruBvWRR8EnjVdmKSxuo=;
        b=MW6psxE6I1O0KsqAH7NVc7rydy7HBWvoPIvdsBFOhKAbns8OIzjR2XSiZ+pQCoYQwg
         vJUMqgb+qoR8Im7YXmCvK7gaPR9/mmt0emN6jtYI87WcoE+ovkroL0Id2xdDVTZ3U2RI
         woGh2KwOvdn1/aP2vP+NfRGjFxp5+kbSFZ28kXBX1v4hEh5kSJr70Y+wCFf1gttLu0g4
         XLPugtXH+5vvu4xftCan1c37K5m0oA921rLahbjGoR8qaHIAPWMGo514f84lXpBMz8Ac
         B/icv6qsn706JQTTAlod1Z5n/yhKv4ypUZr4dcLidWyjyvo4Sruc+DgXLGgR7+9XxWAh
         lYSw==
X-Gm-Message-State: ACrzQf21Z2fpUxuxbrj8ctPJOJkr6GTHhH848ed1Yq6WmFpeMxrlmoGn
	PgOLSGuDl9rNiBmcCtCAYUy5d6XZqt8=
X-Google-Smtp-Source: AMsMyM7+4vQfBD/m7eIeCby8PydgnfnB8EsD4EGcJCMDlcz0a2XDcfQq+3MJ6sTt6bFU2bMjOOZxVw==
X-Received: by 2002:a05:651c:2212:b0:26c:2baf:652e with SMTP id y18-20020a05651c221200b0026c2baf652emr2028371ljq.84.1663357305895;
        Fri, 16 Sep 2022 12:41:45 -0700 (PDT)
X-Received: by 2002:a05:6512:12d5:b0:49b:f391:9614 with SMTP id
 p21-20020a05651212d500b0049bf3919614mr2056221lfg.464.1663357304852; Fri, 16
 Sep 2022 12:41:44 -0700 (PDT)
MIME-Version: 1.0
From: Monis Khan <i@monis.app>
Date: Fri, 16 Sep 2022 15:41:32 -0400
X-Gmail-Original-Message-ID: <CALrOjABKUtfOem9bF=La6qnf3GFkEKTngeb95MWRDYSGNYfHCA@mail.gmail.com>
Message-ID: <CALrOjABKUtfOem9bF=La6qnf3GFkEKTngeb95MWRDYSGNYfHCA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004a581905e8d08da3"
Subject: [oss-security] [kubernetes] CVE-2022-3172: Aggregated API server can cause clients
 to be redirected (SSRF)

--0000000000004a581905e8d08da3
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in kube-apiserver that allows an aggregated
API server to redirect client traffic to any URL. This could lead to the
client performing unexpected actions as well as forwarding the client's API
server credentials to third parties.

This issue has been rated *medium* (
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:H/UI:R/S:C/C:L/I:L/A:L)
(5.1), and assigned *CVE-2022-3172*
Am I vulnerable?

All Kubernetes clusters with the following versions that are running
aggregated API servers are impacted. To identify if you have aggregated API
servers configured, run the following command:

kubectl get apiservices.apiregistration.k8s.io -o=jsonpath='{range
.items[?(@.spec.service)]}{.metadata.name}{"\n"}{end}'

Affected Versions

   - kube-apiserver v1.25.0
   - kube-apiserver v1.24.0 - v1.24.4
   - kube-apiserver v1.23.0 - v1.23.10
   - kube-apiserver v1.22.0 - v1.22.13
   - kube-apiserver <= v1.21.14

How do I mitigate this vulnerability?

Aside from upgrading, no direct mitigation is available.

Aggregated API servers are a trusted part of the Kubernetes control plane,
and configuring them is a privileged administrative operation. Ensure that
only trusted cluster administrators are allowed to create or modify
APIService configuration, and follow security best practices with any
aggregated API servers that may be in use.
Fixed Versions

   - kube-apiserver v1.25.1
   - kube-apiserver v1.24.5
   - kube-apiserver v1.23.11
   - kube-apiserver v1.22.14

*Fix impact:* The fix blocks all 3XX responses from aggregated API servers
by default. This may disrupt an aggregated API server that relies on
redirects as part of its normal function. If all current and future
aggregated API servers are considered trustworthy and redirect
functionality is required, set the
--aggregator-reject-forwarding-redirect Kubernetes
API server flag to false to restore the previous behavior.

To upgrade, refer to the documentation:
https://kubernetes.io/docs/tasks/administer-cluster/cluster-upgrade
Detection

Kubernetes audit log events indicate the HTTP status code sent to the
client via the responseStatus.code field. This can be used to detect if an
aggregated API server is redirecting clients.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/112513
Acknowledgements

This vulnerability was reported by Nicolas Joly & Weinong Wang @weinong
from Microsoft.

The issue was fixed and coordinated by Di Jin @jindijamie @enj @liggitt
@lavalamp @deads2k and @puerco.

Thank You,

Mo Khan on behalf of the Kubernetes Security Response Committee

--0000000000004a581905e8d08da3--
