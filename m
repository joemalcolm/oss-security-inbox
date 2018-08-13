X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1967" "Monday" "13" "August" "2018" "09:24:46" "-0500" "Sean Owen" "srowen@apache.org" "<CAEccTyy0JwT+1B4qHVhMB3SRYw-g2x6gmwWUZbd5dcVDk0H0tw@mail.gmail.com>" "46" "[oss-security] CVE-2018-11770: Apache Spark standalone master, Mesos REST APIs not controlled by authentication" "^Date:" nil nil "8" "2018081314:24:46" "[oss-security] CVE-2018-11770: Apache Spark standalone master, Mesos REST APIs not controlled by authentication" (number mark "        srowen@apach Aug 13   46/1967  " thread-indent "\"[oss-security] CVE-2018-11770: Apache Spark standalone master, Mesos REST APIs not controlled by authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32033 invoked by uid 550); 13 Aug 2018 14:29:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28441 invoked from network); 13 Aug 2018 14:25:12 -0000
X-Gm-Message-State: AOUpUlGCb1KqBW2dGf/otDVxn1HvI+a6zt7f1YHfVB4J46OP0BLeZgXM
	BgeUKKXEm5EFB0fQzGoJ77Gj0kD9AMS3y0Ri8n4=
X-Google-Smtp-Source: AA+uWPwiTLjcwo5VgRfTZbM+EMYpXZx/e2/Zo+a+Ir1MAFf9Jn7PjiNU6WXcc6eq7Gg1XPH8mIq0bQ2QJUnb/eePaA0=
X-Received: by 2002:a2e:4401:: with SMTP id r1-v6mr13193848lja.21.1534170297909;
 Mon, 13 Aug 2018 07:24:57 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAEccTyy0JwT+1B4qHVhMB3SRYw-g2x6gmwWUZbd5dcVDk0H0tw@mail.gmail.com>
Message-ID: <CAEccTyy0JwT+1B4qHVhMB3SRYw-g2x6gmwWUZbd5dcVDk0H0tw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a1c9d8057351db92"
Date: Mon, 13 Aug 2018 09:24:46 -0500
From: Sean Owen <srowen@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-11770: Apache Spark standalone master, Mesos REST APIs not
 controlled by authentication
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--000000000000a1c9d8057351db92
Content-Type: text/plain; charset="UTF-8"

Severity: Medium

Vendor: The Apache Software Foundation

Versions Affected:
Spark versions from 1.3.0, running standalone master with REST API enabled,
or running Mesos master with cluster mode enabled

Description:
>From version 1.3.0 onward, Spark's standalone master exposes a REST API for
job submission, in addition to the submission mechanism used by
spark-submit. In standalone, the config property
'spark.authenticate.secret' establishes a shared secret for authenticating
requests to submit jobs via spark-submit. However, the REST API does not
use this or any other authentication mechanism, and this is not adequately
documented. In this case, a user would be able to run a driver program
without authenticating, but not launch executors, using the REST API. This
REST API is also used by Mesos, when set up to run in cluster mode (i.e.,
when also running MesosClusterDispatcher), for job submission. Future
versions of Spark will improve documentation on these points, and prohibit
setting 'spark.authenticate.secret' when running the REST APIs, to make
this clear. Future versions will also disable the REST API by default in
the standalone master by changing the default value of
'spark.master.rest.enabled' to 'false'.

Mitigation:
For standalone masters, disable the REST API by setting
'spark.master.rest.enabled' to 'false' if it is unused, and/or ensure that
all network access to the REST API (port 6066 by default) is restricted to
hosts that are trusted to submit jobs. Mesos users can stop the
MesosClusterDispatcher, though that will prevent them from running jobs in
cluster mode. Alternatively, they can ensure access to the
MesosRestSubmissionServer (port 7077 by default) is restricted to trusted
hosts.

Credit:
Imran Rashid, Cloudera
Fengwei Zhang, Alibaba Cloud Security Team

Reference:
https://spark.apache.org/security.html

--000000000000a1c9d8057351db92--
