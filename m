Received: (qmail 20477 invoked by uid 550); 16 Apr 2024 21:50:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17745 invoked from network); 16 Apr 2024 21:48:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713304108; x=1713908908; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LpW1v9qLQszBiVrQLfQCIddvf3yGXc/RLYgwhjQq1uw=;
        b=G/4ZxNyZus5g+yVeYXedmVimpGJvD+/E00AXj/IETSg3LvuGaKKLbMHnCP/QatR+TH
         jC48k8mX/9SJOWlfpdZLl2k5DXK56YO25gsKn6BIN8GdtIdgrUV7iquTMfIWRmIj9cRi
         6i/iInhD9aPE3qQaFLFYWD2Oc5J5j6wDV7L9SrdTqUpU5wvY3ZThlftynCshvY0hBANp
         zvn7EY5gGOYYCQKaI35mFvR304Bkxnu6DsnIj76AZYLSA06y8DlXI2V56yKeYDONKUSt
         3vbAIAY9HyPt3xV94rdrJ1kEn/zQC0ISIrwpRnhbHnkVRu/08bQQvp1wH3CVVSmvPfUw
         eePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713304108; x=1713908908;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LpW1v9qLQszBiVrQLfQCIddvf3yGXc/RLYgwhjQq1uw=;
        b=X2fN5KEiWOI+DoMnsy88/j3b3yK3/aDXX+wPzOwLn8KY0RWgQkkdRFnMT0pIlHG2qj
         Xkz7PnOnyCnDDY1I3zxdxtChxv/4RuUre+6njPaXHU2X8b4qVykdtH69B5UOHWKzzkJT
         q1RLZxOMHXnbCtreiAm1L0ig8HWHcFlvEGqNokWrrE1Dsc3tCFAWGZFv3cAttvMYp+3y
         vg0Dg4+CGbFBNS3M8ry+owHJ2CgRbqVi0Chx9dL1iuf+U7VorqVRJ19Rr3Xv3xMsgAX6
         U23j4PkjMUDs60w+ux6XH8v5yN/MojmZrsrqrCVHGKBEoFUjka/39e1mD2cvuIqC+VIj
         u/Jw==
X-Gm-Message-State: AOJu0YxoVlJxAGMSxWqBgoU5Af34hYPN/RSChMGl5XMRsLZLdv5xr7gK
	SM8hXDKOwuBGj4CPkKKUOm8H1LUdcUGg1jRbz2Ko2Thc2LNR1ShINg5HVOQGxNUDkP4CI3Z+dCw
	S+0xXLmECuXpKBzpoIGW48PO7RkhdbXAG
X-Google-Smtp-Source: AGHT+IFo+Z2yYC7rg/rEg44eWax8MWHBUyHXBwquIH+oDU0hNja8VwKPK/7wfUyOwfKjxcNE8k6ZENtu3y6ce2CbFAw=
X-Received: by 2002:a25:848d:0:b0:dc2:4397:6ad3 with SMTP id
 v13-20020a25848d000000b00dc243976ad3mr15961575ybk.44.1713304107561; Tue, 16
 Apr 2024 14:48:27 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Tue, 16 Apr 2024 14:48:15 -0700
Message-ID: <CAL7+V1yx4TBm7LviPgBKCMhaVDSggTqgXpJtowdAwpiFkJfJ6Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b93c0106163db220"
Subject: [oss-security] [kubernetes] CVE-2024-3177: Bypassing mountable secrets policy
 imposed by the ServiceAccount admission plugin

--000000000000b93c0106163db220
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where users may be able to
launch containers that bypass the mountable secrets policy enforced by the
ServiceAccount admission plugin when using containers, init containers, and
ephemeral containers with the envFrom field populated. The policy ensures
pods running with a service account may only reference secrets specified in
the service account=E2=80=99s secrets field. Kubernetes clusters are only a=
ffected
if the ServiceAccount admission plugin and the
kubernetes.io/enforce-mountable-secrets annotation are used together with
containers, init containers, and ephemeral containers with the envFrom
field populated.

This issue has been rated Low CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:L/I:N/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U=
/C:L/I:N/A:N>,
and assigned CVE-2024-3177

Am I vulnerable?

Clusters are impacted by this vulnerability if all of the following are
true:

   1.

   The ServiceAccount admission plugin is used. Most cluster should have
   this on by default as recommended in
   https://kubernetes.io/docs/reference/access-authn-authz/admission-contro=
llers/#serviceaccount
   2.

   The kubernetes.io/enforce-mountable-secrets annotation is used by a
   service account. This annotation is not added by default.
   3.

   Pods using containers, init containers, and ephemeral containers with
   the envFrom field populated.


Affected Versions

   -

   kube-apiserver v1.29.0 - v1.29.3
   -

   kube-apiserver v1.28.0 - v1.28.8
   -

   kube-apiserver <=3D v1.27.12

How do I mitigate this vulnerability?

This issue can be mitigated by applying the patch provided for the
kube-apiserver component. The patch prevents containers, init containers,
and ephemeral containers with the envFrom field populated from bypassing
the mountable secrets policy enforced by the ServiceAccount admission
plugin.

Fixed Versions

   -

   kube-apiserver v1.29.4
   -

   kube-apiserver v1.28.9
   -

   kube-apiserver v1.27.13

These releases have been published today, April 16th, 2024.

Detection

Pod update requests using a container, init container, or ephemeral
container with the envFrom field populated that exploits this vulnerability
with unintended secret will be captured in API audit logs. You can also use
the following kubectl command to find active pods using the
kubernetes.io/enforce-mountable-secrets annotation.


`kubectl get serviceaccounts --all-namespaces -o jsonpath=3D"{range
.items[?(@.metadata.annotations['kubernetes\.io/enforce-mountable-secrets']=
=3D=3D'true')]}{.metadata.namespace}{'\t'}{.
metadata.name}{'\n'}{end}"`

Additional Details

See the GitHub issue for more details:
<https://github.com/kubernetes/kubernetes/issues/118640>
https://github.com/kubernetes/kubernetes/issues/124336


Acknowledgements

This vulnerability was reported by tha3e1vl.

The issue was fixed and coordinated by the fix team:

Rita Zhang @ritazh

Joel Smith @joelsmith

Mo Khan @enj

and release managers:

Sascha Grunert @saschagrunert

Jeremy Rickard @jeremyrickard

Thank You,

Rita Zhang on behalf of the Kubernetes Security Response Committee

--000000000000b93c0106163db220--
