X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1384" "Tuesday" "10" "January" "2017" "17:58:56" "-0800" "Nathan McCauley" "nathan.mccauley@docker.com" "<CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>" "35" "[oss-security] Docker 1.12.6 - Security Advisory" "^Date:" nil nil "1" "2017011101:58:56" "[oss-security] Docker 1.12.6 - Security Advisory" (number mark "        nathan.mccau Jan 10   35/1384  " thread-indent "\"[oss-security] Docker 1.12.6 - Security Advisory\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9651 invoked by uid 550); 11 Jan 2017 02:21:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1565 invoked from network); 11 Jan 2017 01:59:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=docker.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=je6r9LRwhHnLa4x9xzbvfJsq3BcWnfn/4QxDjh8pcrQ=;
        b=b3hVo2Fxw9Rbf2zwBtpII7lgtUfBoFKhti2IzTb8BS1u7f8i7URsakiSwwz1fANSi7
         0J0c/SYWXg6rhYvIGDWgLrqWEQK1gelspBa8QxQNCq4rk+SzOhwkR3yZ85EzZ3ZrgiUg
         R26j8pBFn0ZDLz9JvTEsbDEjACMZHBXARjJB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=je6r9LRwhHnLa4x9xzbvfJsq3BcWnfn/4QxDjh8pcrQ=;
        b=W2YuzIXF8be+C1ToMdH0WRGtsJWzVyJCGBP40TLDUv30bMu0hbxVspmOSodcN9OEXS
         5QLF8kOX/PADkxPGdCbSf7gs0Y5ziHu0HD4QErg5+wNYF0igtxbOxFF+4ei3yZyMbqJr
         3PfeWHXWeVS5HTJB7DzVnW97wv+OkG8Dmw70uCKVeMDHotP95vQuqIwSEOSwNIDKF3tu
         8Lufubjp2ZXQMWP0fAmKx/GqWy5brTGQmR4g3ocC/NI+8DLjCNHM+rXa5QsdY5snSfyS
         Q20Nivf2q/6fXc6lNZnZW6pmBHkKGgA3P8iPBmiD2sFOEN5WvJinCyVyWFiI2LJdugww
         o4eQ==
X-Gm-Message-State: AIkVDXJQpZ/VDsqKFcKYuwvMlH4WPIQCpWVwZwUgr5KAJ3f9Rmv7lVJy6z1yoPhUlKKj8Krc0/+7gmbww3XhjKWw
X-Received: by 10.107.195.204 with SMTP id t195mr5860231iof.46.1484099956381;
 Tue, 10 Jan 2017 17:59:16 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAB6KFYBj3Jz2ZL1oeyH2RJmm43PNuroH_-5EiLptTdEs8qvN_Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c189ceeb62dbe0545c7f223
Date: Tue, 10 Jan 2017 17:58:56 -0800
From: Nathan McCauley <nathan.mccauley@docker.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Docker 1.12.6 - Security Advisory
To: docker-user@googlegroups.com, docker-dev@googlegroups.com, 
	fulldisclosure@seclists.org, oss-security@lists.openwall.com, 
	vuln@secunia.com, bugtraq@securityfocus.com

--94eb2c189ceeb62dbe0545c7f223
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Docker Engine version 1.12.6 has been released to address a vulnerability
and is immediately available for all supported platforms. Users are advised
to upgrade existing installations of the Docker Engine and use 1.12.6 for
new installations.

Please send any questions to security@docker.com.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[CVE-2016-9962] Insecure opening of file-descriptor allows privilege
escalation

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

RunC allowed additional container processes via `runc exec` to be ptraced
by the pid 1 of the container.  This allows the main processes of the
container, if running as root, to gain access to file-descriptors of these
new processes during the initialization and can lead to container escapes
or modification of runC state before the process is fully placed inside the
container


Credit for this discovery goes to Aleksa Sarai from SUSE and T=C3=B5nis Tii=
gi
from Docker.

--94eb2c189ceeb62dbe0545c7f223--
