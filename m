X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3314" "Monday" "3" "December" "2018" "22:22:12" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20181203212212.GA30174@eldamar.local>" "51" "[oss-security] PolicyKit: CVE-2018-19788: Improper handling of user with uid > INT_MAX leading to authentication bypass" "^Date:" nil nil "12" "2018120321:22:12" "[oss-security] PolicyKit: CVE-2018-19788: Improper handling of user with uid > INT_MAX leading to authentication bypass" (number mark "        carnil@debia Dec  3   51/3314  " thread-indent "\"[oss-security] PolicyKit: CVE-2018-19788: Improper handling of user with uid > INT_MAX leading to authentication bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9608 invoked by uid 550); 3 Dec 2018 21:22:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9589 invoked from network); 3 Dec 2018 21:22:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fXwhiNh+SD9x3cmHer/A6KjFZD5OM+lWKC4tBfDtk3A=;
        b=KO+ieGm3Qz11z5j3PRlznBgs27jhMQ3PbyeMjrGo4NQ3uYkJWwn+n5IHz2RBZe+3Ix
         jiK8KaHL+LRsKMNEAutx2G4yPlXWsmQA2EPaG+lQj6+VHLAR+sh2ErTSEeJnog7wLsws
         8g4039oKzVRT1NomjFkWPNG0paPzBGsPv+wQeKojvwbRLekfXwvel9vNzX3Dw0EK5FEv
         pZEB/QwreH+eFVQGXCxNns+iL9O4ETvx0uPEuvByhSPNh4iyWjujy64SgGR7CjOlyZ2U
         bxP4IZ8ALwg2f1jn7xvDVxAFnaiT8MnWnqQQ15MpMdqd6bCEeEeftr4/UeD8Lf8PGRBJ
         VaBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=fXwhiNh+SD9x3cmHer/A6KjFZD5OM+lWKC4tBfDtk3A=;
        b=hbvJQlmsC8cWqdd78AALHbZWm0W7V8WzLNevkzv9OzyJRVxkb+7NetG7qI0Ao9/RhS
         6V7d5PVywNCZNrqdTxTOk/lA8sPs+/VHPRb0xkdghuMYpWjwvNMto5alaLq3kTlGEgiE
         XNpvcMHqKeMsosWHAQuDljYLUPNNluO5L8agTelHDm6MdWriq2ZcCEuewgACe1pyyhQt
         kR4cOTITAvkhogLNaN3d40FLESCLyOsu3FrqO9cEcipHvyObIazjb0nWFG1yGJt5wmKN
         TyCF8IhlWzr+GXxmzQ3cTpeezCsW9JrfOWzPrFrENYw0f+tkm9wOAhFGZvGh14v9qZYg
         MQkQ==
X-Gm-Message-State: AA+aEWZU6siQgpjO645w/QigogmpTrvETqxWN2GTZEXvmh/K0X2rOISH
	nVhR7SubWtY25dSQ5m8oi5wXS3pym7c=
X-Google-Smtp-Source: AFSGD/W7NwSaZc5EPL03oIeG8EuEnIwTP3gV6W9qlNMuj4mn2j2wk/cRJ/XxpJZFOD9u7B+m0T+SIw==
X-Received: by 2002:a50:c11a:: with SMTP id l26mr7745740edf.233.1543872136823;
        Mon, 03 Dec 2018 13:22:16 -0800 (PST)
Message-ID: <20181203212212.GA30174@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Mon, 3 Dec 2018 22:22:12 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] PolicyKit: CVE-2018-19788: Improper handling of user with uid >
 INT_MAX leading to authentication bypass
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

In https://gitlab.freedesktop.org/polkit/polkit/issues/74 (which got
assigned CVE-2018-19788 by MITRE) it was reported that a user with uid
> INT_MAX could successfully execute any systemctl command (but the
issue is broader than that).

There is a proposed commit: https://gitlab.freedesktop.org/zbyszek/polkit/commit/fbaab32cb4ed9ed5f1e3eea6cd317d443aa427dc

> From fbaab32cb4ed9ed5f1e3eea6cd317d443aa427dc Mon Sep 17 00:00:00 2001
> From: =?UTF-8?q?Zbigniew=20J=C4=99drzejewski-Szmek?= <zbyszek@in.waw.pl>
> Date: Mon, 3 Dec 2018 12:51:26 +0100
> Subject: [PATCH] Check gid and uid initalization in PolkitUnixUser and Group
>  objects
> 
> When a user or group above INT32_MAX is created, the numeric uid or
> gid wraps around to negative when the value is assigned to gint, and
> polkit gets confused. Let's refuse such uids and gids.
> 
> This patch just refuses to initialize uid and gid values to negative.
> A nicer fix is to change the underlying type to e.g. gint64 to allow
> the full range of values in uid_t and gid_t to be represented. But
> this cannot be done without breaking the API, so likely new functions
> will have to be added (a polkit_unix_user_new variant that takes a
> gint64, and the same for _group_new, _set_uid, _get_uid, _set_gid,
> _get_gid, etc.). This will require a bigger patch.
> 
> Fixes https://gitlab.freedesktop.org/polkit/polkit/issues/74.
> 
> Example sessions from uid=4000000000:
> 
> Dec 03 14:35:08 krowka polkitd[21432]: system-bus-name::1.41869 is inquiring whether system-bus-name::1.79432 is authorized for org.freedesktop.systemd1.manage-units
> Dec 03 14:35:08 krowka polkitd[21432]:  user of caller is unix-user:root
> Dec 03 14:35:08 krowka polkitd[21432]: polkit_unix_user_new: assertion 'uid >= 0' failed
> Dec 03 14:35:08 krowka polkitd[21432]: polkit_identity_to_string: assertion 'POLKIT_IS_IDENTITY (identity)' failed
> Dec 03 14:35:08 krowka polkitd[21432]:  user of subject is (null)
> Dec 03 14:35:08 krowka polkitd[21432]: polkit_identity_equal: assertion 'POLKIT_IS_IDENTITY (b)' failed
> Dec 03 14:35:08 krowka polkitd[21432]: checking whether system-bus-name::1.79432 is authorized for org.freedesktop.systemd1.manage-units
> Dec 03 14:35:08 krowka polkitd[21432]: polkit_unix_user_new: assertion 'uid >= 0' failed
> Dec 03 14:35:08 krowka polkitd[21432]:
> Dec 03 14:35:08 krowka polkitd[21432]: polkit_authorization_result_get_is_challenge: assertion 'POLKIT_IS_AUTHORIZATION_RESULT (result)' failed
> Dec 03 14:35:08 krowka polkitd[21432]: g_object_ref: assertion 'G_IS_OBJECT (object)' failed
> Dec 03 14:35:08 krowka polkitd[21432]: g_object_ref: assertion 'G_IS_OBJECT (object)' failed
> Dec 03 14:35:08 krowka polkitd[21432]: polkit_authorization_result_get_details: assertion 'POLKIT_IS_AUTHORIZATION_RESULT (result)' failed
> Dec 03 14:35:08 krowka polkitd[21432]: polkit_authorization_result_get_is_challenge: assertion 'POLKIT_IS_AUTHORIZATION_RESULT (result)' failed
> Dec 03 14:35:08 krowka polkitd[21432]: polkit_authorization_result_get_is_authorized: assertion 'POLKIT_IS_AUTHORIZATION_RESULT (result)' failed
> Dec 03 14:35:08 krowka polkitd[21432]: g_object_unref: assertion 'G_IS_OBJECT (object)' failed
> Dec 03 14:35:08 krowka polkitd[21432]: g_object_unref: assertion 'G_IS_OBJECT (object)' failed

Regards,
Salvatore
