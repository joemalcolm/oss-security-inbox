X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["733" "Tuesday" "24" "November" "2020" "17:42:07" "+0100" "Frank Morgner" "frankmorgner@gmail.com" "<CAO8bUymajJNtxsHG8RT7iyjFjBHVQFLm4DXqoX=XLpURas-RLg@mail.gmail.com>" "21" "[oss-security] OpenSC 0.21.0 released" nil nil nil "11" "2020112416:42:07" "[oss-security] OpenSC 0.21.0 released" (number mark "U       frankmorgner Nov 24   21/733   " thread-indent "\"[oss-security] OpenSC 0.21.0 released\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] OpenSC 0.21.0 released" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1883 invoked by uid 550); 24 Nov 2020 17:49:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23998 invoked from network); 24 Nov 2020 16:42:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=MsvpAZGlh/SCeRdA+qPjK/saScq2US0CqGUnZ2Nk24s=;
        b=jXaYuvFlxh6Y2w0KgRM5i8XjrKrLtUm/LSFVORIRwIfP+7KT5lHhW+gE8naZ5VxcLX
         /HaUOklQn+XlDRfoL3exvfadq5Nqg1+9VOhouBZ+LHGqCNQ+t3CGMmw2neQ7cGDEdMvz
         TqmkJyXY+10y0DYMEcaoAIVIRyl/ZJLD+Tas3h8UP9lDA1Sqbdp41V1d/1QY+wu/EEG1
         CEQDvemS5WhAL10U82HFWCL0Dy5GwS8ptzh18wGfWRe75FUDv6RO2egW6g9StPszwLr7
         JDBm1hgsKRQaqbrjrcySgTZfTN5HI1cv49ySjg0PZKP+2QporFyHUZDYXRLAPJGqkF39
         /esA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=MsvpAZGlh/SCeRdA+qPjK/saScq2US0CqGUnZ2Nk24s=;
        b=BsknW3TGVPRyeXuD+XSO+eIN83AWVh/+kduf5Ysa7g5zYwFsDs15/emRNvKOY6IxFy
         raWuAkwB49iRN50+fznhG2KlMSIhEXXCqAGMb2htwqLMcJWskT3VrWoDUt4+3HxBlGzV
         nVrKJfJxlTiHxKl8DaZjddSUpT/eFSbj+7lb5bk32oKxq8mSK5a/Lz9uUJ6BCQguWSUC
         ouFSjQffCgr0vvph6HDhHkv2/2tgiNaNeuewZDE25OQGKnKn/bLcEgvDd7ZcGVE/QyuV
         jKN/ML1oCSlu/eIhZsrxCbNeTFfsq99oUPgtvGRH4jHJdNKVbsYHY6xtrv7eKy38CCwh
         NiQg==
X-Gm-Message-State: AOAM53265vQ707D4cmUURUJZ06ASqCJSqcTGgF0yWc/oYNZlkT22I8RG
	NR6dvcYWTUE0Mw6KMXdpppTVbxi54CTSREZo8dM=
X-Google-Smtp-Source: ABdhPJyxctWeg1f1dBYdlmkLGo0ZLUfaskUFG+A/CY/OhmkiyLtgR584RZw9PY6mhcZaJNzTjDUmz20nfoIHWdjuKt8=
X-Received: by 2002:a5d:8793:: with SMTP id f19mr4688852ion.106.1606236138666;
 Tue, 24 Nov 2020 08:42:18 -0800 (PST)
MIME-Version: 1.0
From: Frank Morgner <frankmorgner@gmail.com>
Date: Tue, 24 Nov 2020 17:42:07 +0100
Message-ID: <CAO8bUymajJNtxsHG8RT7iyjFjBHVQFLm4DXqoX=XLpURas-RLg@mail.gmail.com>
To: OpenSC Development <opensc-devel@lists.sourceforge.net>, 
	opensc-announce@lists.sourceforge.net
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000787ec105b4dcfed4"
Subject: [oss-security] OpenSC 0.21.0 released

--000000000000787ec105b4dcfed4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all!

I'm happy to finally announce the new release 0.21.0 of OpenSC
<https://github.com/OpenSC/OpenSC/releases/tag/0.21.0>. You can read a full
summary of the changes and get the release binaries on GitHub. We recommend
upgrading your installation, most notably for fixing CVE-2020-26570,
CVE-2020-26571 and CVE-2020-26572.

We've not only focused on fixing many bugs with different cards and
environments from a variety of vendors. This release also adds support for
two new types of tokens, Gemalto IDPrime and Polish eID card (e-dow=C3=B3d,=
 eDO).

Regards,
Frank Morgner.

--000000000000787ec105b4dcfed4--
