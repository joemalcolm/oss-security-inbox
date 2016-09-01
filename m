X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1097" "Thursday" "1" "September" "2016" "16:17:52" "-0700" "=?UTF-8?B?RGlvZ28gTcOzbmljYQ==?=" "diogo.monica@docker.com" "<CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>" "27" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" nil nil nil "9" "2016090123:17:52" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" (number mark "U       diogo.monica Sep  1   27/1097  " thread-indent "\"[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26575 invoked by uid 550); 2 Sep 2016 01:47:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13624 invoked from network); 1 Sep 2016 23:18:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=docker.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=1EqfoLREL7D9PXJdAFMqH3n2b7d5OgDwWzmiB5ae9g8=;
        b=WY3wElZmDaMbYUofeRIivOpmkM3cNrO/GWTXh4zjs/vLAIN6KwhM2GzrDqRv4NuDtK
         8i13P9BIkirEpJZ95bibX1Oj7drhd1Y1fUZBWCh4JW/CX/5QCPdj1PGbS1+1eUnXi0aq
         +Rb+UBTfPkG9p04K6kyZ7a9o0vOER6Z3y3wLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1EqfoLREL7D9PXJdAFMqH3n2b7d5OgDwWzmiB5ae9g8=;
        b=lZm9CwtCIq9C9u7mXlqNzyArlNGv7lfBnIOncSyuiBfOwG+p6G0T/HDk973Qty+Fw4
         lsNE0hB2PoqbRGATEehutp0Gjzkiz3WfMoCYc4dVk/dDtqKGLZxgzbDparDhMvaSS0By
         CjAN/y3buZGVLY6JpXHqKOlrAEQQd/+IWu7y/b0EwkAvnY/l/xdd+PC60Cx4tIvBbJCU
         JOPUOUIgL6SlVNgY859oRMJXxyE1JEZq7prz8+4TOR81PYKWM+2u9R0ZjlVSjMV+K3zd
         RFDOWHxjWh635KTpMIn6/45vxu0XDAhlU7dSsg1haqVnh2+NKs/y6lSnlNlcIEwGxfwf
         F3tw==
X-Gm-Message-State: AE9vXwM4NMphFT6T2wkczx2cB8+tRWTehW+9c+Gr6+A0i7NSvOcmG9dTGPeCvARwOKtm68k0aFTm4jbDfqsiSwNY
X-Received: by 10.28.129.145 with SMTP id c139mr175027wmd.102.1472771892874;
 Thu, 01 Sep 2016 16:18:12 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Diogo_M=C3=B3nica?= <diogo.monica@docker.com>
Date: Thu, 1 Sep 2016 16:17:52 -0700
Message-ID: <CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1142456c82a8f6053b7a6dfd
Subject: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and
 quitting swam cluster as a node

--001a1142456c82a8f6053b7a6dfd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

A few weeks ago (Aug 4, 2016), a CVE (CVE-2016-6595) describing a DoS on
docker swarm got issued. We believe this not a real issue, and would like
to have the CVE rescinded.

The person reporting this "vulnerability" is exhausting the resources of a
remote manager by doing hundreds of join/leave operations without removing
the state that is left by old nodes. At some point the manager obviously
stops being able to accept new nodes, since it runs out of memory.

Given that both for Docker swarm and for Docker Swarmkit nodes are
*required* to provide a secret token (it's actually the only mode of
operation), this means that no adversary can simply join nodes and exhaust
manager resources.

We can't do anything about a manager running out of memory and not being
able to add new legitimate nodes to the system. This is merely a resource
provisioning issue, and definitely not a CVE worthy vulnerability.

Thank you,
--=20
Diogo M=C3=B3nica

--001a1142456c82a8f6053b7a6dfd--
