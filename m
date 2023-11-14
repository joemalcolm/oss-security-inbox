Received: (qmail 15705 invoked by uid 550); 14 Nov 2023 17:19:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11407 invoked from network); 14 Nov 2023 17:15:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1699982105; x=1700586905; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=16YwMSS+5XMGjbLlrz5xoB+ftjfO9SSMeH2aDXtRN+o=;
        b=I2ilUS9+mx7IEYya4vqUpnT/KzuRQN7B6kx0J72zc+Spm17iMd36tH4UAs43bSD6hm
         2aMUlEPBoyzFIROAmViDdjjp82WPYWM15jwho7mc+K4P8/Vlmgc4AZpkKO1v/fIW+L5v
         wpnTqhZQsvgNqB4FTyGTedmUpmj2VQEbe1ZvrluBid2N/zhIOUH0FhprTyjYN8sxZNfg
         qxwLVMsY0gGOz8iClc0/AgpHkgpOrM0NdOdOpa8fwixzjlKuwJkEmC/XmYSXURb3EpJw
         UO7YRwXOh7sUdDBwkF7uNaCldcWAym42o+dVArp0fhNC+i1TNL+BACV3zb6grdFen5Xr
         i+2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699982105; x=1700586905;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=16YwMSS+5XMGjbLlrz5xoB+ftjfO9SSMeH2aDXtRN+o=;
        b=ifesnIjPdixFQFsDk5jikLSp9RRrVZNxOP2V1k8o7H284fcACx1iZ4uFveDxcwwitH
         HspAF/+km4+zfDDTDCe2DRf08ld7MIEd4XaSp4H7SLn6J8kPP4AMvYbT1p76EnBULAvx
         l1cFYS8p0wkzNYmNPYS8ZviOK6MWDiK5KntZR26pJS+6Sx22OJHUGZgYNEjP6rFNf/j4
         am62OoqgHVVlsI0N0yg7krrbCXMxdMkpknlWpaOqE6i+Ej5k4BNc9pBAa4Kish8G40Zg
         11O7IMx4KWazcSTKBUfKkg6E4yrTEFATt56nP5W2WbfJvK2jvTt3v52xKcrK4gJcmfkg
         /UJg==
X-Gm-Message-State: AOJu0YydKVM8J98zzysfmvKnns8X1XkJc6q0T5g+dCKlCU/O7O8AB82u
	piegDswheAlT7jBY7s0Vtjco/Y+WmAQDSLTn2jPMwjpYRo9sNljMajHdnsEs
X-Google-Smtp-Source: AGHT+IEmNKl/1PcLdcj4B+pBQDlZ3mugC2Xl0IePo4CojMkQC6CvCGUsoaUOEBvxH22BbTmcCBy11YaMS97FlQRFhVg=
X-Received: by 2002:a05:600c:3c91:b0:40a:483f:f828 with SMTP id
 bg17-20020a05600c3c9100b0040a483ff828mr157976wmb.4.1699982104498; Tue, 14 Nov
 2023 09:15:04 -0800 (PST)
MIME-Version: 1.0
From: Craig Ingram <cjingram@google.com>
Date: Tue, 14 Nov 2023 12:14:53 -0500
Message-ID: <CAHXwHVwMqiEU0cP0Zjjrjnb-7uyNXqR3i9BZzBV=-j1NKUEz3A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000076f145060a1fed18"
Subject: [oss-security] [kubernetes] CVE-2023-5528: Insufficient input sanitization in
 in-tree storage plugin leads to privilege escalation on Windows nodes

--00000000000076f145060a1fed18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where a user that can create
pods and persistent volumes on Windows nodes may be able to escalate to
admin privileges on those nodes. Kubernetes clusters are only affected if
they are using an in-tree storage plugin for Windows nodes.

This issue has been rated High (CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U=
/C:H/I:H/A:H>),
and assigned CVE-2023-5528.

Am I vulnerable?

Any kubernetes environment with Windows nodes is impacted.  Run kubectl get
nodes -l kubernetes.io/os=3Dwindows to see if any Windows nodes are in use.

Affected Versions

- kubelet >=3D v1.8.0 (including all later minor versions)

How do I mitigate this vulnerability?

The provided patch fully mitigates the vulnerability.

Outside of applying the patch, there are no known mitigations to this
vulnerability.

Fixed Versions

- kubelet v1.28.4

- kubelet v1.27.8

- kubelet v1.26.11

- kubelet v1.25.16

These releases will be published over the course of today, November 14,
2023.

To upgrade, refer to the documentation:

https://kubernetes.io/docs/tasks/administer-cluster/cluster-management/#upg=
rading-a-cluster

Detection

Kubernetes audit logs can be used to detect if this vulnerability is being
exploited. Persistent Volume create events with local path fields
containing special characters are a strong indication of exploitation.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/121879

Acknowledgements

This vulnerability was reported by Tomer Peled @tomerpeled92

The issue was fixed and coordinated by the fix team:

James Sturtevant @jsturtevant

Mark Rossetti @marosset

Michelle Au @msau42

Jan =C5=A0afr=C3=A1nek @jsafrane

Mo Khan @enj

Rita Zhang @ritazh

Micah Hausler @micahhausler

Sri Saran Balaji @SaranBalaji90

Craig Ingram @cji

and release managers:

Jeremy Rickard @jeremyrickard

Marko Mudrini=C4=87 @xmudrii

Thank You,

Craig Ingram on behalf of the Kubernetes Security Response Committee

--00000000000076f145060a1fed18--
