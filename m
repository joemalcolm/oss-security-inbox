X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1841" "Friday" "20" "July" "2018" "18:07:08" "+0000" "Rodric Rabbah" "rabbah@apache.org" "<CAAC1_d7x6buq1aREekk_Eh9SjevQLPLkXc+aidiFBMcNz7GGwQ@mail.gmail.com>" "39" "[oss-security] [CVE] CVE-2018-11757 Docker Skeleton Runtime for Apache OpenWhisk" nil nil nil "7" "2018072018:07:08" "[oss-security] [CVE] CVE-2018-11757 Docker Skeleton Runtime for Apache OpenWhisk" (number mark "U       rabbah@apach Jul 20   39/1841  " thread-indent "\"[oss-security] [CVE] CVE-2018-11757 Docker Skeleton Runtime for Apache OpenWhisk\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1572 invoked by uid 550); 20 Jul 2018 19:59:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32166 invoked from network); 20 Jul 2018 18:08:08 -0000
X-Gm-Message-State: AOUpUlENNGSaWKBnlGjlEpAw9PJ2GcVckWdt9xFSnrdcrZAgYAk2RbwT
	HqWEohabOpNMwtOd1nUy0ewWI0T/tUbhVF40MgE=
X-Google-Smtp-Source: AAOMgpciMH7V41r7kA6Mb4rFhrQIUBrEkXmtCUaRBdZAY+tnM5bGAgY/CZC0RkmOe2mWyxOuSeMSvrDCN9fjk50DMYc=
X-Received: by 2002:a81:7d43:: with SMTP id y64-v6mr1503048ywc.371.1532110069395;
 Fri, 20 Jul 2018 11:07:49 -0700 (PDT)
MIME-Version: 1.0
From: Rodric Rabbah <rabbah@apache.org>
Date: Fri, 20 Jul 2018 18:07:08 +0000
X-Gmail-Original-Message-ID: <CAAC1_d7x6buq1aREekk_Eh9SjevQLPLkXc+aidiFBMcNz7GGwQ@mail.gmail.com>
Message-ID: <CAAC1_d7x6buq1aREekk_Eh9SjevQLPLkXc+aidiFBMcNz7GGwQ@mail.gmail.com>
To: Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, 
	announce@apache.org, dev@openwhisk.apache.org
Cc: Ory Segal <ory@puresec.io>
Content-Type: multipart/alternative; boundary="00000000000071777e0571722cbc"
Subject: [oss-security] [CVE] CVE-2018-11757 Docker Skeleton Runtime for Apache OpenWhisk

--00000000000071777e0571722cbc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Who is Affected: Apache OpenWhisk users with an explicitly created Docker
action, and the Docker image used for the action inherits from the affected
Docker tag:
- openwhisk/dockerskeleton < 1.3.1

The Docker Skeleton Runtime does not currently have any Apache releases.

Description: A Docker action running as a serverless function (e.g., wsk
action create <name> =E2=80=94docker <image>), where the Dockerfile used to=
 create
the Docker image inherits one of the affected tags, may allow a carefully
crafted parameter to overwrite the serverless function running inside the
container. This requires the user included function to be vulnerable in
some way, for example via parameter hijacking, remote code execution, or
unsafe use of "eval()". Subsequent executions of the original function in
the same container will use the replaced implementation if the function was
successfully exploited.

Mitigation: Users that create their own Docker runtimes to run as Apache
OpenWhisk Docker actions, and who pin their Docker runtime image (e.g.,
Dockerfile starts with "FROM openwhisk/dockerskeleton:1.0.0") should
upgrade their Docker tag to the latest available tag. Users who build from
source, should use the latest commit Git tag [1]. Operators of an Apache
OpenWhisk deployment should check their runtime manifest to determine if
they are affected, and if so, upgrade the tags in their runtimes manifest
to automatically patch all actions runtimes when updating their deployment.

Credit: This issue was researched and reported by Yuri Shapira and Ory
Segal of PureSec.

[1]
https://github.com/apache/incubator-openwhisk-runtime-docker/commit/891896f=
25c39bc336ef6dda53f80f466ac4ca3c8

--00000000000071777e0571722cbc--
