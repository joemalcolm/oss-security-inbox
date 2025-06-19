Received: (qmail 15711 invoked by uid 550); 19 Jun 2025 02:34:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19737 invoked from network); 19 Jun 2025 02:31:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750300252; x=1750905052; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iA+H0RQ+yzQU6U8Gto7BxLPMyWEy1KFLyTsp5YUN7NM=;
        b=OZiTT9HTn1Ka0sUqn9njVuNta5MLHeYS2lnkwnZZoTbShUzi8tFFpWTRd2cKGW+Hld
         WyqVLVgE98bkUk4nW74k1nBBgT3fT3YRGueBgtQrxA432cW+Gni8dufn5TJ2MINnJKDQ
         9BDyRt/J5PCn+a1dojmHl9zWw2Qn2NIqDlRRDScYO376oBlwjJpdqgQfqynspVdzusVa
         Fx4pKppdZlDvMtg0bRX0T+3y0N1+ggzWaVZ5r7GuLZTLrlmn6aF/6VAM7abplduPZ+mZ
         LNYze/KaFSczzeGLrLHGlXeZE+2Eptr9FiOaXd8xsW6grdQkfVfuGuU8hM/CIUeayJuq
         8w8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750300252; x=1750905052;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iA+H0RQ+yzQU6U8Gto7BxLPMyWEy1KFLyTsp5YUN7NM=;
        b=f9doLo7WvHY08GTSo4ywI0vpiZslTMJF5W8uL6SNzgB0/c/81tIqcMxw0U41ZMCvQr
         EOBmta2hWXSUsQDZb5SpIFBzR1uFyCO2+RdVli3C5A39+M57FvoBfb2XdH4C7hqjbvIe
         ve+9p3GF1vwfhj2knKv+wcwQl/nmSthd1scw00hRS+7jPuuxlRARNlz7jfDbUkFfAYoW
         qNawPqjSiig1bU0Fd5Y5JicqdyI5yJs7/FZR47E4jlgLmqpITS377C2VJPCebTVTT5Ax
         WAby2EArI/UbJStdPDGOId5vo7a3lh2DnmMVduU027bF304DXKAouyEimHO+c8cXLAwn
         crBQ==
X-Gm-Message-State: AOJu0YwRT0iW8gX/g3PNL3k1htP8VZiMcxQ0uLdtq5J362Ir8r5nhHXG
	iEGZqZJi6SbmJNY0+yyGOglNMjOocED4MBZMvVOQ4rxSBc7lvFk2zn1zYO2YVs9TrwPPqJW586I
	WWdHjH/uzrzUbgQI4yGp0KxBAuUEborE6jpsQ
X-Gm-Gg: ASbGncsEq0QQCPkocfqeSDyDrLMqxOb7DgfK5FSYMv+Q3jB8yoIEKy6ghSngC8s7GM6
	zfg55omIPTex7ih30Qm3G5ZtIFp5AKNEzv3XDfA0gS6VQm4qC627sE5G7hSzvTScCBdiXDbjTbY
	dEYyMKn9omp5cQu/io82lOIeMr4Xm9WoXW5piGelzxreiSAtiG8KrtBPeHWR3eVCbcyL8eTAxLf
	Xnb/Q==
X-Google-Smtp-Source: AGHT+IH1jsjH1V1wDoeZBGl4d3w4eng+htXmGvEBFHv1zOeiD0/DpZlCDWBdNHO7OMGPp/RU6le3nBGZA5NwtrvjMEw=
X-Received: by 2002:a17:90b:4a92:b0:2fe:e9c6:689e with SMTP id
 98e67ed59e1d1-313f1ca8cf7mr26361804a91.8.1750300252128; Wed, 18 Jun 2025
 19:30:52 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Wed, 18 Jun 2025 19:30:40 -0700
X-Gm-Features: AX0GCFvzQgBK8bO0xPkWxPWH3JTLSlT0tWLJ11j1GQJ7-DWrdSpQ4kixZq7vozA
Message-ID: <CAL7+V1zrwRGdo1p3w0mDKn_s61TUL+EvYi-oMns7Swavv_UaHA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c74c030637e3888b"
Subject: [oss-security] [kubernetes] CVE-2025-4563: Nodes can bypass dynamic resource
 allocation authorization checks

--000000000000c74c030637e3888b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A vulnerability exists in the NodeRestriction admission controller where
nodes can bypass dynamic resource allocation authorization checks. When the
DynamicResourceAllocation feature gate is enabled, the controller properly
validates resource claim statuses during pod status updates but fails to
perform equivalent validation during pod creation. This allows a
compromised node to create mirror pods that access unauthorized dynamic
resources, potentially leading to privilege escalation.

This issue has been rated Low (2.7)
CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:N/I:N/A:L
<https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U=
/C:N/I:N/A:L>,
and assigned CVE-2025-4563.

Am I vulnerable?

All clusters that are using the DynamicResourceAllocation feature (disabled
by default) and static pods together may be vulnerable.


Affected Versions

   -

   kube-apiserver: v1.32.0 - v1.32.5
   -

   kube-apiserver: v1.33.0 - 1.33.1

How do I mitigate this vulnerability?

This issue can be mitigated by:


   -

   If you're not actively using the DynamicResourceAllocation features, the
   safest and simplest action is to turn off the feature on the API server.

Fixed Versions

   -

   kube-apiserver >=3D v1.32.6
   -

   kube-apiserver >=3D v1.33.2

Detection

All clusters that are using the DynamicResourceAllocation feature and
static pods may be vulnerable.  Run the following command to see if the
feature is in use:

kubectl get ResourceClaim --all-namespaces

and

kubectl get pods --all-namespaces -o json | jq -r '

  .items[]

  | select(.metadata.annotations["kubernetes.io/config.mirror"] =3D=3D "tru=
e")

  | "\(.metadata.namespace)/\(.metadata.name)"'

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

Additional Details

See the GitHub issue for more details:

https://github.com/kubernetes/kubernetes/issues/132151

Acknowledgements

This vulnerability was reported by @amitschendel

The issue was fixed and coordinated by:

Patrick Ohly @pohly

Jordan Liggitt @liggitt

Balaji @SaranBalaji90

Rita Zhang @ritazh

Marko Mudrini=C4=87 @xmudrii


Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

--000000000000c74c030637e3888b--
