X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2549" "Monday" "1" "June" "2020" "09:04:49" "-0700" "Tim Allclair" "tallclair@google.com" "<CADtktAVv41WK8p_caEiJt9VUn5oqYvy8V8nkD4CckB5OG0g0xA@mail.gmail.com>" "89" "[oss-security] CVE-2020-8555: Kubernetes: Half-Blind SSRF in kube-controller-manager" nil nil nil "6" "2020060116:04:49" "[oss-security] CVE-2020-8555: Kubernetes: Half-Blind SSRF in kube-controller-manager" (number mark "U       tallclair@go Jun  1   89/2549  " thread-indent "\"[oss-security] CVE-2020-8555: Kubernetes: Half-Blind SSRF in kube-controller-manager\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-8555: Kubernetes: Half-Blind SSRF in kube-controller-manager" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1508 invoked by uid 550); 1 Jun 2020 16:20:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26316 invoked from network); 1 Jun 2020 16:05:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=YkBQp87H7ybgkgNa0Zfp9/jtUk3Ul1u4TcZowJAAfwI=;
        b=qqgOOXaEUBQZn7S2kOA99I6pRLs6kjruTHI2mDTXWLHisAgmYHrC6DIy+TAC8dvpsW
         nBf+GnuqnU4lR8qD03WI/KRFIeBruRzRzjVJxarahHaSzn1xDar2tQEHScSKJTM2FexF
         DechadH+PiLtJTqCLz0yTmIKZUHnhER7vtw8aamikEhOqwRqBBUfTpN+AJYOL6yuHtVw
         y0hOMYyuH/sdjchwZA8S+YcrjURtxbfworosCrJpodHHjkkHj+rzzz67S8K6m3v6k5Ec
         +EJ4oJSbD9S37bd1u+2mjKQcs37zM6DYCbQY/lfSMjHj7nVe7M2R2ZKlgZrnyL+VniKJ
         fFIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=YkBQp87H7ybgkgNa0Zfp9/jtUk3Ul1u4TcZowJAAfwI=;
        b=RXbg1aKdkNjsqS94zdPrVVl5YVsh7GNLjCU4W9J+7+qWGgeZ3LpEl0P6c9q6Unwhu7
         Y8s1NV84ZjDsePMb8mCMPtJSZ44JlQLlwLQv7r8NBj3fIu3pqgFm+RWW1/SzW7GxM30v
         m0inNtM0PJJXaOT6S9Fv4oW17qYV8hh7pUM3f/F1igifFRUUf07/M7C95i1bnge2JeKj
         TX9XVOqd0TxJbJbDcu/Xx6b2FemK3q+CrEZtQzJVWrFUvxoA5IX64yyeQX40e6VW8jhx
         flm17DweY4u/K2Fz9f0vsxmGDqk/kjr3iN1DVC97ZBcEcagL6LJ3HB1uRGCJsDG1A/87
         RZkg==
X-Gm-Message-State: AOAM533edrezUDLkW0Pmq1Vif7+DnBConF3FraL1+FEktDZzUTfCi1T3
	jjBpL4LLqelqTDNue3AKOC0Rcs5LpQ3ELlezF+r4NA==
X-Google-Smtp-Source: ABdhPJxO4nBoBc15SSMYM961y6/0l38BnjWal/w5RcWw3RT3tco0myjxTolYpx1crAh9GbqiuCgtiDC2tiJL/oMCziM=
X-Received: by 2002:a2e:1617:: with SMTP id w23mr11533485ljd.28.1591027525444;
 Mon, 01 Jun 2020 09:05:25 -0700 (PDT)
MIME-Version: 1.0
From: Tim Allclair <tallclair@google.com>
Date: Mon, 1 Jun 2020 09:04:49 -0700
Message-ID: <CADtktAVv41WK8p_caEiJt9VUn5oqYvy8V8nkD4CckB5OG0g0xA@mail.gmail.com>
To: kubernetes-announce@googlegroups.com, 
	"Kubernetes developer/contributor discussion" <kubernetes-dev@googlegroups.com>, 
	kubernetes-security-announce@googlegroups.com, 
	kubernetes-security-discuss <kubernetes-security-discuss@googlegroups.com>, 
	oss-security@lists.openwall.com, kubernetes+announcements@discoursemail.com
Content-Type: multipart/alternative; boundary="0000000000007be88805a707f6d3"
Subject: [oss-security] CVE-2020-8555: Kubernetes: Half-Blind SSRF in kube-controller-manager

--0000000000007be88805a707f6d3
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

There exists a Server Side Request Forgery (SSRF) vulnerability in
kube-controller-manager that allows certain authorized users to leak up to
500 bytes of arbitrary information from unprotected endpoints within the
master's host network (such as link-local or loopback services).

This issue has been rated medium (
CVSS:3.0/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N
<https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:N>),
and assigned CVE-2020-8555.
Am I vulnerable?

You may be vulnerable if:

   -

   You are running a vulnerable version (see below);
   -

   There are unprotected endpoints normally only visible from the
   Kubernetes master (including link-local metadata endpoints, unauthenticated
   services listening on localhost, or other services in the master's private
   network); and
   -

   Untrusted users can create pods with an affected volume type or modify
   storage classes.

Affected Versions

   -

   kube-controller-manager v1.18.0
   -

   kube-controller-manager v1.17.0 - v1.17.4
   -

   kube-controller-manager v1.16.0 - v1.16.8
   -

   kube-controller-manager < v1.15.11

The affected volume types are: GlusterFS, Quobyte, StorageFS, ScaleIO
How do I mitigate this vulnerability?

Prior to upgrading, this vulnerability can be mitigated by adding endpoint
protections on the master or restricting usage of the vulnerable volume
types (for example by constraining usage with a PodSecurityPolicy
<https://kubernetes.io/docs/concepts/policy/pod-security-policy/#volumes-and-file-systems>
or third-party admission controller such as Gatekeeper
<https://github.com/open-policy-agent/gatekeeper>) and restricting
StorageClass write permissions through RBAC.
Fixed Versions

The information leak was patched in the following versions:

   -

   kube-controller-manager v1.18.1+
   -

   kube-controller-manager v1.17.5+
   -

   kube-controller-manager v1.16.9+
   -

   kube-controller-manager v1.15.12+

To upgrade, refer to the documentation:
https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#upgrading-a-cluster

Further work to protect against SSRF is underway and will be included in an
upcoming patch release (details to follow).
Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/91542

Thank You,

Tim Allclair on behalf of the Kubernetes Product Security Committee

--0000000000007be88805a707f6d3--
