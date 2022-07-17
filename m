Received: (qmail 9657 invoked by uid 550); 17 Jul 2022 23:42:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9478 invoked from network); 17 Jul 2022 23:41:59 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AJIora/Pt5NsrmOM8j5mulcWD+jwJzo8REUR7UWkHaOE2GVIhwNR2cYZ
	UuhonOO12KW9YV6Q8usWZyhROkSx9whW9r9QPEw=
X-Google-Smtp-Source: AGRyM1ueyThGc2UeOj30snINIKrWpCxIVRinFjWZWNNIGvg7llVKq3vrNk8i7q82wCPOaG8YMGkUWCDr9GXVNwCyeXM=
X-Received: by 2002:a05:6830:2b27:b0:61c:a2cc:2d95 with SMTP id
 l39-20020a0568302b2700b0061ca2cc2d95mr1008767otv.16.1658101251020; Sun, 17
 Jul 2022 16:40:51 -0700 (PDT)
MIME-Version: 1.0
From: Sean Owen <srowen@apache.org>
Date: Sun, 17 Jul 2022 18:40:40 -0500
X-Gmail-Original-Message-ID: <CAEccTyzievJ1i1uaGOz8NJ37=yCpr+iCAsCe_SJqoMKt3iJSnw@mail.gmail.com>
Message-ID: <CAEccTyzievJ1i1uaGOz8NJ37=yCpr+iCAsCe_SJqoMKt3iJSnw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000011a09605e408c815"
Subject: [oss-security] CVE-2022-33891: Apache Spark shell command injection vulnerability
 via Spark UI

--00000000000011a09605e408c815
Content-Type: text/plain; charset="UTF-8"

Severity: important

Description:

The Apache Spark UI offers the possibility to enable ACLs via the
configuration option spark.acls.enable. With an authentication filter, this
checks whether a user has access permissions to view or modify the
application. If ACLs are enabled, a code path in HttpSecurityFilter can
allow someone to perform impersonation by providing an arbitrary user name.
A malicious user might then be able to reach a permission check function
that will ultimately build a Unix shell command based on their input, and
execute it. This will result in arbitrary shell command execution as the
user Spark is currently running as. This affects Apache Spark versions
3.0.3 and earlier, versions 3.1.1 to 3.1.2, and versions 3.2.0 to 3.2.1.

This issue is being tracked as SPARK-38992

Mitigation:

Upgrade to supported Apache Spark maintenance release 3.1.3, 3.2.2, or
3.3.0 or later

Credit:

 Kostya Kortchinsky (Databricks)

--00000000000011a09605e408c815--
