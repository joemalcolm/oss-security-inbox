X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["13062" "Wednesday" "8" "July" "2020" "10:00:00" "-0600" "Joel Smith" "joelsmith@redhat.com" "<CAEftUapuB4c4Le_iJm-w3R9kceNuaE2uALmXE=sWABNZcKFC2Q@mail.gmail.com>" "317" "[oss-security] [Security Advisory] CVE-2020-8558: Kubernetes: Node setting allows for neighboring hosts to bypass localhost boundary" nil nil nil "7" "2020070816:00:00" "[oss-security] [Security Advisory] CVE-2020-8558: Kubernetes: Node setting allows for neighboring hosts to bypass localhost boundary" (number mark "U       joelsmith@re Jul  8  317/13062 " thread-indent "\"[oss-security] [Security Advisory] CVE-2020-8558: Kubernetes: Node setting allows for neighboring hosts to bypass localhost boundary\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [Security Advisory] CVE-2020-8558: Kubernetes: Node setting allows for neighboring hosts to bypass localhost boundary" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25793 invoked by uid 550); 8 Jul 2020 16:19:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18217 invoked from network); 8 Jul 2020 16:02:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594224121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=Y1UKXduAk+sQjcgIK8xCM2nlmfvjbHV9hkJoaHA/EkQ=;
	b=NVNLOXv5HV2hPOTuQ5kwY981iUst0hfb7r5o0kVYpNZLew4jt8Fd2KOn/7vFMkCPidbriY
	Gbnmu0pbptfrzP3XrZ/bh978YFTeSYAGwNIrxIXdNck0HRR3xH/Vor7O9G7mRmHpWOA/Z1
	UxeIGE1fy2AzKrCWHTO8Qns7M3/NaMw=
X-MC-Unique: EDolw6qBOJm4jyVT-Euz6Q-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=rj/KlE+PBrsO97wq4596YvcKIbPyJoaFeG+CUO8dEdI=;
        b=LOWXZnU+R0szeQKySrUSTyo9/TVyYb4b+GT3pjJrIxZKhrSA11sZIIg8SBelkAWxCm
         OmedJ7rCWuKf+f+1+3KPt0lQ0I+y81f2a6LYYsH+r/0r+uaKaE6BQhuQUydH14i5aiSE
         IjIkMIQV/M83FYuHN4w9gqI2QrVewUhOwQv9lwjKQ7AFXyapjyY5ne/+L+bWA8AvHHFW
         iyYCtEXQIa9VJAMbEjaY0wCCt5aesZpddX+e7MDwbTGB4zJNUJx2eXZ1suJjQCRlDrkg
         K1ivgvfZFu3RlomKQLQ4IazbVIDHYcpMYndRK0vFB4w3L6NqE8qbCDzI/Y51qJnc49bp
         WRkQ==
X-Gm-Message-State: AOAM531VRKtkpGX7EJW05UPYNIeS1SrAI2VvbNcwBrCiPgaLbh4TrxSq
	JfxfceQgD2A/pXBlEMbP/JsQeSepbQN+r/UMaUxb3iee7ch5+vxa2GiFQhHd6AKrunHi43Mt5Z3
	aYS/u7aipmCmhvMyphHvO9KGdnXUL//D3ZtV/7CX3f6TA
X-Received: by 2002:a05:6a00:78a:: with SMTP id g10mr36996873pfu.0.1594224114537;
        Wed, 08 Jul 2020 09:01:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSPUTwMGk2ZKO3acLN+2FYqLN4J43bMh4mo5GWb/RuwS3Qubhc+S7oHpj6BHXO2nVkT+cjaDSaJNaJloJXZKQ=
X-Received: by 2002:a05:6a00:78a:: with SMTP id g10mr36996778pfu.0.1594224113268;
 Wed, 08 Jul 2020 09:01:53 -0700 (PDT)
MIME-Version: 1.0
From: Joel Smith <joelsmith@redhat.com>
Date: Wed, 8 Jul 2020 10:00:00 -0600
Message-ID: <CAEftUapuB4c4Le_iJm-w3R9kceNuaE2uALmXE=sWABNZcKFC2Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=joesmith@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000f6d62405a9f03937"
Subject: [oss-security] [Security Advisory] CVE-2020-8558: Kubernetes: Node setting allows
 for neighboring hosts to bypass localhost boundary

--000000000000f6d62405a9f03937
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Open Source Community,

A security issue was discovered in kube-proxy which allows adjacent hosts
(hosts running in the same LAN or layer 2 domain) to reach TCP and UDP
services on the node(s) which are bound to 127.0.0.1. For example, if a
cluster administrator runs a TCP service that listens on 127.0.0.1:1234,
because of this bug, that service would be potentially reachable by other
hosts on the same LAN as the node, or by containers running on the same
node as the service. If the example service on port 1234 required no
additional authentication (because it assumed that only other localhost
processes could reach it), then it could be vulnerable to attacks that make
use of this bug.

The Kubernetes API Server's default insecure port setting causes the API
server to listen on 127.0.0.1:8080 where it will accept requests without
authentication. Many Kubernetes installers explicitly disable the API
Server's insecure port, but in clusters where it is not disabled, an
attacker with access to another system on the same LAN or with control of a
container running on the master may be able to reach the API server and
execute arbitrary API requests on the cluster. This port is deprecated, and
will be removed in Kubernetes v1.20.

This issue has been rated medium (*CVSS
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:3.1/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>AV
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>A
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>AC
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>PR
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>UI
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>S
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>U
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>C
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>I
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>A
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:L/I:L/A:N>*),
and assigned CVE-2020-8558.

In clusters where the API Server insecure port is not disabled, this issue
has been rated high (*CVSS
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:3.1/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>AV
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>A
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>AC
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>L
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>PR
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>UI
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>S
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>U
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>C
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>I
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>/
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>A
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>:
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U=
/C:H/I:H/A:H>*
).
*Am I vulnerable?*

You may be vulnerable if:

   -

   You are running a vulnerable version (see below)
   -

   Your cluster nodes run in an environment where untrusted hosts share the
   same layer 2 domain (i.e. same LAN) as nodes
   -

   Your cluster allows untrusted pods to run containers with CAP_NET_RAW
   (the Kubernetes default is to allow this capability).
   -

   Your nodes (or hostnetwork pods) run any localhost-only services which
   do not require any further authentication. To list services that are
   potentially affected, run the following commands on nodes:
   -

      lsof +c 15 -P -n -i4TCP@127.0.0.1 -sTCP:LISTEN
      -

      lsof +c 15 -P -n -i4UDP@127.0.0.1

On a master node, an lsof entry like this indicates that the API server may
be listening with an insecure port:

COMMAND        PID USER FD TYPE DEVICE SIZE/OFF NODE NAME

kube-apiserver 123 root 7u IPv4  26799      0t0  TCP 127.0.0.1:8080 (LISTEN)
*Affected Versions*

   -

   kube-proxy v1.18.0-1.18.3
   -

   kube-proxy v1.17.0-1.17.6
   -

   kube-proxy <1.16.10

*How do I mitigate this vulnerability?*

Prior to upgrading, this vulnerability can be mitigated by manually adding
an iptables rule on nodes. This rule will reject traffic to 127.0.0.1 which
does not originate on the node.

iptables -I INPUT --dst 127.0.0.0/8 ! --src 127.0.0.0/8 \

-m conntrack ! --ctstate RELATED,ESTABLISHED,DNAT -j DROP

Additionally, if your cluster does not already have the API Server insecure
port disabled, we strongly suggest that you disable it. Add the following
flag to your kubernetes API server command line: --insecure-port=3D0
*Detection*

Packets on the wire with an IPv4 destination in the range 127.0.0.0/8 and a
layer-2 destination MAC address of a node may indicate that an attack is
targeting this vulnerability.
*Fixed Versions*

   -

   kube-proxy v1.19.0+ (not yet released)
   -

   kube-proxy v1.18.4+
   -

   kube-proxy v1.17.7+
   -

   kube-proxy v1.16.11+

To upgrade, refer to the documentation: *https
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>://
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>kubernetes
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>.
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>io
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>/
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>docs
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>/
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>tasks
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>/
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>administer
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>-
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>cluster
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>/
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>cluster
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>-
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>management
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>/#
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>upgrading
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>-
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>a
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>-
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>cluster
<https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#up=
grading-a-cluster>*
*Additional Details*

See the GitHub issue for more details: *https
<https://github.com/kubernetes/kubernetes/issues/92315>://
<https://github.com/kubernetes/kubernetes/issues/92315>github
<https://github.com/kubernetes/kubernetes/issues/92315>.
<https://github.com/kubernetes/kubernetes/issues/92315>com
<https://github.com/kubernetes/kubernetes/issues/92315>/
<https://github.com/kubernetes/kubernetes/issues/92315>kubernetes
<https://github.com/kubernetes/kubernetes/issues/92315>/
<https://github.com/kubernetes/kubernetes/issues/92315>kubernetes
<https://github.com/kubernetes/kubernetes/issues/92315>/
<https://github.com/kubernetes/kubernetes/issues/92315>issues
<https://github.com/kubernetes/kubernetes/issues/92315>/92315
<https://github.com/kubernetes/kubernetes/issues/92315>*
*Acknowledgements*

This vulnerability was reported by J=C3=A1nos K=C3=B6v=C3=A9r, Ericsson wit=
h additional
impacts reported by Rory McCune, NCC Group and Yuval Avrahami and Ariel
Zelivansky, Palo Alto Networks.

Thank You,

Joel Smith on behalf of the Kubernetes Product Security Committee

--000000000000f6d62405a9f03937--

