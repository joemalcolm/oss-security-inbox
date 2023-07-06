Received: (qmail 3947 invoked by uid 550); 6 Jul 2023 21:55:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17824 invoked from network); 6 Jul 2023 21:28:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688678880; x=1691270880;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=geRYFXoIccAG6SRfGTxMbpaoq9rSFxMmYrq6oLwCS+s=;
        b=nzpQ6MLJZQOzoA9Orf0osB/o/fSXP5Wasp2etuy116i1BFCjDNHKHp/zmDSRs9zWqs
         jnb/xhREwQLmGStzJS5ui5bsaKyAdrJ+u4A57Haroe7OMEYGjfVrwPVkWsK2GLqluslW
         kHuvrBrkacf+mxFrxECADDRzY/4PlI0k6Ji6UIXzBhPqNamCmhRqAw2HfDBd8wY1eaOZ
         a32sOxfVY9SqS085RSHCBcBqnaHuPIGo6XwD6KTAySjwTNTJ6zvXIZ8+JR0eT/UEuexW
         mOprD7nkTbaORUPAQe/F4f0KOjWOEuYKmv2SOjEXDBvI06UU32e2Nd7VrlIp0EgNXsjK
         v46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688678880; x=1691270880;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=geRYFXoIccAG6SRfGTxMbpaoq9rSFxMmYrq6oLwCS+s=;
        b=Apad/s0tpAl0MlApUorNws+wejDEmcUzG7aVy5Rcp9ELl09rN+pIEZjIO3aKLms/KV
         G82/cakvAfRCW0ahkRiZ9kmv8cMhjoT+g1ieMlynGXl9m8oqEZmVIltHoexKP3K493r4
         YCKCfhq7yXxLo9m7lnhLqea8fj99O9yPBT1jVKfQB0NB52E5u06tc24CmM7pln8GOee+
         vf5kDc3j7V8ycIIZRdIgF50Y9b+cXg7le9Aw80rsIFaip/+O9Lxey/uSq2khnZNQ2+fI
         owJF8GPf5KXE5QYQKFVZRdpCc7Ex7vBPtP1ti/0JL5b07POA2yZJJw7UTR9XNVHcngoC
         xuhg==
X-Gm-Message-State: ABy/qLYRysCz42aH56AOOxcujJTeJc9h5UbzfPHXhruAgCz4OoVrJ4I2
	Q+qwFOQl8fejN52PkPYGxIB3g6jzTmgFrpcjWtNpC0kEu0Y=
X-Google-Smtp-Source: APBJJlHCG5Jdz/djWG0oHwJ8G2Dt867UxZO6QR1hT4lhvXO+eoL+JPn0LgoAAwJKth6JFTycmC4uSCqJWkePQ4sacWQ=
X-Received: by 2002:a81:92c3:0:b0:57a:3942:bb74 with SMTP id
 j186-20020a8192c3000000b0057a3942bb74mr2748238ywg.17.1688678879475; Thu, 06
 Jul 2023 14:27:59 -0700 (PDT)
MIME-Version: 1.0
From: Rita Zhang <rita.z.zhang@gmail.com>
Date: Thu, 6 Jul 2023 14:27:48 -0700
Message-ID: <CAL7+V1y9LJpXOBsjP2u+488XPwv430F5iHwTPHLeJh9W_BOOMw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c03f2405ffd83000"
Subject: [oss-security] [kubernetes] CVE-2023-2727: Bypassing policies imposed by the
 ImagePolicyWebhook admission plugin

--000000000000c03f2405ffd83000
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where users may be able to
launch containers using images that are restricted by ImagePolicyWebhook
when using ephemeral containers. Kubernetes clusters are only affected if
the ImagePolicyWebhook admission plugin is used together with ephemeral
containers.

This issue has been rated *Medium* (
CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:H/A:N>),
and assigned CVE-2023-2727

*Am I vulnerable?*
Clusters are impacted by this vulnerability if all of the following are
true:

   1. The ImagePolicyWebhook admission plugin is used to restrict use of
   certain images
   2. Pods are using ephemeral containers.

*Affected Versions*

   - kube-apiserver v1.27.0 - v1.27.2
   - kube-apiserver v1.26.0 - v1.26.5
   - kube-apiserver v1.25.0 - v1.25.10
   - kube-apiserver <= v1.24.14

*How do I mitigate this vulnerability?*
This issue can be mitigated by applying the patch provided for the
kube-apiserver component. This patch prevents ephemeral containers from
using an image that is restricted by ImagePolicyWebhook.

Note: Validation webhooks (such as Gatekeeper
<https://open-policy-agent.github.io/gatekeeper-library/website/validation/allowedrepos/>
and Kyverno
<https://kyverno.io/policies/other/allowed-image-repos/allowed-image-repos/>)
can also be used to enforce the same restrictions.

*Fixed Versions*

   - kube-apiserver v1.27.3
   - kube-apiserver v1.26.6
   - kube-apiserver v1.25.11
   - kube-apiserver v1.24.15

These releases have been published today, June 14th, 2023.

*Detection*
Pod update requests using an ephemeral container with an image that should
have been restricted by an ImagePolicyWebhook will be captured in API audit
logs. You can also use `kubectl get pods` to find active pods with
ephemeral containers running an image that should have been restricted in
your cluster with this issue.

*Additional Details*
See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/118640

Thank You,
Rita Zhang on behalf of the Kubernetes Security Response Committee

--000000000000c03f2405ffd83000--
