X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["459" "Tuesday" "4" "October" "2016" "23:35:00" "+0200" "Albert Astals Cid" "aacid@kde.org" "<1630041.nLTca8CMjC@xps>" "14" "[oss-security] KMail vulnerabilites: need 3 CVE" nil nil nil "10" "2016100421:35:00" "[oss-security] KMail vulnerabilites: need 3 CVE" (number mark "U       aacid@kde.or Oct  4   14/459   " thread-indent "\"[oss-security] KMail vulnerabilites: need 3 CVE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11699 invoked by uid 550); 4 Oct 2016 22:39:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17729 invoked from network); 4 Oct 2016 21:35:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:from:to:subject:date:message-id:user-agent:mime-version
         :content-transfer-encoding;
        bh=85OOEpSTya8OU3lknKajltFRumUbpecoGcyTahjyGJE=;
        b=nNx7KDGr14oPQqF0mn4QAoTfoyKyPNCeYWxgNM54g3l5PbhC3WiZoCEhp9ISRK0oxm
         MUi2UPR0iiKY0YrEbPQ5p4msG1FDnJnvCPVzHwwRIDYaEIQR8rmTLWOTcF5Q45jE/rCk
         zpu6ITtkRcDvszM5ipICJGDyHh9AhJizOEk2kPC1mvj7gXWstIX4D843nAcCzhqdZ3OA
         GXl2PGRoWPGYDdu50SESYmjtTUQEYjMaA/IhT9csN8tpmv7fdVyCJDHVkEabCgFs+cax
         Y3Fa6FAazSPylyUp+JupgrhPQ13OylEjJPkX81bp14ugKtI+9RmGgNYFqPnT0io6sG+R
         SoHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:from:to:subject:date:message-id
         :user-agent:mime-version:content-transfer-encoding;
        bh=85OOEpSTya8OU3lknKajltFRumUbpecoGcyTahjyGJE=;
        b=hJbF2z0pCIiq/7gNhT1jGQ2z1zLkW2zRodWd6ujBmuvU1h6f7836MSKQ18P2iKW2H4
         hFuLEmeosYF2KyGZpU9zf1sHT7MxLaaYNsyCBBx5it8hvfTgaXaab0fOKTQnPZ0I9a+E
         vDSNt1YCrKWtrodxEB1vvvj9iHYwZkgl8jPsVtj7SnYa9Gor0uZJb4uNs+kjds7LuFIV
         RNfsaf2ENC/a8ovlMMa1qVFMFjj2xkZuwHFh6ohhs9Ip46d3BgQd1G6KcgT3IFuUHW8K
         E4zeElUINqdiYKMFSFiaJAPD/MGfD3MIqcESOYJPDM4rTj8gNuV6Cw6gOBw/dDIrW46H
         r7pA==
X-Gm-Message-State: AA6/9RlvOVH5QqFITQrypgUOR6uzId8UaPbAFFc4ZfM1renQAGFGdrwVrEbc3CN0tWJJNw==
X-Received: by 10.194.112.131 with SMTP id iq3mr4764602wjb.123.1475616901436;
        Tue, 04 Oct 2016 14:35:01 -0700 (PDT)
Sender: Albert Astals Cid <tsdgeos@gmail.com>
From: Albert Astals Cid <aacid@kde.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>, security@kde.org
Date: Tue, 04 Oct 2016 23:35:00 +0200
Message-ID: <1630041.nLTca8CMjC@xps>
User-Agent: KMail/5.1.3 (Linux/4.8.0-17-generic; KDE/5.24.0; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: [oss-security] KMail vulnerabilites: need 3 CVE

Hi, Albert from KDE, can we get three CVE assigned for KMail?

Here are the summaries

KMail: HTML injection in plain text viewer
KMail: JavaScript access to local and remote URLs
KMail: JavaScript execution in HTML Mails

Fixes for them are already in our various of our repos, I can link to them if 
you need it, but i didn't since there's many of them (fixing spans through 
various repos and commits) and didn't seem like it added much.

Thanks,
  Albert
