Received: (qmail 26463 invoked by uid 550); 24 Mar 2025 19:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21517 invoked from network); 24 Mar 2025 19:38:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742845108; x=1743449908; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LfwaDjxaofGuqYgQCnBhJR/1zxEMbd2Ll2XL+9OOECg=;
        b=RMIFuBuZeQSUFJ3vLn4n1CvV2/3AHVhKRpkNYIZhNBqFuPUc3J2ggxmwSp4YYVSIOn
         6GMtqvGbffiFgo2rmJQG39SxM5Lvy14IxYQ1af7hEQGbXpYkk3dy5ssa6u0bsZuaz1QJ
         ppNWjdNqXgGXyblye4BKsVWOrXHe+zzma/QKEo/py5f4HtWrv/l/ZY2EMdpBIpFwJCSX
         0pPPfymdbnEOoWGzXnqqnCSLRQ/EObYUZqKpuBiLgqU2ptdcbACgTW1mc1tWIPCR4Fgm
         5ujkNBFeeYVW5W8eCnMVkT/ljhdoHyMBQ1dHAZb2nd2tKhx+k3bHb4xaPzEjthnW2Hfq
         hrAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742845108; x=1743449908;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LfwaDjxaofGuqYgQCnBhJR/1zxEMbd2Ll2XL+9OOECg=;
        b=W6ApHE36VhArhYHRlMBBPfBNphJMnIgumWZvgPj0hSIipa34wxMjLOr+fnJbPv61Is
         Oo6ff+Kc1MNHFFQ2iKnn8e6DTkyAY0e+kgdGvD+kvB4d2Q+BFbBE0jktguPFfhN8a0ul
         e0V72DPKY5GRxvjIp7vQbjj5UKoFppiSfH1qzGFvCAwdg2Rk7PJXeLGSvKVqTEQ9rziF
         uCTDOeBDalLLW6OZN3y6Li7QbskNWQaOgJSB5v5ecXIqL0F5LGslJHobzaaq3pPEZBUe
         K9yNTM/n5StCgEybbu9fPUtrPIehvU/sISvGX6jdHzyJ5Nj5oP22AtqjisflcSxRE3AJ
         PZoQ==
X-Gm-Message-State: AOJu0YxwL2WWQ66i+8nU4dL8gKiAIjAOWvaRqkUL6720AAxz+viS58a4
	rTuSrBbzDoUGQuoZuLdLdal6X/f6iMFS/zd+C/HF1lcV1F8rB/I3ZKgmAr52G4YSCNfgkJvenJR
	LpaIaGMXVGCi3sKRJ6QvlS6gNAMpyLm1UNAU=
X-Gm-Gg: ASbGncsMKbzDcht0nWeiowftLTn1G1WGIoZdWitWkkFWpFj++B3v1HGk/duOGEoLF0R
	h9qg8A8bPFxxGTSmEUd/fzvT9zoEutCgO5rsg16zg1h97MTERR8lrU7X2FnLfcWqQ9wjNISLPKT
	OYzPYOYwcIGzKAQX9dAxAMWUVaMvo=
X-Google-Smtp-Source: AGHT+IFN0x2GAuXTyCPOytcpTPHoHv/lIkfHlGUhhwJ5Ca9LlqWtfItfKivEBdj425RupFMdBMe6Vb+96iLN2iNAwmI=
X-Received: by 2002:a05:6870:e2cd:b0:297:2376:9b17 with SMTP id
 586e51a60fabf-2c780386af5mr7696979fac.19.1742845107795; Mon, 24 Mar 2025
 12:38:27 -0700 (PDT)
MIME-Version: 1.0
From: Tabitha Sable <tabitha.c.sable@gmail.com>
Date: Mon, 24 Mar 2025 14:38:17 -0500
X-Gm-Features: AQ5f1JrRCc8_emTimCL6BtBB1vbL90XT7B59ZRz8Xu8YJxy17XRAUw4D_7mEtfE
Message-ID: <CAM62Sm+vJ9YomjArHHzBZwKvVBqnpZZQkCZOCfYTCsHfsn20tw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000008c7d3406311bbf88"
Subject: [oss-security] [kubernetes] Multiple vulnerabilities in ingress-nginx

--0000000000008c7d3406311bbf88
Content-Type: text/plain; charset="UTF-8"

Hello oss-sec,

Multiple issues have been discovered in ingress-nginx that can result in
arbitrary code execution in the context of the ingress-nginx controller.
This can lead to disclosure of Secrets accessible to the controller. (Note
that in the default installation, the controller can access all Secrets
cluster-wide.)

The most serious of these issues has been rated Critical (
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/A:H>)
(Score: 9.8), and assigned CVE-2025-1974.
Am I vulnerable?

   -

   This issue affects ingress-nginx. If you do not have ingress-nginx
   installed on your cluster, you are not affected.
   -

   You can check this by running kubectl get pods --all-namespaces
   --selector app.kubernetes.io/name=ingress-nginx

Affected Versions

   -

   All versions prior to v1.11.0
   -

   v1.11.0 - 1.11.4
   -

   v1.12.0

How do I mitigate this vulnerability?

ACTION REQUIRED: The following steps must be taken to mitigate these
vulnerabilities: Upgrade ingress-nginx to v1.11.5, v1.12.1, or any later
version.

Before applying the patch, these issues can be partially mitigated by
disabling the Validating Admission Controller functionality of
ingress-nginx.
Fixed Versions

   -

   v1.11.5
   -

   v1.12.1

To upgrade, refer to the documentation: Upgrading Ingress-nginx
<https://kubernetes.github.io/ingress-nginx/deploy/upgrade/>
Detection

If you find evidence that these vulnerabilities have been exploited, please
contact security@kubernetes.io
Additional Details

See these GitHub issues for more details:
CVE-2025-24513: https://github.com/kubernetes/kubernetes/issues/131005

CVE-2025-24514: https://github.com/kubernetes/kubernetes/issues/131006

CVE-2025-1097: https://github.com/kubernetes/kubernetes/issues/131007

CVE-2025-1098: https://github.com/kubernetes/kubernetes/issues/131008

CVE-2025-1974: https://github.com/kubernetes/kubernetes/issues/131009
Acknowledgements

These vulnerabilities were reported by Nir Ohfeld, Ronen Shustin, Sagi
Tzadik, and Hillai Ben Sasson, from Wiz

These issues were fixed and coordinated by Marco Ebert, James Strong,
Tabitha Sable, and the Kubernetes Security Response Committee

Thank You,

Tabitha Sable, on behalf of the Kubernetes Security Response Committee

--0000000000008c7d3406311bbf88--
