X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2457" "Wednesday" "15" "July" "2020" "09:04:24" "-0600" "Joel Smith" "joelsmith@redhat.com" "<cc7f0236-155c-4724-c0df-784b57dc34e3@redhat.com>" "103" "[oss-security] CVE-2020-8557: Kubernetes: Node disk DOS by writing to container /etc/hosts" nil nil nil "7" "2020071515:04:24" "[oss-security] CVE-2020-8557: Kubernetes: Node disk DOS by writing to container /etc/hosts" (number mark "U       joelsmith@re Jul 15  103/2457  " thread-indent "\"[oss-security] CVE-2020-8557: Kubernetes: Node disk DOS by writing to container /etc/hosts\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-8557: Kubernetes: Node disk DOS by writing to container /etc/hosts" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32319 invoked by uid 550); 15 Jul 2020 16:38:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26129 invoked from network); 15 Jul 2020 15:04:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1594825485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=0xPGFF3y/werErvlEZY5QjWlIuunZuG9OoY+v+bFVgA=;
	b=BhbFBzT4lNU0treaeChHqj1KcUtfGgl2AqJx5hIPuIN3R7yRCc2QjCvQ+ZD4IoJ1s63h4S
	G1acqDE6r1v/YUhhvqk28/m00dH5Ciey625j8Eh4a6rxHfZkO7uKA/SPt5vTUO2iLntGgg
	mTHgt+SI5NbZioO2X3TbFIqjvmeRUNw=
X-MC-Unique: BBWwZP6JMTmj1VpDQWn7FQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:message-id:date:user-agent
         :mime-version:content-language;
        bh=0xPGFF3y/werErvlEZY5QjWlIuunZuG9OoY+v+bFVgA=;
        b=uMT/mVeflxxy9jzRfY+fje7UsgDDMBw7nPrLpi1tIQdJ9F9HBOLXETLm19cm/yk+fx
         lqguAlNzBAwU2/kVaLd7I4oxwrEZ/Cd8l/EDRHmsIpxxr656MFhglnv0Fhj+7zi5xFVT
         Uxi60blXj1GhmwEi4HmFp0UFHcFfk05qRRPPJUA0et7u8/UVTnybOBu0fe8Zpym8ZUKH
         ln7VKPkAw0xrm3F+xA7UC+PEZnp1hN1jfYup7b3vTXG3iYbokNtYKI1Fc5Dt75X3mmzA
         mQQdHU4M1FoLhXAB7OFrADd9dN2c/Je6Vk/FHwr+Qk4GtuOKXZRztzI3ltZrc+iamh/h
         Nt8g==
X-Gm-Message-State: AOAM533tsAhpX5GB6FGmECw8ekx2wSCi9JObv4tRdsrmmh/oWt+HrsHS
	5h+XtiUaXLAkVybmIt7ncTrekiwYuyXWAxo0JbtLOO90NG81NvCIu5Sru9HjgSluRyMhp0/qMcr
	6/7YJVibtqq57I6vvAWpr4OXIonI3
X-Received: by 2002:a92:9a84:: with SMTP id c4mr10029543ill.57.1594825466572;
        Wed, 15 Jul 2020 08:04:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwXEgjBteMyYXHFeBpbu2S9PJCLlbnVoSYgWD3jWSkuFIoOrWDAHEsZdxaG+64xBPxD4HVz3g==
X-Received: by 2002:a92:9a84:: with SMTP id c4mr10029512ill.57.1594825466143;
        Wed, 15 Jul 2020 08:04:26 -0700 (PDT)
From: Joel Smith <joelsmith@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <cc7f0236-155c-4724-c0df-784b57dc34e3@redhat.com>
Date: Wed, 15 Jul 2020 09:04:24 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative;
 boundary="------------A2771F83AFDACD5937AC35B9"
Subject: [oss-security] CVE-2020-8557: Kubernetes: Node disk DOS by writing to container
 /etc/hosts

--------------A2771F83AFDACD5937AC35B9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello Open Source Community,

A security issue was discovered in kubelet that could result in the
Denial of Service of a node if a pod can write to its own /etc/hostsfile.

This issue has been rated Medium (5.5,
_CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H/CR:H/IR:H/AR:M_
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H/CR:H/IR:H/AR:M>),
and assigned CVE-2020-8557.

The /etc/hostsfile mounted in a pod by kubelet is not included by the
kubelet eviction manager when calculating ephemeral storage usage by a
pod. If a pod writes a large amount of data to the /etc/hostsfile, it
could fill the storage space of the node and cause the node to fail.


      *Am I vulnerable?*

Any clusters allowing pods with sufficient privileges to write to their
own /etc/hostsfiles are affected. This includes containers running with
CAP_DAC_OVERRIDEin their capabilities bounding set (true by default) and
either UID 0 (root) or a security context with allowPrivilegeEscalation:
true(true by default).


        *Affected Versions*

  *

    kubelet v1.18.0-1.18.5

  *

    kubelet v1.17.0-1.17.8

  *

    kubelet < v1.16.13


      *How do I mitigate this vulnerability?*

PodSecurityPolicies or other admission webhooks could be employed to
force containers to drop CAP_DAC_OVERRIDEor disallow running as root or
with privilege escalation, but these measures may break existing
workloads that rely upon these privileges to function properly.


      *Fixed Versions*

  *

    kubelet v1.19.0

  *

    kubelet v1.18.6

  *

    kubelet v1.17.9

  *

    kubelet v1.16.13

To upgrade, refer to the documentation:
_https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#upgrading-a-cluster_


      *Detection*

Large pod etc-hostsfiles may indicate that a pod is attempting to
perform a Denial of Service attack using this bug. A command such as

find /var/lib/kubelet/pods/*/etc-hosts -size +1M

run on a node can be used to find abnormally large pod etc-hostsfiles.


      *Additional Details*

See the GitHub issue for more details:
_https://github.com/kubernetes/kubernetes/issues/93032_


*Acknowledgements*

This vulnerability was reported by Kebe Liu of DaoCloud


Thank you,

Joel Smith on behalf of the Kubernetes Product Security Committee



--------------A2771F83AFDACD5937AC35B9--

