Received: (qmail 27852 invoked by uid 550); 21 Jun 2023 19:07:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13761 invoked from network); 21 Jun 2023 18:20:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1687371596; x=1689963596;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XW2wWn1SWv1eWX4/c66lEAqAtRAPQj9LsTo7jbDGLAI=;
        b=aAAqJLxWZUvbOCxsqXNx3zyOWIZNLXOHemSksO22u+af5AdJMcz1C3OR/Ip4ssYBRT
         VdpeCfErwL2FlWnTMQmig6gQot5F9gaz3Vb+8pjKFXNZZhGczeqS3GCavqWW/jnUt4ao
         nh9GMgGU5KC8xAYZ4RHaJA0hM/z5uRa3xBRyOlJEsBacmm/qWqF+mvXy5I1eoYdRAaSB
         eSs8GSXimMeeaTJa2UPNIDyaYPAMKAQDsKFPCCaBFRd9hQ8fan8wXcM+K4P5Hj8HX+P3
         +3q9TAdTuBARlrcuJaoNrEqbOIO702sYc5L+sPWmp8y0/CoIc/k4LmymG6Gbf0o6P2xy
         IbIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687371596; x=1689963596;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XW2wWn1SWv1eWX4/c66lEAqAtRAPQj9LsTo7jbDGLAI=;
        b=I733rvx/0Pqfk90ojMmxPEW4CbTQZWu1wDJD0kHBwyfkIMvMl0cBwtFsxS3kl0osIT
         TXo9k/PnGPbKkyOSzpfnkl1iZ0ic5/YoVg+tbpBQxD7U1SD9T7pcJ6X0BeJ402CfOc6M
         o006BKh633zwXWhrZXViyJiat4h9F1JPjHKS0gTfoS6KP751ZiR7qd9yuGlq9osPv0D8
         gYbXZFL1unu9UM3AiPqvGW168brq2qGsdiG4J4FpF81arYBbzRUihLZNUdn4Ff9WPX+T
         pyeWRR0k2ILv3sJG5p2tnPTBmDyIC6OoHYUdJYLCytysc8b6+Az1Yr1mN2QrPFERNiI9
         GZlw==
X-Gm-Message-State: AC+VfDzRv1jIFcyfCUyfWdgO78ZqAzK/xaPSUwxlpHQYH5GijRsxjy6Z
	Uh4r9IXLN0mtsNiJn78roePlOHR/cbVCZC2jM+Z31aHkjWkc4GWWyi0=
X-Google-Smtp-Source: ACHHUZ6lvfk+Ede4TKg8ZpxnVwlsoGSxj7rqy9gnoA+37yzHu2ybL1NwTX/4GwA97ERjIDKHtJ9HOIDK69sk12upPno=
X-Received: by 2002:a05:622a:1016:b0:3f9:ad2e:4801 with SMTP id
 d22-20020a05622a101600b003f9ad2e4801mr1046471qte.17.1687371595168; Wed, 21
 Jun 2023 11:19:55 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGCc8SFudn+Pv-3gZFXt-qeM7GSHbOp7F2iNeksqAmRrVQ@mail.gmail.com>
In-Reply-To: <CABdrxGCc8SFudn+Pv-3gZFXt-qeM7GSHbOp7F2iNeksqAmRrVQ@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Wed, 21 Jun 2023 11:19:42 -0700
Message-ID: <CABdrxGCTFixuOZWpSVzgbVnj4Em=GpMgapSarnLHAV9+3CG0bw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000089265005fea7d020"
Subject: [oss-security] [kubernetes/kops] CVE-2023-1943: Privilege Escalation in kOps using
 GCE/GCP Provider in Gossip Mode

--00000000000089265005fea7d020
Content-Type: text/plain; charset="UTF-8"

Issue Details

A security issue was reported in kOps <https://github.com/kubernetes/kops>
with the GCP Provider running in Gossip Mode
<https://kops.sigs.k8s.io/gossip/>, where Node service account credentials
could be used by a container running in the cluster to retrieve sensitive
information from the state storage bucket and escalate to cluster-admin
permissions.

This issue has been rated High (CVSS:3.1/AV:A/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:A/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H>),
and assigned CVE-2023-1943.
Affected Components and Configurations

This bug affects the kOps GCP provider, only when running in Gossip Mode.
See below for information about other providers.
Affected Versions

   -

   v1.26.0 - v1.26.1
   -

   <v1.25.4

Fixed Versions

   -

   v1.26.2
   -

   V1.25.4


Recent kOps improvements have systematically reduced the potential for this
class of attacks, by reducing or eliminating cloud credentials/privileges
on the nodes.  The recommended versions vary by cloud:

AWS users: should not be affected in recent versions.  kOps version 1.26
(or later) is recommended, but not a critical update.

GCE users: recommended kOps version is 1.26.3 (or later).

DigitalOcean users: recommended kOps version is 1.27.0-alpha.2 (or later),
with `--dns=none` for new clusters.  Cloud credentials have been removed
from the nodes in this configuration.  Future versions will likely make
dns=none the default.

Hetzner users: recommended kOps version is 1.27.0-alpha.2 (or later).
Cloud credentials have been removed from the nodes in this configuration.

(Azure, Scaleway and other cloud providers are following the same approach,
but as these are in alpha we recommend using the latest kOps version, and
generally do not recommend production usage when in alpha).
Detection

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Details

See kOps Issue #15539 <https://github.com/kubernetes/kops/issues/15539> for
more details.
Acknowledgements

This vulnerability was reported by James Cleverley-Prance

Thank You,

CJ Cullen on behalf of the Kubernetes Security Response Committee

--00000000000089265005fea7d020--
