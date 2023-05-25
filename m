Received: (qmail 17455 invoked by uid 550); 25 May 2023 22:28:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18039 invoked from network); 25 May 2023 20:55:45 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685048133; x=1687640133;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P+Zc7ugwdz1gwHA89Z0h1UEwrBjl+D9CbQ5SNNxiqaQ=;
        b=NmQWkT+5jewNIP/D/uxPt5OcXodg9L6Ywj6mo5jZOYHRMRYCxcNZ+jvWa/Pf2tBBLS
         GZR1wYtgLlmtrUOo6qAumja+8nv8GNYrzQHjO70WGIoYoDbgUdPgfzWEM5C9d3Hh8TCP
         Kuvfi9uTu/RQhuqe8c9o18N8E4ghXAvfxWPhw1mm3bP20EgKsT7PrPFo9X8Ml+si/699
         lDXNNGgbSNB1BaGpS3qhyFsl6Pi0Dhi+2Jm1dzhVawNh6zSrbx8Spx+T/TStL0YNHmU0
         +m/ynNI61GKfe6OGbNdLf+m4H6mf4v6nRbMT7+Idj7GjCoDhteukje9i+XNwvbP2cvh4
         j55w==
X-Gm-Message-State: AC+VfDy65RFgPPJ1LPjWnQ4SjTYvWDOsKp57EyrcqQeNsf6butkrh0gk
	mNebHZaKYVNp7a3u6gFyIXlASNWR5yk=
X-Google-Smtp-Source: ACHHUZ6760+owCuec+jIKmwCt1e/4AHkjj/ChkRF+w0peX0tfKKXXkg1H7ypb2MzmsMrisBrFqP/uA==
X-Received: by 2002:a19:7008:0:b0:4f4:b806:4b5f with SMTP id h8-20020a197008000000b004f4b8064b5fmr3388741lfc.57.1685048132633;
        Thu, 25 May 2023 13:55:32 -0700 (PDT)
X-Received: by 2002:a2e:9f55:0:b0:2a7:a616:c39 with SMTP id
 v21-20020a2e9f55000000b002a7a6160c39mr1296890ljk.48.1685048131442; Thu, 25
 May 2023 13:55:31 -0700 (PDT)
MIME-Version: 1.0
From: Monis Khan <i@monis.app>
Date: Thu, 25 May 2023 16:55:20 -0400
X-Gmail-Original-Message-ID: <CALrOjAAv=w_y7troEmhi4KqMCOHrYURUb1fBGexuOpdWXzbg2w@mail.gmail.com>
Message-ID: <CALrOjAAv=w_y7troEmhi4KqMCOHrYURUb1fBGexuOpdWXzbg2w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004de21805fc8ad7d3"
Subject: [oss-security] [kubernetes] CVE-2023-2878: secrets-store-csi-driver discloses
 service account tokens in logs

--0000000000004de21805fc8ad7d3
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community,

A security issue was discovered in secrets-store-csi-driver where an actor
with access to the driver logs could observe service account tokens.  These
tokens could then potentially be exchanged with external cloud providers to
access secrets stored in cloud vault solutions.  Tokens are only logged
when TokenRequests is configured in the CSIDriver object
<https://kubernetes-csi.github.io/docs/token-requests.html> and the driver
is set to run at log level 2 or greater via the -v flag.

This issue has been rated *MEDIUM*
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:N/A:N>
(6.5), and assigned *CVE-2023-2878*

*Am I vulnerable?*

You may be vulnerable if TokenRequests is configured in the CSIDriver object
<https://kubernetes-csi.github.io/docs/token-requests.html> and the driver
is set to run at log level 2 or greater via the -v flag.

To check if token requests are configured, run the following command:

kubectl get csidriver secrets-store.csi.k8s.io -o
jsonpath="{.spec.tokenRequests}"

To check if tokens are being logged, examine the secrets-store container
log:

kubectl logs -l app=secrets-store-csi-driver -c secrets-store -f | grep
--line-buffered "csi.storage.k8s.io/serviceAccount.tokens"

*Affected Versions*

- secrets-store-csi-driver < 1.3.3

*How do I mitigate this vulnerability?*

Prior to upgrading, this vulnerability can be mitigated by running
secrets-store-csi-driver at log level 0 or 1 via the -v flag.

*Fixed Versions*

- secrets-store-csi-driver >= 1.3.3

To upgrade, refer to the documentation:
https://secrets-store-csi-driver.sigs.k8s.io/getting-started/upgrades.html#upgrades

*D**etection*

Examine cloud provider logs for unexpected token exchanges, as well as
unexpected access to cloud vault secrets.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

*Acknowledgements*

This vulnerability was reported by Tomer Shaiman @tshaiman from Microsoft.

Thank You,

Mo Khan on behalf of the Kubernetes Security Response Committee

--0000000000004de21805fc8ad7d3--
