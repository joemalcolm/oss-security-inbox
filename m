X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["658" "Monday" "5" "September" "2016" "16:26:02" "-0700" "=?UTF-8?B?RGlvZ28gTcOzbmljYQ==?=" "diogo.monica@docker.com" "<CA+q1=fTZxdEBOCoUTSXgusCP1k4wm_fJJqSLyucqbjs5LE+1_A@mail.gmail.com>" "19" "[oss-security] cve request: docker swarm node Dos occurs when join a cluster failed using local CA certificate" nil nil nil "9" "2016090523:26:02" "[oss-security] cve request: docker swarm node Dos occurs when join a cluster failed using local CA certificate" (number mark "U       diogo.monica Sep  5   19/658   " thread-indent "\"[oss-security] cve request: docker swarm node Dos occurs when join a cluster failed using local CA certificate\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19850 invoked by uid 550); 5 Sep 2016 23:26:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19832 invoked from network); 5 Sep 2016 23:26:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=docker.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=9UvpuSrUkGX+sRjRv9wZF3//qzyxWJmxt505oFM2MKg=;
        b=aAS9mNdSWHQNqLXSBjHpdMsfV3YXyv8VEIu0H7PiKdarRR5lwz7mcYrOMqBxR6Gt6t
         4A/Zh6RBeS60zj5YSCCjjsSYKrGiBs0SObQCuhZaQMeVfy7G1q6DqVrVhGv8o+sPkphm
         PHGrAH3nMD1kAFBs3oI4KdOQ252L600lbYxl8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9UvpuSrUkGX+sRjRv9wZF3//qzyxWJmxt505oFM2MKg=;
        b=TKPUcV0vOCTYkFJRE0K4h/7+d6QIMFuWogk6YU51n+z6nN2IK+a5n4qkCznTHZJrEE
         Mvs6QmDiqSZ+pcVUq0GlKJFKv5eRDox1pl0s6xZUfxMscPpsxFZxFGBHNC/9cIoWDeTh
         XRoVsfiyl5HuPos7tj4gB2vQm7ihNtwSZ1J1jsGMKoegrlq6cq6DqZsbOroxqXH1BLBq
         nf1oOahCzBXVvZ/45zg5G7uLhtkX92EE41nnBhGa4Gv8av3LloSEHOHOuT5q9pv/ksYn
         hgRvMzP2/2ft6+IYKEHftq7kEr3fGhIJMbJPBdB0rKyP8Wmyaeb+gv/uJGvzsMo/0UR/
         rD7Q==
X-Gm-Message-State: AE9vXwO1CSP3Nb+HH9o7kGtM35Yy0/lQk1JPyficHNJ2YB+kGAwPdSZ/nh0EmCuEARlUKCAd3Y50GWUq+LafYPZl
X-Received: by 10.28.23.210 with SMTP id 201mr16651678wmx.108.1473117983320;
 Mon, 05 Sep 2016 16:26:23 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Diogo_M=C3=B3nica?= <diogo.monica@docker.com>
Date: Mon, 5 Sep 2016 16:26:02 -0700
Message-ID: <CA+q1=fTZxdEBOCoUTSXgusCP1k4wm_fJJqSLyucqbjs5LE+1_A@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a114706221bc4f0053bcb0219
Subject: [oss-security] cve request: docker swarm node Dos occurs when join a cluster failed
 using local CA certificate

--001a114706221bc4f0053bcb0219
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

>From I can understand from this report, the author creates a swarm, messes
with the local certificate for a worker, and then tries to join the swarm.
The worker fails because the author messed with the local state.

This does not make the manager not available to the rest of the worker
nodes, and is essentially a self-DoS (I modified my local configuration in
such a way that docker doesn't run).

A simple rm -rf /var/lib/docker/swarm should clean all the state. Not CVE
worthy.

--=20
Diogo M=C3=B3nica

--001a114706221bc4f0053bcb0219--
