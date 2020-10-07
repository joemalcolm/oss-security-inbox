X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["457" "Wednesday" "7" "October" "2020" "21:00:35" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "17" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Cc:" nil nil "10" "2020100718:00:35" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        gguninski@gm Oct  7   17/457   " thread-indent "\"[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13640 invoked by uid 550); 7 Oct 2020 18:20:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5865 invoked from network); 7 Oct 2020 18:00:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=ulKLwLcLXmjuVt2me/YTWM8w2n+YQjYZuwTxZccO0tw=;
        b=rijjayk+oMe5egtjAEBFmWiFHm8ErUzhDyKBiBIG9glX3C8cyQ/8vNAz9DAq09vDS1
         jeNmPj18ZUOwWM/TxQCKD17SiIWxiViGEBXgSeP6ElKql+QgUvafjvA9wLtmr6U9WKfE
         aqPGHttEhzk8qogU8LrqmfM0rdeETyWvWZ810cwD7n3s1JGwGKPLG0nE5teMQR9+Jncn
         PAQ4MNdB5Nkwh7qNMtZ1Klyy9BdykpTqyYrPG8pSCWAf/i0p/Zo/8kPLkvySoY4Vvl+j
         8Jdv1HjsJk2YXIAYzwxrzzX4qnsws+3WaCgd805sPgHkWi3jrqcH87UNAOei7Zi+450y
         WRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=ulKLwLcLXmjuVt2me/YTWM8w2n+YQjYZuwTxZccO0tw=;
        b=jn8XmwTELakMQpEPwqLbBg/1V59uNkzxaIpDQlJnZNNy0ZwGm8hW8aLSiKrP2iHhdm
         Mq90GAHPyYtufz0g3e6Lq8SgtUSIhfXU/8/qz9670oSlwFRKCO71j3QnrZcclo/pAujK
         eMntYWrIRDDJepQ1NztUbC4LAf1LZtNGkjCr0bDuVDJoLfqGGTiw/hzVrCVRFSoZelDL
         m7WH/ZQfUUtrcCPh0jVC4QhdNB0SWZNzBFwCDh+yvgweWCGwk1LgG30H1Op4Yhk6fSuG
         ttDCL/hDT48ZZLe5HzvFYGbYXzfTs5oGEcy907eOcAtzNC645/+CuQG0dCKyH9oov+YK
         5H5A==
X-Gm-Message-State: AOAM531cYEgcKJNceJ/MDyXWBgvcnaQmjpWKSGjbk28R1IyIiz7fjmty
	IWe/9MxH/hVvcMuVcuyLpeWFXJCW8SDK6oIhKCdVLrrjs40=
X-Google-Smtp-Source: ABdhPJySasUr6lY9sMZ9Pn3Ay8oHexo+Fvs3wCu1NSAMkxG1+MM4eMRoq+d/0VWh0F7Za3Z1lXXhMlOWHegqUVwtLhY=
X-Received: by 2002:adf:b1cb:: with SMTP id r11mr4885529wra.339.1602093647147;
 Wed, 07 Oct 2020 11:00:47 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: cate@debian.org
Date: Wed, 7 Oct 2020 21:00:35 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

https://lists.debian.org/debian-security/2020/10/msg00000.html

===
/home/loser is with permissions 755, default umask 0022

on multiuser machines this sucks much.

on a multiuser debian mirror we found a lot of data,
including the wordpress password of the admin.
===

Then in the thread someone with @debian.org email explains
to me it is a feature, not a bug.

In a addition, they suggest to tell them the mirror, lol.

Are debian detached from reality?
