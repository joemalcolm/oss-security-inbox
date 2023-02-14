Received: (qmail 15428 invoked by uid 550); 14 Feb 2023 18:09:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5412 invoked from network); 14 Feb 2023 18:05:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:message-id:date:subject:cc:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a/30totliODEH86d4s7yTqh1xVH9NfBjaZa+zjnDO/c=;
        b=SiRsmbcm0rYggSVTzIZOA8sZ7SWL0XqG/PuADk+YJzz8eZPcJp3akUS+61rz40V4Cy
         IDA6vopYw9W2GaG2RtI6Su/EggkclvrUprEFshmZKKjs0AKHpfLQse+kwaoxcvlWO3IB
         gK7tNCniHVunkHh5CBqqrxEEuVjsVV9fKzB6wgO2bWF9BY/gx3ORaGf2gUBxha8a8Txm
         Asp2cCcJd3eMPfTH7b0efJEKiuqFV7KRtKKELX4Nu2C4q5lT7Te8pU7IxZT6pNSGj/lh
         Vhf/NbLLB8xNQKSj1LjMAT2s9Ltb88ud0zM3yp9xxjdy3gSta2Jyfbwyo2ZjA+FhAmip
         vfUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:message-id:date:subject:cc:to:from:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a/30totliODEH86d4s7yTqh1xVH9NfBjaZa+zjnDO/c=;
        b=y9+RBbKyoGSED3le12UHVzIRIYLZdc9XK/vIyCZITkAtd4+xpDb3uuoE6GV2D9PQnY
         uoKugBk/QTXHoWiP/UXd/jZGbEblg+gIJabiZPXkkMALwr4wA1a+cuUPkbNskSxQJAxS
         h7BTo8i51A4a3nTxaFL5Dm5gwlK7MP0Ejpw8gFCSm5f59hGpI8fixNisNPNqxPzMEiFP
         7VcoKoflccJXgohwS/nDTINo/oFYynfHEadYzgxJN3xJ/JoinSUSqhss+WP+och2hRkG
         Wnrmj9S68aI3vBVzG8ziNqeBJIsVhZPMvLZj7781gDYPa/J4gPfeuyTG0pCADubHSyT8
         253g==
X-Gm-Message-State: AO0yUKXl5NUsMV6bv19zAqj0rJxbcZZ51BUMH3m1j+aSckV+jdtXQvDd
	KC6OhLwEZSr9ZM/1uHvsLMo=
X-Google-Smtp-Source: AK7set+E8VQg9Jb85Rikix0JLva+MYuPsfcgprmCG3JJ7RGuW/bliCsOwZBZugn2JnelslqQvYms0g==
X-Received: by 2002:a17:902:d48c:b0:199:16c6:8a24 with SMTP id c12-20020a170902d48c00b0019916c68a24mr3907362plg.61.1676397903975;
        Tue, 14 Feb 2023 10:05:03 -0800 (PST)
Sender: Junio C Hamano <jch2355@gmail.com>
From: Junio C Hamano <gitster@pobox.com>
To: git@vger.kernel.org
Cc: Linux Kernel <linux-kernel@vger.kernel.org>,
    git-packagers@googlegroups.com,
    oss-security@lists.openwall.com,
    git-security@googlegroups.com
Date: Tue, 14 Feb 2023 10:05:03 -0800
Message-ID: <xmqqr0us5dio.fsf@gitster.g>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] [Announce] Git 2.39.2 and friends

A maintenance release Git v2.39.2, together with releases for older
maintenance tracks v2.38.4, v2.37.6, v2.36.5, v2.35.7, v2.34.7,
v2.33.7, v2.32.6, v2.31.7, and v2.30.8, are now available at the
usual places.

These maintenance releases are to address two security issues
identified as CVE-2023-22490 and CVE-2023-23946.  They both affect
ranges of existing versions and users are strongly encouraged to
upgrade.

The tarballs are found at:

    https://www.kernel.org/pub/software/scm/git/

The following public repositories all have a copy of the 'v2.39.2'
tag, as well as the tags for older maintenance tracks listed above.

  url = https://git.kernel.org/pub/scm/git/git
  url = https://kernel.googlesource.com/pub/scm/git/git
  url = git://repo.or.cz/alt-git.git
  url = https://github.com/gitster/git

The addressed issues are:

 * CVE-2023-22490:

   Using a specially-crafted repository, Git can be tricked into using
   its local clone optimization even when using a non-local transport.
   Though Git will abort local clones whose source $GIT_DIR/objects
   directory contains symbolic links (c.f., CVE-2022-39253), the objects
   directory itself may still be a symbolic link.

   These two may be combined to include arbitrary files based on known
   paths on the victim's filesystem within the malicious repository's
   working copy, allowing for data exfiltration in a similar manner as
   CVE-2022-39253.

 * CVE-2023-23946:

   By feeding a crafted input to "git apply", a path outside the
   working tree can be overwritten as the user who is running "git
   apply".

Credit for finding CVE-2023-22490 goes to yvvdwf, and the fix was
developed by Taylor Blau, with additional help from others on the
Git security mailing list.

Credit for finding CVE-2023-23946 goes to Joern Schneeweisz, and the
fix was developed by Patrick Steinhardt.

Johannes Schindelin helped greatly in packaging the whole thing and
proofreading the result.

Thanks.
