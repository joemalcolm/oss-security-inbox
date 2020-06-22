X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["838" "Monday" "22" "June" "2020" "16:50:17" "-0500" "Sean Owen" "srowen@apache.org" "<CAEccTyzGvMVto7NL0+aCXKPQG57b0fZVeA03ioGCqtUKFKrjCQ@mail.gmail.com>" "29" "[oss-security] CVE-2020-9480: Apache Spark RCE vulnerability in auth-enabled standalone master" nil nil nil "6" "2020062221:50:17" "[oss-security] CVE-2020-9480: Apache Spark RCE vulnerability in auth-enabled standalone master" (number mark "U       srowen@apach Jun 22   29/838   " thread-indent "\"[oss-security] CVE-2020-9480: Apache Spark RCE vulnerability in auth-enabled standalone master\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-9480: Apache Spark RCE vulnerability in auth-enabled standalone master" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15477 invoked by uid 550); 22 Jun 2020 22:22:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8106 invoked from network); 22 Jun 2020 21:50:41 -0000
X-Gm-Message-State: AOAM530AkTuFdstWUsDsztlAacju4DHs78QzTpfpLGRdJ2qBc/rei0HG
	Dqc/FacybaHZw7akcz7zTkys/9HupByB3ny5yHI=
X-Google-Smtp-Source: ABdhPJyLuicloQkt4DAfc+N5Lqy6jQvf0/sndpNgF1wfCrZNivayoEJnd4tjN6mB8pQgDUfDhZ3JyvT1QQeOZERxv10=
X-Received: by 2002:a2e:9cd5:: with SMTP id g21mr10338240ljj.9.1592862628294;
 Mon, 22 Jun 2020 14:50:28 -0700 (PDT)
MIME-Version: 1.0
From: Sean Owen <srowen@apache.org>
Date: Mon, 22 Jun 2020 16:50:17 -0500
X-Gmail-Original-Message-ID: <CAEccTyzGvMVto7NL0+aCXKPQG57b0fZVeA03ioGCqtUKFKrjCQ@mail.gmail.com>
Message-ID: <CAEccTyzGvMVto7NL0+aCXKPQG57b0fZVeA03ioGCqtUKFKrjCQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-9480: Apache Spark RCE vulnerability in auth-enabled
 standalone master

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Apache Spark 2.4.5 and earlier

Description:
In Apache Spark 2.4.5 and earlier, a standalone resource manager's master may
be configured to require authentication (spark.authenticate) via a
shared secret. When enabled, however, a specially-crafted RPC to the
master can succeed in starting an application's resources on the Spark
cluster, even without the shared key. This can be leveraged to execute
shell commands on the host machine.

This does not affect Spark clusters using other resource managers
(YARN, Mesos, etc).


Mitigation:
Users should update to Spark 2.4.6 or 3.0.0.
Where possible, network access to the cluster machines should be
restricted to trusted hosts only.

Credit:
Ayoub Elaassal

References:
https://spark.apache.org/security.html
