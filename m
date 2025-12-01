Received: (qmail 24261 invoked by uid 550); 1 Dec 2025 17:35:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5300 invoked from network); 1 Dec 2025 17:24:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764609853; x=1765214653; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xPBdxlfaUhL6G0cvFST2KgLLtSqDtmH/0Biqlcra95I=;
        b=KKCXIwArTvJfgZV7Uf8SfrbL6xs64UbQQ/zz0kXxxv7e5v6JVkoV/ck2iKQD1Aytsc
         fkEkSjY8hIUQYwBBggZILMDamuvBQnXkcoeP/a10x73nf5D7lJ5Lfw2NvRbxb4Ardj0d
         Mn/xQIikBKvZvCrnh9S9Y8AjCsGUJA41MU1mirmYVZC4n6/RCfLXhQDainN5gmZoEAeO
         lLBiE7PykNsSgohq5uizmNlCvhOhyhxonLtovgO9pGV5AOIi5Dggc/RB2h7Ic5+E6gxU
         nczct8nbAxcIx/4ZrresDNtQhwyOuu+lmOmXajQruuwqORfaUuF56qu1dxFT735e4+jo
         0/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609853; x=1765214653;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xPBdxlfaUhL6G0cvFST2KgLLtSqDtmH/0Biqlcra95I=;
        b=BZUCxLQDFHn2tZlkbFw5w6N7nrluR/4p6Buw9GkLi09Z5z9KC02ljTztMgAmLZuDBf
         xMT0YZaQ29NUfb+9tf2/SC/0NojZ2mhvZcZTWGIL9DuaPyVAVESMHUGIdbuD/NME5FQl
         Qm0SvVsPyeqEB5m8h0OJd4qzXl/KSLo6xol02vSk4NyTpa3RTe6CL6M3ucDaupsDx0Yr
         tXIzMweBaxyr42lwcrKq1g7As9nIVaDf0uwyGO+20LsxYTmremwZLhU9LeCRfFudxtCr
         I5mCOcEIKicAt4MKMPB7cCCZBKbZejvfguU04NOWvi2ULN8Umf5dGJuwPrGDzcMDTer/
         lzGw==
X-Gm-Message-State: AOJu0Yz2uqdWBvNLhtbqFAD3hoL6S5a5GROin4fLep1NLaAj6LrBdstG
	y2MZ7QwlNvKxgR7ycX03boR4wCHD34/kNuWqkuKGZbsw16CNziMRivtrB5KHnbiGkDmrV9iB2N5
	1WaekinZAjVu7THEnrqZKKJaey0C5U2fIU2guOdU=
X-Gm-Gg: ASbGncsMs8UgfeeUD0VmNfZxtK/GSoSXpj+0wEmOxFpAnydl6xiA8crO4ExisCrKnS+
	5gIUQjS08OV3gzeZd64KH1e0m3wF+//rqEZ5s3Aa0v9ndxa7+haj5o/9CUn0nnsWvBXQ1K/W+Or
	KYBa6BiQi3iFTDkqOZxkVMlaBwpQj27kirQ/qdsFUuqouchL33Xj485oQRnQJ1hM8AYGBmSzimt
	l5DckK4tpKeNzUJzHr4cI7QJSaTjs/goMQMZXgEq7by87LLIvwI5LltI/4arlR/u3C9hpE=
X-Google-Smtp-Source: AGHT+IFg7kVVaMtyolkdjgxGvKgp4fqioKLVNbc5vTlWzGkw9vxSIESWemKmHcIjvzclV/lqbtEP8Hesvpo8KXZMtn8=
X-Received: by 2002:a05:651c:4403:10b0:37b:a519:cc95 with SMTP id
 38308e7fff4ca-37cd9239504mr86271001fa.21.1764609852992; Mon, 01 Dec 2025
 09:24:12 -0800 (PST)
MIME-Version: 1.0
From: Nathan Herz <nathan.herz97@gmail.com>
Date: Mon, 1 Dec 2025 09:24:00 -0800
X-Gm-Features: AWmQ_blTKmm5AEVSz5_DuvbAjsqOZnZlGduSzKNRE-lbENvSd-gJiwJoDU6s3Kw
Message-ID: <CABrZYSAD=-L5Gyqj4mY+vcAt_Cu=hevmbB0JGqsmdxMqszBYbA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007470730644e73f3c"
Subject: [oss-security] [kubernetes] CVE-2025-13281: Portworx Half-Blind SSRF in kube-controller-manager

--0000000000007470730644e73f3c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A half-blind Server Side Request Forgery (SSRF) vulnerability exists in
kube-controller-manager when using the in-tree Portworx StorageClass. This
vulnerability allows authorized users to leak arbitrary information from
unprotected endpoints in the control plane=E2=80=99s host network (including
link-local or loopback services).

The in-tree Portworx StorageClass has been disabled by default starting in
version v1.31 from the CSIMigrationPortworx feature gate. As a result,
currently supported versions greater than or equal to v1.32 are not
impacted unless the CSIMigrationPortworx feature gate is disabled with an
override.

This issue has been rated Medium (5.8)
CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:C/C:H/I:N/A:N
<https://www.first.org/cvss/calculator/3-1#CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:C=
/C:H/I:N/A:N>,
and assigned CVE-2025-13281.

Am I vulnerable?

You may be vulnerable if all of the following are true:


   -

   You are running a vulnerable version and have manually disabled the
CSIMigrationPortworx
   feature gate.
   -

   There are unprotected endpoints normally only visible from the control
   plane=E2=80=99s host network (including link-local metadata endpoints,
   unauthenticated services listening on localhost, or other services in the
   control plane=E2=80=99s private network).
   -

   Untrusted users can create pods with the affected Portworx volume type.


Affected Versions

The CSIMigrationPortworx feature gate was enabled by default starting on
version v1.31. As a result, EOL versions <=3D v1.30 are more likely to be
vulnerable because the CSIMigrationPortworx feature is disabled by default.

   -

   kube-controller-manager: <=3D v1.30.14
   -

   kube-controller-manager: <=3D v1.31.14
   -

   kube-controller-manager: <=3D v1.32.9
   -

   kube-controller-manager: <=3D v1.33.5
   -

   kube-controller-manager: <=3D v1.34.1

How do I mitigate this vulnerability?

This issue can be mitigated by upgrading to a fixed kube-controller-manager
version or by enabling the CSIMigrationPortworx feature gate (if it was
overridden from its default value in versions greater than equal to v1.31).

Fixed Versions

   -

   kube-controller-manager: >=3D v1.32.10
   -

   kube-controller-manager: >=3D v1.33.6
   -

   kube-controller-manager: >=3D v1.34.2

Detection

This issue can be detected on clusters which have the CSIMigrationPortworx
feature gate disabled on impacted versions by analyzing ProvisioningFailed
events from kube-controller-manager which may contain sensitive information
from the control plane=E2=80=99s host network.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/135525

Acknowledgements

The issue was fixed and coordinated by:

Ankit Gohil @gohilankit

Thank You,

Nathan Herz on behalf of the Kubernetes Security Response Committee

--0000000000007470730644e73f3c--
