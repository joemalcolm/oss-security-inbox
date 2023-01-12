Received: (qmail 1830 invoked by uid 550); 12 Jan 2023 14:50:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30231 invoked from network); 12 Jan 2023 14:12:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Bl8KDwFqzH0StzLQBA5712JnVCew3GL3gTjvzij79Aw=;
        b=jW2hXdP8dlBrdD1VnAPT0aAmPQ4xwJSdkt28gO+67RDBTMDzHpUBNXOmiS4vFG++9W
         waYRbBPercGXD/6oh4DGvmXpxTNJduvtDgPrTboKtirqnH2buyrlkSscy54kvJ7KB7eP
         7PTkvryDlJUtCc5Uu+FQh39Pcs7QwGwB+ScfPSa6hq3SmoB2vRZU5CiNdAxlpsXrDW+G
         8DNe18spQQwsZZwoT/fGfBOpvuEAl8qlsstr8kIgZ3AW9Y6w7tQOenuzJ58SmStVKzRy
         yXEwVf4VBA8A/Ertn1NIqS+2wT+SQTOna9QlWE+os+5+AWgbx36Pdn55pITrmXUvGCYa
         Jybg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bl8KDwFqzH0StzLQBA5712JnVCew3GL3gTjvzij79Aw=;
        b=24qjCvluU0WM8T4nDGWusoH/pssarpFbpO3kbRwzLj1vUfkmxKmltAGnY/om7zUDAe
         NDwLDz8BYHGGpXtKNpqjEWKD/SXmzLyfmb9DUBKPDyouIhsGlmd6q6PQjQXtFrMHh4MD
         +6+LeBsDdIK9LGMnnGnoFE9e+0v2DHm88iQzWwHTBpaSUbFXQZdLeXPSKLRvdV8AoQhg
         SGDy4sQjdTzqy/bfnQB+hrv7j3f6CioIDWSeZfYJp4g003IkfFqyNU1TjRwg/e+Ow+YS
         cJm5JJwxZYBnT3zGEkHTShfXYlBaBjYGGveGP0BXODWKvq3Ge1FWiMCKJ+IpcqQJmX0H
         mznw==
X-Gm-Message-State: AFqh2kpZ1cR2Bm5nuqSc8nDoNJM4WymsyvE5QbMAbo5qUt4ve1Uw0Cae
	aRJGOt4QLQ3Ag7QRtRn8MMKBG8jEAIbegMx3ZbhnG3bY6Q==
X-Google-Smtp-Source: AMrXdXubsxYnf4oAVCadF0mqWdD53iHNwXHQjGpZ4I/jdn46rhuhyT+7eyLjCY+5WotMuogKb01O+0quhJ/KOxKTa+c=
X-Received: by 2002:a05:6870:1719:b0:148:bde:dbd9 with SMTP id
 h25-20020a056870171900b001480bdedbd9mr4979161oae.37.1673532761611; Thu, 12
 Jan 2023 06:12:41 -0800 (PST)
MIME-Version: 1.0
From: Tal Lossos <tallossos@gmail.com>
Date: Thu, 12 Jan 2023 16:12:30 +0200
Message-ID: <CAO15rPk6Uh6ZqZ=c8yjz0=53DqXQKF=fSXqDo9dLdMAy7-YS3g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2023-0122: Linux kernel: Pre-Auth Remote DoS in NVMe

Hi all,

# Description
A NULL Pointer Dereference bug in nvmet_setup_auth
(drivers/nvme/target/auth.c) can be triggered remotely to cause a DoS.
Since the bug occurs in the authentication feature, it can be easily
triggered by an unauthorized client in the pre-auth stage.
Versions affected - v6.0-rc1 to v6.0-rc3 (fixed in v6.0-rc4).

# Vulnerability
The vulnerability is caused by a missing goto statement after
assigning ctrl->ctrl_key to NULL, thus causing a NULL Pointer
Dereference afterward:
---
ctrl->ctrl_key =3D nvme_auth_extract_key(host->dhchap_ctrl_secret + 10,
    host->dhchap_ctrl_key_hash);
if (IS_ERR(ctrl->ctrl_key)) {
    ret =3D PTR_ERR(ctrl->ctrl_key);
    ctrl->ctrl_key =3D NULL;   <--- Assigning NULL
}

pr_debug("%s: using ctrl hash %s key %*ph\n", func,
    ctrl->ctrl_key->hash > 0 ?   <--- NULL pointer dereference
    nvme_auth_hmac_name(ctrl->ctrl_key->hash) : "none",
    (int)ctrl->ctrl_key->len, ctrl->ctrl_key->key);
---

# Exploitation
If an invalid dhchap_ctrl_key (e.g., =E2=80=98DHHC-1:00:AAAA:=E2=80=99) is =
configured
in the NVMe target under a host object, when a remote client tries to
connect to the NVMe subsystem (e.g., NVMe-TCP), the NULL Pointer
Dereference would be triggered thus causing a DoS on the target
machine.
Running =E2=80=98nvme connect=E2=80=99 from a client to the remote subsyste=
m would
cause a DoS on the remote target.
To bypass the authentication feature, we can pass the allowed client=E2=80=
=99s
NQN to the =E2=80=98nvme connect=E2=80=99 command, which can be obtained by=
 network
sniffing.

# Patch
Bug report - https://lore.kernel.org/linux-nvme/20220823161255.GA21462@lst.=
de/T/#t
Fix patch - https://lore.kernel.org/linux-nvme/20220831045908.GC18042@lst.d=
e/T/#u


Regards,
Tal Lossos
