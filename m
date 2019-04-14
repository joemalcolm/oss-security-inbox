X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["426" "Sunday" "14" "April" "2019" "08:30:49" "+0200" "Emmanuel Lecharny" "elecharny@apache.org" nil "15" nil nil nil nil "4" nil nil (number mark "U       elecharny@ap Apr 14   15/426   " thread-indent "\"[oss-security] [CVE-2019-0231] MINA SSLFilter security Issue\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0231] MINA SSLFilter security Issue" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28654 invoked by uid 550); 14 Apr 2019 11:59:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1444 invoked from network); 14 Apr 2019 06:31:17 -0000
X-Gm-Message-State: APjAAAWtADeNrernASEMm+WijxoR1xPdqepMGI979x/M3d1UysuqQR1a
	v/N5gIg5ndGX8xVJkkdhD2tK3KeQqrpstRwxIN4=
X-Google-Smtp-Source: APXvYqzDU2Z9WTmPQD5EaalnaMHfEuADzFB+izRq+6ewuysq9zuRcOKPAgIInIWoBQmifd/dg8rXMQVCS9Q7lFC2vmM=
X-Received: by 2002:a5d:46c9:: with SMTP id g9mr39818212wrs.211.1555223460294;
 Sat, 13 Apr 2019 23:31:00 -0700 (PDT)
MIME-Version: 1.0
From: Emmanuel Lecharny <elecharny@apache.org>
Date: Sun, 14 Apr 2019 08:30:49 +0200
X-Gmail-Original-Message-ID: <CAG8=FRi8zBopbw1AkoGM5yGN8P9G8rTxxPR2JfEG7RaV4BU8tQ@mail.gmail.com>
Message-ID: <CAG8=FRi8zBopbw1AkoGM5yGN8P9G8rTxxPR2JfEG7RaV4BU8tQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] [CVE-2019-0231] MINA SSLFilter security Issue

Description: Handling of the close_notify SSL/TLS message does not
lead to a connection closure, leading the server to retain the socket
opened and to have the client potentially receive clear-text messages
which were supposed to be encrypted.

This security issue is fixed by Apache MINA 2.0.21 or Apache MINA
2.0.21. Please migrate to those new versions.



--=20
Regards,
Cordialement,
Emmanuel L=C3=A9charny
www.iktek.com
