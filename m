X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["725" "Monday" "15" "May" "2017" "15:40:39" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhTK3+YqzhtPLa96QNYTkfDRv_YPc0bieXvLgQDRRoFRWQ@mail.gmail.com>" "27" "[oss-security] CVE-2017-7495 kernel : information leak on ext4 when hardware reset." nil nil nil "5" "2017051505:40:39" "[oss-security] CVE-2017-7495 kernel : information leak on ext4 when hardware reset." (number mark "U       wmealing@red May 15   27/725   " thread-indent "\"[oss-security] CVE-2017-7495 kernel : information leak on ext4 when hardware reset.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30159 invoked by uid 550); 15 May 2017 05:40:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30135 invoked from network); 15 May 2017 05:40:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oEttuIHFKR5oOl6ybopLJ7EzG0gpu1v4oRhj7KOZ4q4=;
        b=XmGM4DeTcUyWzDOU4nGR6H3dvxyCgU53Tct6Ltg3yIx3gynQikxnAb+lbgfSCUHdTN
         rsvgJMLGkhoC1Y8ekO1+VVFIUpfDCqMynVFvfaToYNVUk6aZK/VQReZ6YOXYfUrC58Sa
         VfuQR5hL08WHm0ynrKRKy0WrYpwEcF9WOO7xW9N5SB/tYo0eEXHuH/BS8tn8lWsVuSND
         xHzWiEupsiWpb3LNYC9DUsE6YaJKmMyfYuemRzjB6k5KrY6mWsIv9FjCzogZg0D3nnv0
         95/B28oS6yIyEqv4fqhApr2jyWg6/bJqzxGW+NTDhLm1GhFezz/G9cV7u3XVqQfNfL9v
         ia3w==
X-Gm-Message-State: AODbwcAKTJ+Ybq/U9bm9gnmneCXkMKDo+WOUeHlKjFojkobzZ4C/dihY
	O07gH/bAkjJY5INrSWrUmoE/ctOoGU6jz7+LQw==
X-Received: by 10.55.201.10 with SMTP id q10mr4085386qki.4.1494826839980; Sun,
 14 May 2017 22:40:39 -0700 (PDT)
MIME-Version: 1.0
From: Wade Mealing <wmealing@redhat.com>
Date: Mon, 15 May 2017 15:40:39 +1000
Message-ID: <CALJHwhTK3+YqzhtPLa96QNYTkfDRv_YPc0bieXvLgQDRRoFRWQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a1149a49ecc4fa1054f897e69"
Subject: [oss-security] CVE-2017-7495 kernel : information leak on ext4 when hardware reset.

--001a1149a49ecc4fa1054f897e69
Content-Type: text/plain; charset="UTF-8"

When a power failure (or hardware reset) occurs, applications writing to an
ext4 filesystem system may create a situation in which writes to one file
may appear in another file (ergo information leak).

This may be at least data corruption, a controlled attacker may be able to
leverage this to steal data from writes to the same ext4 subsystem.


Reference:

Red Hat Bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1450261

Upstream patch:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=06bd3c36a733ac27962fea7d6f47168841376824

Thanks

--

Wade Mealing
Red Hat Product Security

--001a1149a49ecc4fa1054f897e69--
