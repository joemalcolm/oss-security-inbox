Received: (qmail 15549 invoked by uid 550); 27 Apr 2026 23:13:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24321 invoked from network); 27 Apr 2026 20:56:32 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777323383; cv=none;
        d=google.com; s=arc-20240605;
        b=iwbZ2lQD5L/AfVGZsmiaTNZhs4bnyQrVMVuN7719rzDiV49xGHRAZPkMF5pmMGzll1
         fQHImq6FZkM5qgOTEwoxsNnY3XHi7cRfYr6PvAOmbqSxXiO+xRLY2I8fzeNT0LIZpOPz
         3YWCeML8EBCCjOnO2mJvxuQ/Fz0QtAjypaF2KWTA/d/LYYEllDuuEZqhl0J8qbB34fne
         sonofnOT3BDPGos/1esmNMr8Sx8D+UOSn0TNefu1aTFzgDnXjinr9xENqOueVcdtxsTB
         EnaDTEE/GRwvce4zdkZIbCNerRRK4IXbAx82sGCgNrEcRU/a+iFATy0f0GesOvGV7dTX
         S8Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ixPGkCK9pJVtsthIi/es6RK1sGv7EOK3JqPpIu7To4g=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=GPmdnGSYu9M1BuBOla23/VMQGV7OC8N/HhlzNk1cD6ugor3tQQaO57hn32ZPoG7EGa
         XxMoomUMvKDhvR95DGnC/sLGdIYPDTeS9aWfUrkJpSuuLjObBI+uUpedEV0NhLH1MNPJ
         IL8BseDMy/xKDnPk5lBdq5zKIVIon/o1eL0ANkOf+j0Z88/owv8A0gs8NlYPMeN1JF9C
         lm8Ru8xrMEPuEzWUjbY1XJUYn3NbYStn7srlglX05V2J4uvSmmq8nVqkrmxcwt7cAnz8
         wiy9bhKNk736lDqguw+4NREV4KMR+ncFeYy+8xZQuYmsD8zF9Us/eLcp9n1yVzPAYwNj
         4nEQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777323383; x=1777928183; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ixPGkCK9pJVtsthIi/es6RK1sGv7EOK3JqPpIu7To4g=;
        b=V8XsjiEUXiecJ1DqLkExgsjYDGqPw/NXP6K4bEqYY1thBpMarYL2xJTGJj/zE1tsfL
         Wqx/BeDt34EhXj7gDio+oUXiQM9yNl8ZC2UDZYc+kdHcKj5QO8x52K2vjL7q/SBM7AaB
         /tTu7KgUItaRslmOxN9J2gdu+3icvV0xfbPnsYZR9ikQryd+xZ/hvAe06YIsRX9jRjUb
         eR1Tzdp6+FYJtRgbuaoBhQz0ck8ORuu+Uh1i4tZ/8EtV1Xcx7GwZoPKi0jM/WV1GM61o
         dXoiRrzhNG/wlnOr5i5Jn9ewF6CMW7QUR6RwWug/bHximwDxsifk5HRmSglqWIlci18B
         3xkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777323383; x=1777928183;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ixPGkCK9pJVtsthIi/es6RK1sGv7EOK3JqPpIu7To4g=;
        b=bWpO23pG9jN7BwHMITSI7tSoWr3cQHrbDTzMbWUE5wd3sNGH4ygr87HkQ9HXxMAeRK
         7W/kBvw9fX4xUvH4gkrTQwL3kdCwuR6gEuHrV6SZDUPAEjpkvQQ3qBgA6gJ+ZggY6lS+
         mon4G3NBAg72SLvfZ5UG6H73fzOQUkTcuRpEEPCZai2GpO0gu3GlAKBfBbTGaDg3vXCe
         OawTlKuZlKIpQrAVSLGtKEkukL8HJtO2Id7NOGSVrMXCXuG0kNBFrgF7772rEbMPFxHk
         zLym9g3tYfzdf6Hj+tujvuo//LTrrRaE3wEs8ARZThyv07UVLdBbiF9MqTHyQo7m1oUE
         EPjw==
X-Gm-Message-State: AOJu0YyVb6Juy9HMzBYPWyo6p4szE7FFHBLYlQaOdRaeTTszKFhAe0Yi
	JDnbjjittcdkWf5rt9uA+NKE/6dYWQyDL6kyXprZe33vkFL1mg5y8tS0dXXGFJczc3LZ5Q5rFoU
	9Lvj/NFRtfCpr9jgeGAdZyGg1xuivOZ+ZYRq61ok=
X-Gm-Gg: AeBDietRGTarUfA/t0VnZhVbq/c5+5qniXyjaigkRwgfebwEca7hLCCaCTjxiWYGb8s
	lJ7z1L9VDz89vaAqQvNIx5vl7nq+HYg/GIeftKpQ/tT0n8z5qdu+NDfwQtUZhqqjkDwuEZoGqjw
	NSA6d+BK3c8oLg7/C0cOeEbEfVgzI0ce3IhtZldhRi2vS3AOXaDfNE16o4KycG2VzGnac4emjrz
	qnGaBfAi1zYbX2UbVjwIlsqtKski4luHLHQDMM7KucKRD7BCSu3cYA0urUfsdB1bG/DHBR7zvDm
	GawimxGi6H8jRnH4rDOv826SIBBZiEKxmjNaefPx/dPOcZQ6vL+i
X-Received: by 2002:a05:6820:20e:b0:694:9252:1992 with SMTP id
 006d021491bc7-6965c8d6505mr134554eaf.0.1777323383312; Mon, 27 Apr 2026
 13:56:23 -0700 (PDT)
MIME-Version: 1.0
From: Cem Onat Karagun <cemkaragun@gmail.com>
Date: Mon, 27 Apr 2026 22:56:12 +0200
X-Gm-Features: AVHnY4LsrcxMdZQ_MNfqzCyM96jXV5-X5x1s58FB8ebWVdP3dR9RWrP1VBR6V6Y
Message-ID: <CAF_a9jNXwe=T=wHnz1iDG6+xhMxD+aZa0F-Xv+dU2OTh7R8ryA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e9d47606507758e6"
Subject: [oss-security] CVE-2026-40355, CVE-2026-40356: MIT krb5 1.18+ Unauthenticated
 Network read overrun and null pointer dereference

--000000000000e9d47606507758e6
Content-Type: text/plain; charset="UTF-8"

Hi,

just a quick note that MIT krb5 has fixed two unauthenticated network
NegoEx parsing vulnerabilities.

Affected versions:

MIT krb5 1.18 and later, when an application calls
gss_accept_sec_context() on a system with a NegoEx mechanism registered
in /etc/gss/mech

Description:

CVE-2026-40355 is a null pointer dereference in parse_nego_message().
The result of the second vector_base() call was not checked before being
dereferenced. An unauthenticated remote attacker can trigger this issue
and crash the process.

CVE-2026-40356 is a read overrun of up to 52 bytes in parse_message().
A short header_len could cause an integer underflow while calculating the
remaining message length. An unauthenticated remote attacker can trigger
this issue and possibly crash the proces.
Exfiltration of the bytes read appears unlikely.

MIT krb5 security confirmed the following CVSS v3.1 vectors:

CVE-2026-40355:
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
Base score: 7.5

CVE-2026-40356:
CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H
Base score: 5.9

Users are recommended to apply the upstream patch or update to a version
containing the fix.

Credit:
Cem Onat Karagun

References:
https://github.com/krb5/krb5/commit/2e75f0d9362fb979f5fc92829431a590a130929f
https://cems.fun/2026/04/27/krb5-two-unauthenticated-network-vulnerabilities.html
https://www.youtube.com/watch?v=zpBrriAJxCQ

--000000000000e9d47606507758e6--
