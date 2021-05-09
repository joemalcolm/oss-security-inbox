X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["756" "Sunday" "9" "May" "2021" "14:32:25" "+1000" "William Bowling" "will@wbowling.info" nil "24" "[oss-security] [CVE-2021-22204] ExifTool - Arbitrary code execution in the DjVu module when parsing a malicious image" nil nil nil "5" nil nil (number mark "U       will@wbowlin May  9   24/756   " thread-indent "\"[oss-security] [CVE-2021-22204] ExifTool - Arbitrary code execution in the DjVu module when parsing a malicious image\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-22204] ExifTool - Arbitrary code execution in the DjVu module when parsing a malicious image" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13856 invoked by uid 550); 9 May 2021 07:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3130 invoked from network); 9 May 2021 04:32:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wbowling.info; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=dgLqK9Ce+V2LOIis7p7px/IRpExAO9nVQVCatOzH7wo=;
        b=MgXt0bZTOt/Ph1CWTziztdnxgUlS7PFSigFBdla5QTdJhPzbRNGzMUFRH4cDjTe0JU
         iOn+R4DVas2amznaYQ0MZGBb/fZU2PELiK6yFKe1n9il4x5kR4JrveMUNjzj5CsnrVmP
         w/+4wOIcbZKIP6ZMcAJJOmiJuiYWa6gRL7FHVkXkrEaejasvTS3ZgXJe7Jx4ucxn4VQd
         whkYV3NVOGi8Cv0o/wXu9UR+58BVui2DX8hHCpPHNak3H2S+9S74DgfBDVl7udFwMp6v
         m2FunLnRo0vN2Sd2rYmutCentMCq5GNV7c4YVfGXTAV58tpQ8CB+ZosF2ylunpAt+REN
         ajeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dgLqK9Ce+V2LOIis7p7px/IRpExAO9nVQVCatOzH7wo=;
        b=DBEWwnfuiWUTDWr/PydGLZIZ5j6nD0iOH0a94w0Y18r1FH/l+NOBE+t7AHnhgjWDNC
         Yn2Tnbn1QrJ7agqi138440jrFhDKDBg2G1AC9MMgS0t6Qzch5VST4QEGP/mQJP4HePt9
         HuHE4mtFrcUu/UUT0uHy40cvJHmWrHU8behCrElyVVNnYOwYlL73fSit/OvwjnkcoTXh
         kckIMlbll5g9s0mgacTRe7o2dn23kr3hevXcS2b4/WWwbvV+/tAI40K3wzPtlf/tH8Am
         KPb3oy0+ATqgrqT1euOzi4AN+BrtrPv3C69E0I5NfJxn9mmvd1MAiMdNwXK0WOExwt+b
         bizA==
X-Gm-Message-State: AOAM532hpng9m98ZIRM68uNavar0cdyoSmUzr3o3KRo5Yn14+GK+CwLf
	TmVqzTQM5qHQgSzLgmRlLVKlhRObVB28T3xg88LgrX0G0uyLPieG
X-Google-Smtp-Source: ABdhPJzQvP3z6DF9mZhJ9wCdnkq+a0ydV9I2nXbspmu4kU0rOWjjmTLp68fQQGyNENKfl6DI/gW6MZwxKnO6YMWLye8=
X-Received: by 2002:a5d:525c:: with SMTP id k28mr22497384wrc.158.1620534755855;
 Sat, 08 May 2021 21:32:35 -0700 (PDT)
MIME-Version: 1.0
From: William Bowling <will@wbowling.info>
Date: Sun, 9 May 2021 14:32:25 +1000
Message-ID: <CAPWJUnz=mf9+zHrrxgBYYZdQzDW-zKf0kCOeVY4y-61CeA9HPg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000781ffa05c1de261e"
Subject: [oss-security] [CVE-2021-22204] ExifTool - Arbitrary code execution in the DjVu
 module when parsing a malicious image

--000000000000781ffa05c1de261e
Content-Type: text/plain; charset="UTF-8"

ExifTool 7.44 to 12.23 has a bug in the DjVu module which allows for
arbitrary code execution when parsing malicious images. The bug can be
triggered from a wide variety of valid file formats.

The bug has been fixed in version 12.24.


References:

Fixed release - https://exiftool.org/history.html#v12.24
Upstream patch -
https://github.com/exiftool/exiftool/commit/cf0f4e7dcd024ca99615bfd1102a841a25dde031#diff-fa0d652d10dbcd246e6b1df16c1e992931d3bb717a7e36157596b76bdadb3800
CVE - https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-22204

--

GPG Key ID: 0x980F711A

GPG Key Fingerprint: AA38 2A0E 7D22 18A9 6086  0289 41DC E04B 980F 711A

--000000000000781ffa05c1de261e--
