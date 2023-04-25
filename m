Received: (qmail 19723 invoked by uid 550); 25 Apr 2023 17:08:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17972 invoked from network); 25 Apr 2023 17:06:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682442377; x=1685034377;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KWly5LOsfjOzFS+rOBQshUHGQRCOCU7+ddGEcJEuofA=;
        b=cqSYS5L/Ak25YQ+UZVB9IkSCJnI+yYe6uxjQjtMWcXnzMIpgi70rTlLBFqRZkTnUfV
         GUAI0NL75eju/cXcMgy4el9iLRe09f3HLlPSxRX1bX6asJzOWbP+5YmKLm0dhPXfxqXe
         iBJQOk9cXJc+MBNkTJ9ej+pOPwIEkDGHeqotmKV7dO57gIfiH0PD6fHuTlxsbs9gl0+w
         f9kumNpg5JpBODF3C6SH8dE9vuCjUFJc2JQjpSU5QRWCPHHsp+GQ9myjIxgMLylxUWfA
         wnul6Mnxc/V8eTnrJ46G+6fIL1fGbxeC8gdlG5oI3HZMBi4G5PM6dcwv1Vfo0SiloE5h
         fKAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682442377; x=1685034377;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :subject:cc:to:from:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KWly5LOsfjOzFS+rOBQshUHGQRCOCU7+ddGEcJEuofA=;
        b=VvicxXyk3ujA59brYHXguFhIjvhwhuU4wvy2gTw8dQwKtZ30DAi4g5x4cdyX7UgUZO
         LxktTp7iCb+sdevaKmw0xiwi3l0DNj55NptOtiWNHQiNydPJi9G4RwzOo7nxDav20ZI7
         kX3afI311dzQSHbUE3YNQbhMR6OdRnhXlkwEK7X6hEed1Dq0BwBngygemv842l733CP3
         ytmKe4igbIo3Zdlx+KUlP6wStCnAHWmkjIUjQ09M9b/69aHN3OF+DfkMtMZApkFC0whX
         PzShhTPu/dlHbz2p4SkYD9uF6w0xatjEwVvLk15LJL2uMB3ylPvTTDpWTiK1RwRp+k2d
         R3xQ==
X-Gm-Message-State: AAQBX9dVJCPdkgepiblQ319aue2hkuUuUjNXUgqwo8uvDBSayxaQ6otC
	7dzK2jL9emdSkrVfdq8LlDY=
X-Google-Smtp-Source: AKy350Yv/is3ZvWythLhOTpcul0kCtTQTQ3YaV11KQXNlH7pU738lDHbO9qBksIGHWD61j6HJKWVAA==
X-Received: by 2002:a05:6a00:1882:b0:63b:59a7:eafa with SMTP id x2-20020a056a00188200b0063b59a7eafamr26004675pfh.25.1682442377158;
        Tue, 25 Apr 2023 10:06:17 -0700 (PDT)
Sender: Junio C Hamano <jch2355@gmail.com>
From: Junio C Hamano <gitster@pobox.com>
To: git@vger.kernel.org
Cc: Linux Kernel <linux-kernel@vger.kernel.org>,
    git-packagers@googlegroups.com, oss-security@lists.openwall.com,
    git-security@googlegroups.com
Date: Tue, 25 Apr 2023 10:06:16 -0700
Message-ID: <xmqqa5yv3n93.fsf@gitster.g>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] [ANNOUNCE] Git v2.40.1 and friends

A maintenance release Git v2.40.1, together with releases for older
maintenance tracks v2.39.3, v2.38.5, v2.37.7, v2.36.6, v2.35.8,
v2.34.8, v2.33.8, v2.32.7, v2.31.8, and v2.30.9, are now available
at the usual places.

These maintenance releases are to address security issues identified
as CVE-2023-25652, CVE-2023-25815, and CVE-2023-29007.  They affect
ranges of existing versions and users are encouraged to upgrade.

The tarballs are found at:

    https://www.kernel.org/pub/software/scm/git/

The following public repositories all have a copy of the 'v2.40.1'
tag, as well as the tags for older maintenance tracks listed above:

  url = https://git.kernel.org/pub/scm/git/git
  url = https://kernel.googlesource.com/pub/scm/git/git
  url = git://repo.or.cz/alt-git.git
  url = https://github.com/gitster/git

The addressed issues are:

 * CVE-2023-25652:

   By feeding specially crafted input to `git apply --reject`, a
   path outside the working tree can be overwritten with partially
   controlled contents (corresponding to the rejected hunk(s) from
   the given patch).

 * CVE-2023-25815:

   When Git is compiled with runtime prefix support and runs without
   translated messages, it still used the gettext machinery to
   display messages, which subsequently potentially looked for
   translated messages in unexpected places. This allowed for
   malicious placement of crafted messages.

 * CVE-2023-29007:

   When renaming or deleting a section from a configuration file,
   certain malicious configuration values may be misinterpreted as
   the beginning of a new configuration section, leading to arbitrary
   configuration injection.

Credit for finding CVE-2023-25652 goes to Ry0taK, and the fix was
developed by Taylor Blau, Junio C Hamano and Johannes Schindelin,
with the help of Linus Torvalds.

Credit for finding CVE-2023-25815 goes to Maxime Escourbiac and
Yassine BENGANA of Michelin, and the fix was developed by Johannes
Schindelin.

Credit for finding CVE-2023-29007 goes to André Baptista and Vítor Pinho
of Ethiack, and the fix was developed by Taylor Blau, and Johannes
Schindelin, with help from Jeff King, and Patrick Steinhardt.

Thanks.
