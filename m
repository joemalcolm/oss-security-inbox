Received: (qmail 24495 invoked by uid 550); 16 Aug 2024 17:46:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19688 invoked from network); 16 Aug 2024 17:08:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1723828078; x=1724432878; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j7cZjZZFwaaoWf1Hxr848Yq25bv6YTu1iQKqwfWAiqo=;
        b=pq6FA0q1wGD52QnQtSZ1Ml3oT2yrGTpA3xY/fit5YAcOhBYXW1xVhZSP22A3oPbVIk
         iqpRpm5Hbnh9rKVsXLqldxXfJfAnoJ2JEYTBVaLaILTGxvP34kJPCKCQ2kPPKbR0FklV
         Hs4F7r/yEXdE6rbrLtvsoz/eowXdqya6I0J3BcgsroG+Ht2+Z76nxpK0s1ulcSICZbAU
         Cs88HkJObSFgC8+7FO8a9Wyluv3SmBXEXJX5OLJu+Z8+mZuP9FnR/ajjlpAm8Ls39itr
         sFDfRVU+x7ufqv0bUXMJaabNjySpEK+TRGmeBopqeILmpPnW3ghfCohfSS8+jrnZiGMH
         RPfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723828078; x=1724432878;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j7cZjZZFwaaoWf1Hxr848Yq25bv6YTu1iQKqwfWAiqo=;
        b=DO5pAGkyBS10bD7y8psaZO4xiOJOwSWODEc0PqDhi0tz8TkKbfhtSNKrdqCsrUdyjD
         cQtx1BHUVMC9PMaQyy6/kyNd9dneXPnVQ6nFlexC0qm8lwZL8kOxpgDawdPX4cwa2nXW
         y2bSIlPgZHT7vsKJBg1ISE/YEAZ3gND6eXzLY1TExDfy5nEaVhjLNBibTFkIGC2xK+R6
         6/yi/ZVTvLLdI1uS/BNUhz4HIQDo5Axz8gjI6uJZScWdd+O75muR1q4qKqjpg4RtzFbb
         GAohESqrqD+wDFz86Jwe23o1ecfiursz4H7N9GfIs7OUjojGRqz7uQJYTY38xLRn8SPI
         cBLg==
X-Gm-Message-State: AOJu0YwpgitoBhnYiMBlHoGcXNhKbL1jgHHKlsIXR2Kotvt3SvpYBegw
	KUMr3ZFmqNh9FFhgLAAnufpF1UKqiN6k5jTJ9YdhJUqoYoAUUNftghAiYaGzDcHe28elbOPlNze
	cdr5SZK4LkP0HSeq7OCA3b1Ss2r9UnP8s+BO9tvMPwgyEhhzrSj+I
X-Google-Smtp-Source: AGHT+IFwTC42exOyCmL/UILrtX7+x3GPqWSEizfdaBoh5yEiJbekwUMnDWnIXqZPhWO2TKcZynA+naDJ7XMQ9niJYDs=
X-Received: by 2002:a05:622a:46ce:b0:447:d7fd:63f with SMTP id
 d75a77b69052e-45377060c29mr1576641cf.19.1723828077482; Fri, 16 Aug 2024
 10:07:57 -0700 (PDT)
MIME-Version: 1.0
From: Craig Ingram <cjingram@google.com>
Date: Fri, 16 Aug 2024 13:07:46 -0400
Message-ID: <CAHXwHVzF6HFyzWf+MyQ8+UxhdSZhLntDs8CcETTnr8czmxkHvg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000036d839061fd00087"
Subject: [oss-security] [kubernetes] CVE-2024-7646: Ingress-nginx Annotation Validation Bypass

--00000000000036d839061fd00087
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A security issue was discovered in ingress-nginx where an actor with
permission to create Ingress objects (in the `networking.k8s.io` or
`extensions` API group) can bypass annotation validation to inject
arbitrary commands and obtain the credentials of the ingress-nginx
controller. In the default configuration, that credential has access to all
secrets in the cluster.

This issue has been rated High (8.8)
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U=
/C:H/I:H/A:H>
and assigned CVE-2024-7646.

Am I vulnerable?

This bug affects ingress-nginx. If you do not have ingress-nginx installed
on your cluster, you are not affected. You can check this by running
`kubectl get po -A` and looking for `ingress-nginx-controller`.

Multi-tenant environments where non-admin users have permissions to create
Ingress objects are most affected by this issue.

Affected Versions

ingress-nginx controller < v1.11.2

How do I mitigate this vulnerability?

This issue can be mitigated by upgrading to the fixed version.

Fixed Versions

ingress-nginx controller v1.11.2

Detection

Review your Kubernetes audit logs for Ingress objects created with
annotations (e.g. `nginx.ingress.kubernetes.io/auth-tls-verify-client`)
that contain carriage returns (`\r`).

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io

Additional Details

See the GitHub issue for more details:

https://github.com/kubernetes/kubernetes/issues/126744

Acknowledgements

This vulnerability was reported by Andr=C3=A9 Storfjord Kristiansen @dev-bi=
o.

The issue was fixed and coordinated by the fix team:

Andr=C3=A9 Storfjord Kristiansen @dev-bio

Jintao Zhang @tao12345666333

Marco Ebert @Gacko

Thank You,

Craig Ingram on behalf of the Kubernetes Security Response Committee


--

Craig Ingram
Security Engineer
cjingram@google.com

--=20

Craig Ingram
Security Engineer
cjingram@google.com

--00000000000036d839061fd00087--
