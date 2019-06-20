X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2257" "Thursday" "20" "June" "2019" "14:38:02" "-0600" "Joel Smith" "joelsmith@redhat.com" "<CAEftUarE+73RVs+D9QhDbFShJqttj0Y48Hg1WQFQevMP66jjKA@mail.gmail.com>" "85" "[oss-security] [ANNOUNCE] Incomplete fixes for CVE-2019-1002101, kubectl cp potential directory traversal - CVE-2019-11246" "^Date:" nil nil "6" "2019062020:38:02" "[oss-security] [ANNOUNCE] Incomplete fixes for CVE-2019-1002101, kubectl cp potential directory traversal - CVE-2019-11246" (number mark "        joelsmith@re Jun 20   85/2257  " thread-indent "\"[oss-security] [ANNOUNCE] Incomplete fixes for CVE-2019-1002101, kubectl cp potential directory traversal - CVE-2019-11246\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ANNOUNCE] Incomplete fixes for CVE-2019-1002101, kubectl cp potential directory traversal - CVE-2019-11246" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5240 invoked by uid 550); 21 Jun 2019 08:32:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26318 invoked from network); 20 Jun 2019 20:38:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=TLC2j2dxwn33g4+Nm4fjDliQonQtmiD5v7Cs8SD22nA=;
        b=gpJOJZ9t1TAWlXbKYp8EWseUYWRbhNjn8dNeOalbzPui+FF7atZ+BroeaLfPioq/hZ
         SLaDui1bcLXyB5TYT9fH2fBoMnG0nMhoLr0giEYWZgw/XpaQPK82exVUHTdOFq8lsOJO
         0tNVY2ltBA3IkBE+4ykDQkkVTCgfjSh8UlLQUDasa27ePXsd3UithBlWfvKeYO7bgrwS
         jGRFoZbFlcSe1McTnwbmQi+mXvGksi4/p5Q1uki2+vrSTCr8tKVI5knNwbtFW2jkvWoH
         nMeX7wAopY0Z28pcpcaTzJGSZg9qoSYQxGZ4zJ1gI+R017cKT8phVwY0xLJSN+dkQMwM
         IUMQ==
X-Gm-Message-State: APjAAAUq1tY/jPDodwdhcRc1pwFN9NpnhlANWdNRhZ3ZdKq5q7V+0VLO
	qEc83fZOH7x/uPFIb6t5scMV39hsNNkfcaQgWOeRzprWE2k=
X-Google-Smtp-Source: APXvYqzUqE7woEinDsJD9WQmzX5R3hGdRslvIxMxXesGWts6ynpSD3GgdHIFQMFBDK8mmkIGct6Tgnd5heF6RaU7jv0=
X-Received: by 2002:a50:883b:: with SMTP id b56mr47538029edb.178.1561063098053;
 Thu, 20 Jun 2019 13:38:18 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAEftUarE+73RVs+D9QhDbFShJqttj0Y48Hg1WQFQevMP66jjKA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000006e89b3058bc753a2"
Date: Thu, 20 Jun 2019 14:38:02 -0600
From: Joel Smith <joelsmith@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] Incomplete fixes for CVE-2019-1002101, kubectl cp
 potential directory traversal - CVE-2019-11246
To: oss-security@lists.openwall.com

--0000000000006e89b3058bc753a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,



Another security issue was discovered with the Kubernetes kubectl cp
command that could enable a directory traversal such that a malicious
container could replace or create files on a user=E2=80=99s workstation. The
vulnerability is a client-side defect and requires user interaction to be
exploited. The issue is High severity and upgrading kubectl to Kubernetes
1.12.9, 1.13.6, and 1.14.2 or later is encouraged to fix this issue.



*Am I vulnerable?*



Run kubectl version --client and if it does not say client version 1.12.9,
1.13.6, or 1.14.2 or newer, you are running a vulnerable version.



*How do I upgrade?*



Follow installation instructions here
https://kubernetes.io/docs/tasks/tools/install-kubectl/



Not all instructions will provide up-to-date kubectl versions at the time
of this announcement. So, always confirm with kubectl version.



*Vulnerability Details*



The details for this vulnerability are very similar to CVE-2019-1002101.
The original fix for that issue was incomplete and a new exploit method was
discovered.



The kubectl cp command allows copying files between containers and the user
machine. To copy files from a container, Kubernetes runs tar inside the
container to create a tar archive, copies it over the network, and kubectl
unpacks it on the user=E2=80=99s machine.



If the tar binary in the container is malicious, it could run any code and
output unexpected, malicious results. An attacker could use this to write
files to any path on the user=E2=80=99s machine when kubectl cp is called, =
limited
only by the system permissions of the local user.



See https://github.com/kubernetes/kubernetes/pull/76788 for details.

*Acknowledgements*



This issue was discovered by Charles Holmes, Atredis Partners as part of
the CNCF-sponsored Kubernetes Third-party Security Audit. Thanks to Maciej
Szulik for the fix, to Tim Allclair for the test cases and fix review, and
to the patch release managers for including the fix in their releases.



Thanks,



Joel Smith on behalf of the Kubernetes Product Security Committee

--0000000000006e89b3058bc753a2--
