X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2935" "Monday" "7" "December" "2020" "09:11:48" "-0800" "Tim Allclair" "timallclair@gmail.com" "<CALXpagzJ3+xVHu8S+BSpKss7BtKe+hvAFe_wPyr46V4_CVn5Dw@mail.gmail.com>" "71" "[oss-security] [kubernetes] CVE-2020-8554: Man in the middle using LoadBalancer or ExternalIPs" nil nil nil "12" "2020120717:11:48" "[oss-security] [kubernetes] CVE-2020-8554: Man in the middle using LoadBalancer or ExternalIPs" (number mark "U       timallclair@ Dec  7   71/2935  " thread-indent "\"[oss-security] [kubernetes] CVE-2020-8554: Man in the middle using LoadBalancer or ExternalIPs\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [kubernetes] CVE-2020-8554: Man in the middle using LoadBalancer or ExternalIPs" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8165 invoked by uid 550); 7 Dec 2020 17:13:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7726 invoked from network); 7 Dec 2020 17:12:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=/4zKyl/GzHVpnbd033mZzFicdduKafOYtBDSlSs/lfs=;
        b=ByXwhv/5XE0HMRufbT4dDZ4pX4gDQ0sphIO9DviJClr81ewYHy+PQOsO7DHNI184sE
         A15WebxAR28gqF3dVpT4H0zN1kbyUKK5GeOElg1UpizV1H0GSe3AGIWDcAJv0e/373y9
         0x8YgYnKjcbbmtHONAeq0/BdW+hK+ium9jXWa15DNGP8GkOcJjQ+Pv0RA1scyQv0YJf1
         IhrP1xTK1NWU73f9X9pwPlo40v9MLCIT1XucSibs6FDoo1uxYCl2WUEpkFHhr50FU4Kx
         co2tEYhP4MH3dEfdvHKcSgZkl9LSgaNH4Myhz5wCjIKq8qorYCh7aCeQUkwJele0YDoa
         wMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/4zKyl/GzHVpnbd033mZzFicdduKafOYtBDSlSs/lfs=;
        b=eICDSjxv+mQqx1tRRtCDdaZhvPx+WJm7jOCNxV3uL8RJl+WkK+2gzuTO6JqgFxdU1B
         IGW4COERfQjbBNGc+dGWzSmwFI616NEww3Spz8ZioE5Rr0HmUbvftKMC+6BaRQSS4JjH
         JOSDIZRY/mZv/27recuX8qTUCtVAPGwh1+Gy2N2dqD6tsRYW7N0JL/m3wkUWyo3yrl9V
         uXBRevxsnDkDLJzz1iicZj4e+vpsmRzcH14VDYbRFAkheK7Foq2GQei0zVI6WRTBlXDH
         zjdr14+H5WZvKZ0nLTCFxEI+q2jSv6d42kBaKv9WhwL691JIaFC6zHO1fHw18CJuFl7R
         vFcA==
X-Gm-Message-State: AOAM531UoRbkAXwHcdoErbWeBe6gaC3WnMjjuniGmDhctZnfobbbx3Ov
	mV4cT6IiUge2BVuxGjO9zw6x8BOK/sduaXbhMMcGfhbougkRMQ==
X-Google-Smtp-Source: ABdhPJzaBfqchvcaBT+EKojyQrCQ6J8nqNLHf7HRNKTH5ZqqZLKMg9WqxPo7kwtzy4WzzUyxyflJH1esKhilp+3U8Js=
X-Received: by 2002:a37:bac7:: with SMTP id k190mr25440351qkf.464.1607361119252;
 Mon, 07 Dec 2020 09:11:59 -0800 (PST)
MIME-Version: 1.0
From: Tim Allclair <timallclair@gmail.com>
Date: Mon, 7 Dec 2020 09:11:48 -0800
Message-ID: <CALXpagzJ3+xVHu8S+BSpKss7BtKe+hvAFe_wPyr46V4_CVn5Dw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000089f2ee05b5e2ec4a"
Subject: [oss-security] [kubernetes] CVE-2020-8554: Man in the middle using LoadBalancer or ExternalIPs

--00000000000089f2ee05b5e2ec4a
Content-Type: text/plain; charset="UTF-8"

A security issue was discovered with Kubernetes affecting multitenant
clusters. If a potential attacker can already create or edit services and
pods, then they may be able to intercept traffic from other pods (or nodes)
in the cluster.

This issue has been rated medium severity (
CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:L
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:L>),
and assigned CVE-2020-8554.

An attacker that is able to create a ClusterIP service and set the
spec.externalIPs field can intercept traffic to that IP. An attacker that
is able to patch the status (which is considered a privileged operation and
should not typically be granted to users) of a LoadBalancer service can set
the status.loadBalancer.ingress.ip to similar effect.

This issue is a design flaw that cannot be mitigated without user-facing
changes. With this public announcement, we can begin conversations about a
long-term fix.
Affected Components and Configurations

All Kubernetes versions are affected. Multi-tenant clusters that grant
tenants the ability to create and update services and pods are most
vulnerable.
Mitigations

There is no patch for this issue, and it can currently only be mitigated by
restricting access to the vulnerable features. Because an in-tree fix would
require a breaking change, we will open a conversation about a longer-term
fix or built-in mitigation after the embargo is lifted

To restrict the use of external IPs we are providing an admission webhook
container: k8s.gcr.io/multitenancy/externalip-webhook:v1.0.0. The source
code and deployment instructions are published at
https://github.com/kubernetes-sigs/externalip-webhook.

Alternatively, external IPs can be restricted using OPA Gatekeeper
<https://github.com/open-policy-agent/gatekeeper>. A sample
ConstraintTemplate and Constraint can be found here:
https://github.com/open-policy-agent/gatekeeper-library/tree/master/library/general/externalip
.

No mitigations are provided for LoadBalancer IPs since we do not recommend
granting users patch service/status permission. If LoadBalancer IP
restrictions are required, the approach for the external IP mitigations can
be copied.
Detection

ExternalIP services are not widely used, so we recommend manually auditing
any external IP usage. Users should not patch service status, so audit
events for patch service status requests authenticated to a user may be
suspicious.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See the GitHub issue for more updates:
https://github.com/kubernetes/kubernetes/issues/97076
Acknowledgements

This vulnerability was reported by Etienne Champetier of Anevia.

Thank You,

Tim Allclair on behalf of the Kubernetes Product Security Committee(

--00000000000089f2ee05b5e2ec4a--
