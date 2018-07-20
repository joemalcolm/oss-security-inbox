X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1948" "Friday" "20" "July" "2018" "18:05:03" "+0000" "Rodric Rabbah" "rabbah@apache.org" "<CAAC1_d4geVGr-+Ok95Gq9C9P81BXUDT3d9N7-2r+qsiPrM5r3w@mail.gmail.com>" "42" "[oss-security] [CVE] CVE-2018-11756 PHP Runtime for Apache OpenWhisk" nil nil nil "7" "2018072018:05:03" "[oss-security] [CVE] CVE-2018-11756 PHP Runtime for Apache OpenWhisk" (number mark "U       rabbah@apach Jul 20   42/1948  " thread-indent "\"[oss-security] [CVE] CVE-2018-11756 PHP Runtime for Apache OpenWhisk\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32490 invoked by uid 550); 20 Jul 2018 19:59:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30634 invoked from network); 20 Jul 2018 18:05:58 -0000
X-Gm-Message-State: AOUpUlEipX2px/LLszd/i+1Liuv/KByEkkudNajpQssoSM2ahFleGgSx
	vD2yggxCMBA5X0l9piSh+AM2pBScDwP9nu43jsg=
X-Google-Smtp-Source: AAOMgpfu5JxKYoFxTma9A3D702QO5VC5WXWtDFfmL3bd+r1BKkVkFvyg7Ny1M2id6MOk89WJFijWA1sPhDVcD1JFzLc=
X-Received: by 2002:a25:c844:: with SMTP id y65-v6mr1608641ybf.278.1532109943773;
 Fri, 20 Jul 2018 11:05:43 -0700 (PDT)
MIME-Version: 1.0
From: Rodric Rabbah <rabbah@apache.org>
Date: Fri, 20 Jul 2018 18:05:03 +0000
X-Gmail-Original-Message-ID: <CAAC1_d4geVGr-+Ok95Gq9C9P81BXUDT3d9N7-2r+qsiPrM5r3w@mail.gmail.com>
Message-ID: <CAAC1_d4geVGr-+Ok95Gq9C9P81BXUDT3d9N7-2r+qsiPrM5r3w@mail.gmail.com>
To: Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, 
	announce@apache.org, dev@openwhisk.apache.org
Cc: Ory Segal <ory@puresec.io>
Content-Type: multipart/alternative; boundary="000000000000f4b251057172246b"
Subject: [oss-security] [CVE] CVE-2018-11756 PHP Runtime for Apache OpenWhisk

--000000000000f4b251057172246b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Who is Affected: Apache OpenWhisk users with an explicitly created Docker
action, and the Docker image used for the action inherits from the affected
Docker tags:
- openwhisk/action-php-v7.2 < 1.0.1
- openwhisk/action-php-v7.1 < 1.0.2

The PHP Runtime does not currently have any Apache releases.

Description: A Docker action running as a serverless function (e.g., wsk
action create <name> =E2=80=94docker <image>), where the Dockerfile used to=
 create
the Docker image inherits one of the affected tags, may allow a carefully
crafted parameter to overwrite the serverless function running inside the
container. This requires the user included function to be vulnerable in
some way, for example via parameter hijacking, remote code execution, or
unsafe use of =E2=80=9Ceval()=E2=80=9D. Subsequent executions of the origin=
al function in
the same container will use the replaced implementation if the function was
successfully exploited.

Mitigation: Users that create their own Docker runtimes to run as Apache
OpenWhisk Docker actions, and who pin their Docker runtime image (e.g.,
Dockerfile starts with =E2=80=9CFROM openwhisk/action-php-v7.2:1.0.0=E2=80=
=9D) should
upgrade their Docker tag to the latest available tag. Users who build from
source, should use the latest commit Git tag [1]. Operators of an Apache
OpenWhisk deployment should check their runtime manifest to determine if
they are affected, and if so, upgrade the tags in their runtimes manifest
to automatically patch all actions runtimes when updating their deployment.

Credit: This issue was discovered while investigating a related issue
researched and reported by Yuri Shapira and Ory Segal of PureSec.

[1]
https://github.com/apache/incubator-openwhisk-runtime-php/commit/6caf902f52=
7250ee4b7b695929b628d560e0dad1

--000000000000f4b251057172246b--
