Received: (qmail 24278 invoked by uid 550); 7 Jun 2022 09:58:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3620 invoked from network); 6 Jun 2022 19:45:58 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zEuEk20wcDbr01vTtciuQkq74E8h+RutxRWD0PcaZPA=;
        b=Hl7U6yXZ7qFUH324m1Zokb/0h4hbx2gADojJbdiHuqt1+ClOrkV5fD5kNyKR8eQWnF
         3ht5jeMLaIsvxwwB5N+vJs+jgESsSvXH9Up1/VZ36FMLPlydieBN3dho8Fqb/QOk/VCC
         NZfPO5QSWtYh7noCGB5fFTY/2tlwBykronhiv0v0ulNCAwBenY+cp+ZWYjXtMWTMXl/9
         h7CjJEQJq8osgonZ7NzxK1W8a7b2/39ElYlRAY899uUOteko5SKIIm/M2oljsl26xJ/N
         rk8DnlE4agnIel483OpQ/OPHWDSNfdMfgJF1ECrj0Q8AJ+E1nfZzPS/GtwyTA8aDOHmF
         /2FQ==
X-Gm-Message-State: AOAM532aUd7WVylzk5NjimAACAAVE/wScb3QpU/pdeoo1NF4vpxteKoW
	4GaPChdBjqTXaAIZQSmLx2CERKtoT+Wbl1czpO1Z1cIjwknL
X-Google-Smtp-Source: ABdhPJzymbES8HA2X2oXWQUFjRyBweqa8qB+/6UiJdXVJ5P9u1m8M2KqYs6L+3LmVnA7MlEHpmj8/uEdfELhJ6vjh2A=
X-Received: by 2002:a17:902:ca0b:b0:167:4c4d:7320 with SMTP id
 w11-20020a170902ca0b00b001674c4d7320mr18195595pld.113.1654544745543; Mon, 06
 Jun 2022 12:45:45 -0700 (PDT)
MIME-Version: 1.0
From: Samuel Karp <sam@samuelkarp.com>
Date: Mon, 6 Jun 2022 12:45:34 -0700
Message-ID: <CAHxebFYNPzz1q2GzCdCm=x9LytoqaoMkFhVNbDCRv7eZOj3LKQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-31030: containerd CRI plugin: Host memory exhaustion through ExecSync

A bug was found in containerd's CRI implementation where programs
inside a container can cause the containerd daemon to consume memory
without bound during invocation of the ExecSync API. This can cause
containerd to consume all available memory on the computer, denying
service to other legitimate workloads. Kubernetes and crictl can both
be configured to use containerd's CRI implementation; ExecSync may be
used when running probes or when executing processes via an "exec"
facility.

Patches
This bug has been fixed in containerd 1.6.6 and 1.5.13. Users should
update to these versions to resolve the issue.

Workarounds
Ensure that only trusted images and commands are used.

References
Similar fix in cri-o's CRI implementation GHSA-fcm2-6c3h-pg6j [1]

Credits
The containerd project would like to thank David Korczynski and Adam
Korczynski of ADA Logics for responsibly disclosing this issue in
accordance with the containerd security policy [2] during a security
audit sponsored by CNCF and facilitated by OSTIF.

For more information
If you have any questions or comments about this advisory:
* Open an issue in our GitHub repository [3]
* Email us at security@containerd.io

On behalf of the containerd project,
Samuel Karp

[1] https://github.com/cri-o/cri-o/security/advisories/GHSA-fcm2-6c3h-pg6j
[2] https://github.com/containerd/project/blob/main/SECURITY.md
[3] https://github.com/containerd/containerd/issues/new/choose
