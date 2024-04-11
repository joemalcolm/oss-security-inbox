Received: (qmail 24049 invoked by uid 550); 11 Apr 2024 15:22:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21555 invoked from network); 11 Apr 2024 15:20:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google; t=1712848835; x=1713453635; darn=lists.openwall.com;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=foBkFoiSYoxQd/YoNOr5u/2/f2he70I26XV0c9zzjHs=;
        b=QEMRxmfyfHwJyuIPjFE7YTr/1zHCJbZIdCpGjMFYS6BwagOU7XyjfnfQiPk/jHEQR3
         MOKGbCuSvLjbuccUmEjWeBOTrWUNrya8KWs5xTaU+pCAGyIlPT0gON1pP9WOktVawV44
         ZmFx6FNRLzo9kTWasE3dtFv9uyMpmlT4hHaxWsV9I4jenBu4uP8+aotjE54qasDhwnW5
         NSHwWepTq86eJh/u36B2slOaMXO/WE7glf7AyMTs0KBHak/CKtf/umrzU15aoGaMEUqm
         h5N8gJbLu+BtuWICkYbserV+wOhg8HKH1WVAwZLFWC/QTG4qpbfy4IvD0o0lI6KyG1xB
         rOZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712848835; x=1713453635;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=foBkFoiSYoxQd/YoNOr5u/2/f2he70I26XV0c9zzjHs=;
        b=KKqfpu2wrM9N24Pn1TPjExJooFBAiXLgOCM/G42G+QIuCjMTWCKfqJoaa0zEO8msmt
         2b9/rTzW38qvnlfnHvTMYZYrrsTHJAqlo4ow2uVqlH+lKEBjwA2BlDVSlqR087rWjOjo
         ZpPwmqmyMnyqSJk1XehQPnEMjnjU31qUh5Xyx26Kyu93afDrCuTapeSlY7g0U2nfM+Kn
         rKmvk1060zdj4Gr3pnbpU9BR5vmblvKkNtRdMeIibMxtGyQgqE0MmSiZGJns6RXi+U/B
         UA/ykMpnHdYHiUJJcGz/bl7HNcUYpUt80NMAm1fyKfPfftK91tT3RGFmhMF8jPteJ+gV
         yZ/w==
X-Forwarded-Encrypted: i=1; AJvYcCUuYyddjmjmmJXGRTg2gBSfRJEm/yycf3MuW991hWt2bjTcvIsfMaY/EZfiTP2WRNHiVTnISo4w/3nX+RxkwUT6FcZVQC0HmAiiOX/M6sss
X-Gm-Message-State: AOJu0YzloXVA7cyJVhNuuWu+XnvjgrNvgdQIHo6/lt3U6Z+XFvTf/erf
	62SNlRFhdxlWlmZL6m2RHF4b7KA9KgGFA0IriEcrv6Rpq8PCadUJmedEJQ9KA4Y=
X-Google-Smtp-Source: AGHT+IGtjM9P4ylpXDtobYCQGe56TzOPzUyHunhEELGo4rgcinE7Nf3V5sy9N48gIYAJ4W6Lff09hA==
X-Received: by 2002:a5d:4bce:0:b0:346:b95f:2783 with SMTP id l14-20020a5d4bce000000b00346b95f2783mr1300088wrt.52.1712848834731;
        Thu, 11 Apr 2024 08:20:34 -0700 (PDT)
From: Ben Hutchings <ben.hutchings@mind.be>
To: buildroot@buildroot.org
Cc: Ben Hutchings <ben.hutchings@mind.be>,
	oss-security@lists.openwall.com
Date: Thu, 11 Apr 2024 17:20:16 +0200
Message-Id: <20240411152016.1185109-1-ben.hutchings@mind.be>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] [PATCH] package/skeleton-init-sysv: Set sticky bit on /dev/shm

/dev/shm is a world-writable directory, like /tmp, and should also
have the sticky bit set.  Without this, any user can delete and
replace another user's files in /dev/shm.

This bug has been present since /dev/shm was added to the skeleton
/etc/fstab, but appears to have been fixed for systems using systemd
by commit 76fc9275f14e "system: separate sysv and systemd parts of the
skeleton" which went into Buildroot 2017.08.

Signed-off-by: Ben Hutchings <ben.hutchings@mind.be>
Fixes: 22fde22e35f98f7830c2f8955465532328348cd1
---
 package/skeleton-init-sysv/skeleton/etc/fstab | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/skeleton-init-sysv/skeleton/etc/fstab b/package/skeleton-init-sysv/skeleton/etc/fstab
index 169054b74f..06c20fe9d5 100644
--- a/package/skeleton-init-sysv/skeleton/etc/fstab
+++ b/package/skeleton-init-sysv/skeleton/etc/fstab
@@ -2,7 +2,7 @@
 /dev/root	/		ext2	rw,noauto	0	1
 proc		/proc		proc	defaults	0	0
 devpts		/dev/pts	devpts	defaults,gid=5,mode=620,ptmxmode=0666	0	0
-tmpfs		/dev/shm	tmpfs	mode=0777	0	0
+tmpfs		/dev/shm	tmpfs	mode=1777	0	0
 tmpfs		/tmp		tmpfs	mode=1777	0	0
 tmpfs		/run		tmpfs	mode=0755,nosuid,nodev	0	0
 sysfs		/sys		sysfs	defaults	0	0
-- 
2.39.2

