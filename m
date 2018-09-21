X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1090" "Friday" "21" "September" "2018" "12:50:31" "+0200" "Alex R" "alexr@apache.org" "<CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>" "35" "[oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API." "^Date:" nil nil "9" "2018092110:50:31" "[oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API." (number mark "        alexr@apache Sep 21   35/1090  " thread-indent "\"[oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the JWT implementation to gain unauthenticated access to Mesos Executor HTTP API.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15727 invoked by uid 550); 21 Sep 2018 11:14:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19515 invoked from network); 21 Sep 2018 10:50:57 -0000
X-Gm-Message-State: APzg51DzRWUd2+53kem/0gtnSnwjVoKMxzkUEr7Ofy+NH4LRNeJzVx2+
	x5pQkxpUHypAVU28gVoTHEHj9+rdBwT1vApyJEE=
X-Google-Smtp-Source: ANB0VdZhGW7aA5voKo1fSq7AlpH2cYfpHh/P/9o6jMyzGA0kn3HV/V6SJelpC6bM808EbfRgMUP1UHhF1fmD1jjxXD0=
X-Received: by 2002:a67:5dc6:: with SMTP id r189-v6mr1117105vsb.172.1537527042700;
 Fri, 21 Sep 2018 03:50:42 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>
Message-ID: <CAPNiXbEAF=Se=QxAumYgog+4ZCoVpoPCUsfONszrNDqkNmzYaw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000367dcb05765f69d3"
Date: Fri, 21 Sep 2018 12:50:31 +0200
From: Alex R <alexr@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-8023: A remote attacker can exploit a vulnerability in the
 JWT implementation to gain unauthenticated access to Mesos Executor HTTP API.
To: dev <dev@mesos.apache.org>, user <user@mesos.apache.org>, 
	Terry Chia <terrycwk1994@gmail.com>, security <security@apache.org>, 
	oss-security@lists.openwall.com, Alexander Rojas <alexander@mesosphere.io>

--000000000000367dcb05765f69d3
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Mesos 1.4.0 to 1.6.0
The unsupported Apache Mesos pre-1.4.0 releases may be also affected.

Description:
Apache Mesos can be configured to require authentication to call the
Executor HTTP API using JSON Web Token (JWT). The comparison of the
generated HMAC value against the provided signature in the JWT
implementation used is vulnerable to a timing attack because instead
of a constant-time string comparison routine a standard `==` operator
has been used. A malicious actor can therefore abuse the timing
difference of when the JWT validation function returns to reveal the
correct HMAC value.

Mitigation:
pre-1.4.x users should upgrade to at least 1.4.2
1.4.x users should upgrade to 1.4.2
1.5.x users should upgrade to 1.5.2
1.6.0 users should upgrade to 1.6.1
1.7.0-dev users should obtain Mesos 1.7.0

Credit:
This issue was discovered by Terry Chia (Ayrx).

Alex on behalf of Mesos PMC

--000000000000367dcb05765f69d3--
