X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["935" "Thursday" "25" "June" "2020" "21:07:17" "+0200" "Przemyslaw Roguski" "proguski@redhat.com" "<CAGGkMit28sz3s0iDJ2fBJZ4daKU1A-dsWaZHzeak2DmKXSOjCg@mail.gmail.com>" "29" "[oss-security] CVE-2020-10753 ceph: radosgw: HTTP header injection via CORS ExposeHeader tag" nil nil nil "6" "2020062519:07:17" "[oss-security] CVE-2020-10753 ceph: radosgw: HTTP header injection via CORS ExposeHeader tag" (number mark "U       proguski@red Jun 25   29/935   " thread-indent "\"[oss-security] CVE-2020-10753 ceph: radosgw: HTTP header injection via CORS ExposeHeader tag\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10753 ceph: radosgw: HTTP header injection via CORS ExposeHeader tag" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31898 invoked by uid 550); 25 Jun 2020 19:14:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26001 invoked from network); 25 Jun 2020 19:07:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593112062;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=pe3YIb02Sm1BV5mk5qDPVGzRk5fejTyo2yjHFhdEQK8=;
	b=L4JcAYKgvWITvqk+H/9tLpWmwd7eXQK4nXbbUBCS/VHuWrCYB8eWY+9nX+S2UXMj3nb5Eb
	T3IPdhAgtLFjaePGMkC9XAzKhyn9pNexrosNatNDyhAsZgbSuGh5iPYwWqtBoDVZW2GCAS
	EIIldj+RvRjPvyeZrnYT9PvanyFE6S8=
X-MC-Unique: 3enioiu1NiKrvPZlxCYNCg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pe3YIb02Sm1BV5mk5qDPVGzRk5fejTyo2yjHFhdEQK8=;
        b=jd1ecOkww7WdYGZ7KLxQDNdwFGrebNSpwsRDC8EQCLE6SyjMCEK+gSB4XUopLuuM/I
         3ezBJ6ZyqgM9twOPFt49zqfxW1M3X+roet05cL5gEIl+8V9cHyp9rj7y0D40xQjBGDCF
         NrIeL3qp1CokbOAG5nvMkpH4z6KjvkoYXEETrDiG+GXFO8CI/K9B8hQxxm2xGu3L+QlW
         +6ThX5RRZRV5gNTmcAAwrPvI0adDkKZj282v6dpjxx85a4C1SxaxXuk/fFEpVrkdwrS6
         kRB3IyzXj7lSxFo1A96aPMLAOEozinais5xbHW+aPt8ETaGjcvq76DvJEeW9mOKyzu+8
         OP5g==
X-Gm-Message-State: AOAM5314sTyTf80M8fQW9TG0+yjvZX4eFKOPpSBqiZrVGzGrLvIgnojS
	nTn6GxWfB//THNmPmku/71pi+pFp3Ni4SqOEYAmvXWjIkx69ROmn8jIoUezzH/+i0PMTNI9GYAu
	Rts7il1s3W26txX0xSdcN3c+HfoMXRu3RfqgjGzySZw/3
X-Received: by 2002:a2e:7015:: with SMTP id l21mr16621935ljc.235.1593112048341;
        Thu, 25 Jun 2020 12:07:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzY24Rq3p1ZGit2WTiEWtt9k68+39UXE/X+CcpL+pbDu40je592WsdEcWX6BnzNxkaCtzZzBA8JixzkZ79Tddc=
X-Received: by 2002:a2e:7015:: with SMTP id l21mr16621930ljc.235.1593112048146;
 Thu, 25 Jun 2020 12:07:28 -0700 (PDT)
MIME-Version: 1.0
From: Przemyslaw Roguski <proguski@redhat.com>
Date: Thu, 25 Jun 2020 21:07:17 +0200
Message-ID: <CAGGkMit28sz3s0iDJ2fBJZ4daKU1A-dsWaZHzeak2DmKXSOjCg@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000b7ac5d05a8ed4d86"
Subject: [oss-security] CVE-2020-10753 ceph: radosgw: HTTP header injection via CORS
 ExposeHeader tag

--000000000000b7ac5d05a8ed4d86
Content-Type: text/plain; charset="UTF-8"

Hello Team,

A flaw was found in the Ceph Storage RadosGW (Ceph Object Gateway). The
vulnerability is related to the injection of HTTP headers via a CORS
ExposeHeader tag.
The newline character in the ExposeHeader tag in the CORS configuration
file generates a header injection in the response when the CORS request is
made.
This issue affects the RadosGW S3 API, it does not affect the Swift API.

This flaw affects Nautilus and Octopus based versions.
Red Hat has assigned CVE-2020-10753 and rated it as Moderate impact flaw.

PR:  https://github.com/ceph/ceph/pull/35773
Patch:
https://github.com/ceph/ceph/pull/35773/commits/1524d3c0c5cb11775313ea1e2bb36a93257947f2
The fix will be included in the Octopus version in the coming days.

Credit: William Bowling


Best Regards,
Przemyslaw Roguski  / Red Hat Product Security

--000000000000b7ac5d05a8ed4d86--

