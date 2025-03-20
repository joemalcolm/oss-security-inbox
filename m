Received: (qmail 31982 invoked by uid 550); 20 Mar 2025 18:50:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5884 invoked from network); 20 Mar 2025 16:38:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742488724; x=1743093524; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u681tWwvyjK6ilv+lZBgJdKggi7HJgsYGgAJqqHTcMk=;
        b=JOe3X0WEY+k8VhwnHAwvNNL8rLkHVnvjOahYm2NlUNqgqO4G//kAY37mvwgktmqIhZ
         vC8a5R7ECaFoZWU8dnePEMiyaj4LJdjNj/n/s/Z/zz5pIjapJBpSU5L2cQKUz5lGX6BT
         GsgeYxPf0YfU51P4xT9JVD6oXDnU8gFux0uzNeU7wNqdYh8OyqzRjZg/Hw0XwF7vBXo0
         1ff0S36aXciEzAsYjMfvFycOnlWC4hVwWIRHsvd5EuNv1RO0V+e1bkwfvH1qMcumGy0f
         wcPF2zvXYRWc1K7zyvvMwkzN6SslhrOCGkrAoSj2CN6eWqXtrCb//BRi9+Hs4NqZchNo
         KvCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742488724; x=1743093524;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u681tWwvyjK6ilv+lZBgJdKggi7HJgsYGgAJqqHTcMk=;
        b=IYnVq5Edy4BRaT6Yl0jjYb2pRhIEoaVi5saJ1PiOZzux2gZLxmZxww08v+AFqaAp1V
         8sTsjPfoEwLVfofBYMTiCMZWCDWv5JhaN3BUFfjPESt0ctvW8whRgtwLfK9eg+OXK9RZ
         qSzpTD3s9EUqvEzeXrxgThjsaO+phxpPYtbwzlNbrA4GWbK6MhIXHZnQmlVObp8Qmrgl
         deZK05WaB2UYRDKg9WoDUi1mvTDyDKSj5hJ2+3KhUW9r2JiXdBkVP5jm8okE1geVjCRv
         P/qWjA7tAup1E1zepAFq69ak4e0wUIpsqsu8aGmhPVQkOVEmQ22/N943dM45xaYh2rqx
         N8+g==
X-Gm-Message-State: AOJu0YwjiNsKmVpY5+hZrnJgpQ7/3jY11NGMM7QcLiD3sEai7w4tDEXb
	J4fOWUI8Rf0FVizKnBKOqLt3HcPZcVwxOQpl+NmzSGb65mIF8an02jUFpB4fucq/Gn42z9Z9J0O
	ngFZDGWXI3qFMLqGf6Nmy2meyIjtIFzQCkoTr1b/wqAhfOBI2n5Jq
X-Gm-Gg: ASbGncuFn9E3c42BIqisrST9URud2EURxts/aSDHxSB1Pfx69ADDEmNPXnXglTZFrTr
	uF8Qy5MgHc3qkxsXKAeULyrFN0bTzVH5UNaNzucrXT1WnVMXSbLV8yZv1KWNBJh9TxW4ldYqV5b
	mXKsHYNH26h4ZpaVXfTmjfg5yBN2iTBPpFWavIDgEK5KF4lNxxrTQ+BD/N+xvx
X-Google-Smtp-Source: AGHT+IHrgkMAtJrPFQP5ujSWjUmo8grUBrH3b0X57YuD8sgU86E3M4UqJWzs6n9ce0eq2TQSXCz/49QpFimhCcywZr4=
X-Received: by 2002:a05:6402:30b6:b0:5de:c832:89ad with SMTP id
 4fb4d7f45d1cf-5eba39e3ca8mr115869a12.6.1742488723429; Thu, 20 Mar 2025
 09:38:43 -0700 (PDT)
MIME-Version: 1.0
From: Craig Ingram <cjingram@google.com>
Date: Thu, 20 Mar 2025 12:38:32 -0400
X-Gm-Features: AQ5f1Jo39QfCHjaumnWqH8jSmc7QOwJnOCSdt9kwIknx08qgVmRW5c4EirmMz14
Message-ID: <CAHXwHVwYq+1FruWhMoyG-jY=g8AENSX+Xqh20pkBkeZJZm_wDw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000063172c0630c8c51f"
Subject: [oss-security] [kubernetes] CVE-2024-7598: Network restriction bypass via race
 condition during namespace termination

--00000000000063172c0630c8c51f
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in Kubernetes where a malicious or
compromised pod could bypass network restrictions enforced by network
policies during namespace deletion. The order in which objects are deleted
during namespace termination is not defined, and it is possible for network
policies to be deleted before the pods that they protect. This can lead to
a brief period in which the pods are running, but network policies that
should apply to connections to and from the pods are not enforced.

This issue has been rated Low (3.1)
CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N>,
and assigned CVE-2024-7598.

Am I vulnerable?

All clusters that rely on the NetworkPolicy API may be vulnerable.  Run the
following command to see if network policies are in use:

kubectl get networkpolicies.networking.k8s.io --all-namespaces

Affected Versions

   -

   kube-apiserver >= v1.3

How do I mitigate this vulnerability?

This issue can be mitigated by:


   -

   Manually deleting pods and workload resources that orchestrate pods
   before starting namespace deletion
   -

   Adding finalizers to network policies to prevent them from being deleted
   until the pods that they protect have been deleted first. The following
   proof-of-concept controller automates this process:


   -

   https://github.com/kubernetes-sigs/network-policy-finalizer

Fixed Versions

   -

   None. A longer term comprehensive fix is proposed in the following KEP:
   -

      https://github.com/kubernetes/enhancements/pull/5095

Detection

Users of network policies may be able to detect abuse via network logs. The
exact details of this process are environment specific.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issue for more details:
https://github.com/kubernetes/kubernetes/issues/126587

Acknowledgements

This vulnerability was reported by John McGuinness @s1xtw03 and Aaron
Coffey @aaroncoffey.

The issue was coordinated by:

Antonio Ojea @aojea

Tim Hockin @thockin

Dan Winship @danwinship

Shane Utt @shaneutt

David Eads @deads2k

Clayton Colemon @smarterclayton

Mo Khan @enj

Craig Ingram @cji

Thank You,

Craig Ingram on behalf of the Kubernetes Security Response Committee

--00000000000063172c0630c8c51f--
