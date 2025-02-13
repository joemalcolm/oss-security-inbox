Received: (qmail 10193 invoked by uid 550); 13 Feb 2025 15:04:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15875 invoked from network); 13 Feb 2025 14:32:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1739457161; x=1740061961; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/mWKvyrfoCiet77N+aAM21geiTZ9O2H3K8kfN+9u/rQ=;
        b=Cx4PXOcAXrlBGQL7vxKu0s3/Czn3jO8ilcY688dv1lZRSPtiWL6BejR10H+tqq5gaI
         pa0y0xYSiFyWXpDj5uJdpzOxV5336Z7gl+H1JqJLT1J704/f//A5laT0wwhtsm9ra8+e
         kQBzylaJ1Z85eJNVfUqZgqSocFPrpKH6rfKiEG4EnjddB1xGMO+DE8dlF1OdgGxvsymi
         GNvOOwz+dA9449VUJvNOH7PzFREvxZ9R1XR9V2X6ODUswq6lvcKDDBVpYQD+RP4y39f5
         qQYBfl+yeonK+rJcvMUNmc/pHnj5ElginIIAJgvmcjGxBkoIpOLgL2JSip85IQjq8yzz
         5miA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739457161; x=1740061961;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/mWKvyrfoCiet77N+aAM21geiTZ9O2H3K8kfN+9u/rQ=;
        b=RzvafWFhVWo1gZwYn7b56tX4TEDOHthlbDPhnknEjsweLhIJNQTqiFQwquxj45s1li
         KhWvEHDYuqq1KVonNae3LvzaJuWoEASZAzz6uoMSURxQ8vaaHc/aOUL+CgTUhcbHbAfy
         Qt46wDGsSK0yviUmYB1bz7vScDhXG3Gp9+6UuJ4ROPSQwZR28f79Jbvl+GQ8xpKB7ysO
         1uT/ZPKvv2Tn4YMjCJctTd4dAIf9dNl3yUe6g1QNXD/NVZy8nkIMglIjzbb0t5Tsy5X9
         BFwu8bUvMjnGGr48oNUaSaRATvR643IQ8HLnQXTZ8acF77amwXlrFIMO0Yv5WaoqcU27
         aJrQ==
X-Gm-Message-State: AOJu0YxilvWehQPnI9dt9UuUTu8fG/GGThjEJVhduo87KIgYn4dM+egU
	7wghFfkn7hHWNOsmZ8pZLdueFMqXXByTxZSo+DU973UXxDCFX3XY8mV6cC77kJ/xx0KqwcfUZms
	QX33mpnwko2c6GCNU1qyxSuFk9fN05mVGA8A4HzVUpSuYjBEX4Zan
X-Gm-Gg: ASbGncsBZPAT6upuZFfNLbtJcnAqFj6CN9TJR5AXO9wBkh4+o2QyD0BHMmAYlLyDya+
	lDbVxB81EAqI3RDOCWTgDrmIn6CeU3fDU6w1MJaqL4hmUxdEqNVX5jUDEJsq7oyygt+B9w61R97
	oKVVjyKxmZJqlS7cNQwTrpiMK6sg==
X-Google-Smtp-Source: AGHT+IGe5+fxfBKA0le9/SXMCzPDS8F/L2GdNMju5oj7iADNtQ5pAk1UIE9XK0YEwXsQxGXOBBLLIOYvbWZihopvbXs=
X-Received: by 2002:a05:6402:3589:b0:5de:38e7:c864 with SMTP id
 4fb4d7f45d1cf-5decb902156mr139896a12.4.1739457158880; Thu, 13 Feb 2025
 06:32:38 -0800 (PST)
MIME-Version: 1.0
From: Craig Ingram <cjingram@google.com>
Date: Thu, 13 Feb 2025 09:32:28 -0500
X-Gm-Features: AWEUYZmh27XBzW81i8Q3OSjjJDQH90PsWicTNWpP1lyddKT9fh1ba8pLk4cUYYw
Message-ID: <CAHXwHVw6UP-hiaasHBm08mFeXjZC4WkDJGdJ9p_CirQOWmR=RA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000000f80ad062e06ee86"
Subject: [oss-security] [kubernetes] CVE-2025-0426: Node Denial of Service via kubelet
 Checkpoint API

--0000000000000f80ad062e06ee86
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where a large number of
container checkpoint requests made to the unauthenticated kubelet read-only
HTTP endpoint may cause a Node Denial of Service by filling the Node's
disk.

This issue has been rated Medium (6.2) (
CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H>),
and assigned CVE-2025-0426.

Am I vulnerable?

All clusters running an affected version listed below with the kubelet
read-only HTTP port enabled and using a container runtime that supports the
container checkpointing feature, such as CRI-O v1.25.0+ (with
enable_criu_support set to true) or containerd v2.0+ with criu installed,
are affected.

Affected Versions


   -

   kubelet v1.32.0 to v1.32.1


   -

   kubelet v1.31.0 to v1.31.5
   -

   kubelet v1.30.0 to v1.30.9


How do I mitigate this vulnerability?

This issue can be mitigated by setting the ContainerCheckpoint feature gate
to false in your kubelet configuration, disabling the kubelet read-only
port, and limiting access to the kubelet API, or upgrading to a fixed
version listed below, which enforces authentication for the kubelet
Checkpoint API.

Fixed Versions

   -

   kubelet v1.32.2
   -

   kubelet v1.31.6
   -

   kubelet v1.30.10
   -

   kubelet v1.29.14
   -

      Note: Container checkpoint support was an off by default Alpha
      feature in v1.25-v1.29

Detection

A large number of requests to the kubelet read-only HTTP server's
/checkpoint endpoint, or a large number of checkpoints stored (by default)
under /var/lib/kubelet/checkpoints on a Node may indicate an attempted
Denial of Service attack using this bug.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/130016

Acknowledgements

This vulnerability was reported and fixed by Tim Allclair @tallclair from
Google.

The issue was coordinated by:

Tim Allclair @tallclair

Sascha Grunert saschagrunert@

Craig Ingram @cji

Jordan Liggitt liggitt@

Thank You,

Craig Ingram on behalf of the Kubernetes Security Response Committee

--0000000000000f80ad062e06ee86--
