X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5581" "Monday" "1" "June" "2020" "10:06:58" "-0600" "Joel Smith" "joelsmith@redhat.com" "<aae7a5e4-4240-5ce2-7f4d-5b2cbf754803@redhat.com>" "153" "[oss-security] Kubernetes: IPv4 only clusters susceptible to MitM attacks via IPv6 rogue router advertisements" nil nil nil "6" "2020060116:06:58" "[oss-security] Kubernetes: IPv4 only clusters susceptible to MitM attacks via IPv6 rogue router advertisements" (number mark "U       joelsmith@re Jun  1  153/5581  " thread-indent "\"[oss-security] Kubernetes: IPv4 only clusters susceptible to MitM attacks via IPv6 rogue router advertisements\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Kubernetes: IPv4 only clusters susceptible to MitM attacks via IPv6 rogue router advertisements" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11615 invoked by uid 550); 1 Jun 2020 16:21:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27743 invoked from network); 1 Jun 2020 16:07:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591027629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=+KTSfzaMiFrWzFswZLn0Uxon3Wb3Ed6BqtZe75D44ao=;
	b=gUR3ALKSvxiwtqCcpjvlja7X0Ad5n+suv3Ti4fuDZmdel9dc//ltMJzHwSttLdDT+5eOQU
	EB0x+RHvMxNBxEmEgjsAKXA9wNTCnItGd1Atp9fqyDSGpx7XJzVnM+YHHLw5QCYXlfYHhq
	r4D1uZFtIlBSLhJu8L/GOyKS+iRqsK4=
X-MC-Unique: UKyXY8v8NqmzoRZtqkb6zg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language;
        bh=+KTSfzaMiFrWzFswZLn0Uxon3Wb3Ed6BqtZe75D44ao=;
        b=LHo5qbHAgtc3YC/WF7jquT7wSm2CE57c3CwMf6zqxMHWaaAnh+I+KQBDs7Y7oDfDA6
         b0B6lHze9m6oY2epq1Dsx7S4GHIBs2U7xX7pw65gh+m5+oGnOflV4rHRfCnOnkimV/h2
         maBKE835Ck3kqzbDP0KVqIvMNOCaNuklxR2RPZwkR5CIuM5bGB6a5xsG6C3uyOKruMxN
         KVYRGyaZxxhszdg8Z0WrZVP5HRiRnda1a9ly13NELsgNfIUij/jiXGvJ+Kk+yP44P04q
         /TtJxPdjveqRXsKe62JDrzYSMa0+ht9+dmVRqJ4AGpUaizXs9ZSc2xeaGugKvgBYsH7T
         5z9g==
X-Gm-Message-State: AOAM530ye1J+CnH+OO2oeiYNTcFULKTamADID74pF8ogYbxe8fGDcJW+
	vRltgRiMSu6kSeJQ8yn5FB6l06yYJlSbbyionHcK6eE1W35WpcsGX8wKS/DpPdQJaPvbZFaHa9s
	JnVveGDKsFyLE7fwTPc/vSw0s/VmK
X-Received: by 2002:a17:90a:8c81:: with SMTP id b1mr80738pjo.115.1591027620848;
        Mon, 01 Jun 2020 09:07:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzEGxqQ//w/fEUvuBnMf4hMsyjAKAFBNmSDXXTt4hsTEuuu076/yExVmueMCX5XtfwtPo/cgA==
X-Received: by 2002:a17:90a:8c81:: with SMTP id b1mr80702pjo.115.1591027620439;
        Mon, 01 Jun 2020 09:07:00 -0700 (PDT)
To: kubernetes-security-announce@googlegroups.com,
 kubernetes-announce@googlegroups.com, kubernetes-dev@googlegroups.com,
 kubernetes-security-discuss@googlegroups.com,
 oss-security@lists.openwall.com, kubernetes+announcements@discoursemail.com
From: Joel Smith <joelsmith@redhat.com>
Message-ID: <aae7a5e4-4240-5ce2-7f4d-5b2cbf754803@redhat.com>
Date: Mon, 1 Jun 2020 10:06:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative;
 boundary="------------B4EE5A449FB51828DBCD0B2E"
Subject: [oss-security] Kubernetes: IPv4 only clusters susceptible to MitM attacks via IPv6 rogue router
 advertisements

--------------B4EE5A449FB51828DBCD0B2E
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Kubernetes Community,

A container networking vulnerability has been disclosed.


        Issue details:

A cluster configured to use an affected container networking
implementation is susceptible to man-in-the-middle (MitM) attacks. By
sending “rogue” router advertisements, a malicious container can
reconfigure the host to redirect part or all of the IPv6 traffic of the
host to the attacker-controlled container. Even if there was no IPv6
traffic before, if the DNS returns A (IPv4) and AAAA (IPv6) records,
many HTTP libraries will try to connect via IPv6 first then fallback to
IPv4, giving an opportunity to the attacker to respond.

This vulnerability has been given a severity of Medium with a score of
6.0
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:L/I:L/A:L


        Affected components and versions:

Kubernetes itself is not vulnerable. A Kubernetes cluster using an
affected networking implementation is vulnerable.

Binary releases of the kubelet installed from upstream Kubernetes
Community repositories hosted at https://packages.cloud.google.com/ may
have also installed the kubernetes-cni package containing the
containernetworking CNI plugins, which are affected by CVE-2020-10749.

The following official kubelet package versions have an affected
kubernetes-cni package as a dependency:

  * kubelet v1.18.0-v1.18.3
  * kubelet v1.17.0-v1.17.6
  * kubelet < v1.16.11

A cluster having an affected kubernetes-cni package installed is only
affected if configured to use it.


        Fixed versions:

The following packages will bundle fixed versions of the
containernetworking CNI plugins that were formerly installed via the
kubernetes-cni package.

  * kubelet v1.18.4
  * kubelet v1.17.7
  * kubelet v1.16.11

Because these versions are not yet available, cluster administrators
using packages from the Kubernetes repositories may choose to manually
upgrade CNI plugins by retrieving the relevant arch tarball from the
containernetworking/plugins v0.8.6 release
<https://github.com/containernetworking/plugins/releases/tag/v0.8.6>.
The patch versions are expected to be released on June 17th
<https://github.com/kubernetes/sig-release/blob/master/releases/patch-releases.md#timelines>,
subject to change.


        Third-party components and versions:

Many container networking implementations are affected, including:

  * CNI Plugins maintained by the containernetworking team
    <https://github.com/containernetworking/plugins>, prior to version
    0.8.6 (CVE-2020-10749)
  * Calico and Calico Enterprise (CVE-2020-13597)  Please refer to the
    Tigera Advisory TTA-2020-001 at
    https://www.projectcalico.org/security-bulletins/ for details
  * Docker versions prior to 19.03.11 (see
    https://github.com/docker/docker-ce/releases/v19.03.11) (CVE-2020-13401)
  * Weave Net, prior to version 2.6.3

It is believed that the following are not affected:

  * Cilium
  * Juniper Contrail Networking
  * OpenShift SDN
  * OVN-Kubernetes
  * Tungsten Fabric

Information about the vulnerability status of any plugins or
implementations not listed above is currently unavailable. Please
contact the provider directly with questions about their implementation.


        Affected configurations:

Clusters using an affected networking implementation and allowing
workloads to run with CAP_NET_RAW privileges. The default Kubernetes
security context runs workloads with a capabilities bounding set that
includes CAP_NET_RAW.


        Vulnerability impact:

A user able to create containers with CAP_NET_RAW privileges on an
affected cluster can intercept traffic from other containers on the host
or from the host itself.


        Mitigations:

  * Setting the host default to reject router advertisements should
    prevent attacks from succeeding, but may break legitimate traffic,
    depending upon the networking implementation and the network where
    the cluster is running. To change this setting, set the sysctl
    net.ipv6.conf.all.accept_ra to 0.
  * Using TLS with proper certificate validation
  * Disallowing CAP_NET_RAW for untrusted workloads or users. For
    example, a Pod Security Policy with a RequiredDropCapabilities that
    includes NET_RAW will prevent this attack for controlled workloads.


        Detection:

  * The IPv6 routing table on nodes will show any attacker-created
    entries. For example, a host with IPv6 disabled might show no
    default route when running ip -6 route but the same host with an
    attack in progress might show an updated default route or a route to
    the target address(es). Any IPv6 route with a destination interface
    of a host-side container network interface should be investigated.
  * The host-side of a container network interface may show additional
    configured IPv6 addresses after receiving a rogue RA packet. For
    example, given a host-side interface of cbr0 which might normally
    have no IPv6 address, a dynamic-configured address on the interface
    may signal an attack in progress. Use this command to view interface
    addresses: ip a show dynamic cbr0


        Acknowledgements:

Thanks to Etienne Champetier for disclosing this vulnerability.


        Additional Details:

See the GitHub issue at
https://github.com/kubernetes/kubernetes/issues/91507 for more information.

Thank you,
Joel Smith, on behalf of the Kubernetes Product Security Committee


--------------B4EE5A449FB51828DBCD0B2E--

