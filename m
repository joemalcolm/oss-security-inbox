X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2375" "Thursday" "30" "May" "2019" "14:57:25" "-0700" "Brandon Philips" "bphilips@redhat.com" "<CAHHNuYcXG6rqgA+y3efW8yb5Kbd9CgJq_MfgKz8cUgp4AqbXRg@mail.gmail.com>" "81" "[oss-security] [ANNOUNCE] Security regression in Kubernetes kubelet v1.13.6 and v1.14.2 only - CVE-2019-11245" nil nil nil "5" "2019053021:57:25" "[oss-security] [ANNOUNCE] Security regression in Kubernetes kubelet v1.13.6 and v1.14.2 only - CVE-2019-11245" (number mark "U       bphilips@red May 30   81/2375  " thread-indent "\"[oss-security] [ANNOUNCE] Security regression in Kubernetes kubelet v1.13.6 and v1.14.2 only - CVE-2019-11245\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ANNOUNCE] Security regression in Kubernetes kubelet v1.13.6 and v1.14.2 only - CVE-2019-11245" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32424 invoked by uid 550); 31 May 2019 08:49:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29996 invoked from network); 30 May 2019 21:57:50 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=M6qvgQxvc2NoNs51A/vCpNawu3/h1Z74Ej3zfAZdVqg=;
        b=BIxaJaFkI2tzNa3bhvecEjWwwp6NldRms7zegzaWQ8//RjCV0FnP25Cnvz7zugFB0w
         ulnTzth+75OIdvIpx/COzDn294sC6zB58P1iQUetrXYE0ffbY2shFavcdMty/B7/Qm3H
         OA3voB3Gi/r0dKENDAzmOsjd8zOKEuvGdOpRE5I6vRt+ANMtmlLMCk1xGEt62wjS9DJr
         URsQuGvhNavDfG0dF/rd0AAhmac1PakINSgdBMHJFqFqRbME/fllLcqKlnaD+BqoGnpr
         W/T2pVbsa72qKZ8oJ4pTtORmog37mGUN8BdT9bzh5NWwCHqBVVQq5jZFGL+KMxru8vf/
         sNSA==
X-Gm-Message-State: APjAAAX5kIodOHAGsgd/yB9BUDkgt8zrVaXUjpmgNYJHk6HQRT6Gt4cr
	6VLWf6daeQPqcGCGlTsoKMBUDDSmQ77UmXZi/gUlcw==
X-Google-Smtp-Source: APXvYqw+KagddfOZYKXPF7cTVa0U7FemPkZoYPusHKE9VYwyK3ecPMzE84EkOXWKgAPMNs/sfWcD1o71ybSc9wfixn8=
X-Received: by 2002:a02:2e52:: with SMTP id u18mr4372119jae.84.1559253458440;
 Thu, 30 May 2019 14:57:38 -0700 (PDT)
MIME-Version: 1.0
From: Brandon Philips <bphilips@redhat.com>
Date: Thu, 30 May 2019 14:57:25 -0700
Message-ID: <CAHHNuYcXG6rqgA+y3efW8yb5Kbd9CgJq_MfgKz8cUgp4AqbXRg@mail.gmail.com>
To: "Kubernetes developer/contributor discussion" <kubernetes-dev@googlegroups.com>, 
	kubernetes-security-announce@googlegroups.com, 
	kubernetes-security-discuss <kubernetes-security-discuss@googlegroups.com>, 
	oss-security@lists.openwall.com, 
	kubernetes-distributors-announce@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000817840058a21fc9e"
Subject: [oss-security] [ANNOUNCE] Security regression in Kubernetes kubelet v1.13.6 and
 v1.14.2 only - CVE-2019-11245

--000000000000817840058a21fc9e
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community-

A security-related issue was discovered in kubelet versions v1.13.6 and
v1.14.2. The issue is medium severity and can be mitigated with a pod spec
configuration change OR by *****downgrading*** kubelets to v1.13.5 or
v1.14.1.

***Vulnerability Details***

When a container runs for the first time on a node, it correctly respects
the UID set by the container image (e.g. USER in a Dockerfile). However, on
the second run, the container will run as UID 0 (aka root) which can be an
undesired escalated privilege.

Pods that specify an explicit runAsUser are unaffected and continue to work
properly.

PodSecurityPolicies that force a runAsUser setting are also unaffected and
continue to work properly.

Pods that specify mustRunAsNonRoot:true will refuse to start the container
as uid 0, which can affect availability.

This issue is filed as CVE-2019-11245. See
https://github.com/kubernetes/kubernetes/issues/78308 for more details.

***Am I vulnerable?***

Run this to print out all nodes and their kubelet version:


kubectl get nodes -o=jsonpath='{range
.items[*]}{.status.nodeInfo.machineID}{"\t"}{.status.nodeInfo.kubeletVersion}{"\n"}{end}'

If the output lists Kubelet versions listed below you are running a
vulnerable version:

   -

   v1.13.6
   -

   v1.14.2


***How do I mitigate the vulnerability?***

There are two potential mitigations to this issue:


   -

   Downgrade to kubelet v1.13.5 or v1.14.1 as instructed by your Kubernetes
   distribution.
   -

   Set RunAsUser on all pods in the cluster that should not run as root.
   This is a Security Context feature; the docs are at
   https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-pod


***How do I upgrade?***

An upgrade addressing this issue is not yet available. But, will appear in
v1.13.7 and v1.14.3 ASAP and will be announced here.

***Thank you***

Thank you to the <https://github.com/kubernetes/kubernetes/pull/78178> many
<https://github.com/kubernetes/kubernetes/issues/78308> reporters
<https://github.com/rancher/k3s/issues/511>, and Tim Pepper as release
manager for the coordination in making this announcement.

Thank You,

Brandon on behalf of the Kubernetes Product Security Committee

--000000000000817840058a21fc9e--
