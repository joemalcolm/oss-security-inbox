X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["344" "Tuesday" "18" "October" "2016" "10:42:15" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>" "16" "[oss-security] CVE assignment for PHP 5.6.27 and 7.0.12" nil nil nil "10" "2016101807:42:15" "[oss-security] CVE assignment for PHP 5.6.27 and 7.0.12" (number mark "U       kaplanlior@g Oct 18   16/344   " thread-indent "\"[oss-security] CVE assignment for PHP 5.6.27 and 7.0.12\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11585 invoked by uid 550); 18 Oct 2016 07:42:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11549 invoked from network); 18 Oct 2016 07:42:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=9wJnw4C7FjXLVRzGnh9tv8Mz1OMUGdZbRlA9jmlg22c=;
        b=Ijwl6juhg7svZVBG54jxR/t6iuAE3KRD7/eini+uTIGMuBm55fyQ18VaPfXOCiks5Z
         pveCot0r0IJnXw2UkipSC1dquuHxjZSfgo7eHhnfaXSIFOfpXywfG0EoVDDBcuSxr3+e
         /xWeT6+j+4E4R6S88V+XCHUT4rLCPJvCdAyyJoniNnO8Fi30WPflXyDsxSbYfMaj735A
         SolVKdX5XVLGtC3rZfmuUj4+0lGOgWaZlerfUcB8M6G5hUCHHTOkI36OFkf9+epFUdor
         LYJNx08GLFjfB50zAQm83iqgx/kokUlAJjnlSA7QB8rlNDsta9yeoL67DgyTgNyUrMB9
         ShKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9wJnw4C7FjXLVRzGnh9tv8Mz1OMUGdZbRlA9jmlg22c=;
        b=mgr+BTm6NMV0c9s1Pz+1nnieS5oKI6QQZ0Z9QbJsZbanS/vLos/7aN+j476UJkDSqD
         84zRXf6QExLhji8X/u6nqgXp2sHR0FwoSf+XNdfO6Tm90rT23MFfujEkViSTZb98UriS
         KbERJGVeM6uPMvbUgawto4hY2r3+iUj7l4FJuixo2jFzm7xwtEyI2ILx+k6/apRBb7ti
         /gt7hYht5MaAWlBdfQViuDqBjU4XJCYgEOo9mho/xmPCzN81/5HsZnG1WDamRFtU83OZ
         GwFa1HCqdw2KNdivxSAOFbv48jpp/MJyF8vmRtD5dMjsK39zKCix/rosUeLu3w2BieGM
         DzBw==
X-Gm-Message-State: AA6/9Rn6mKrJEpsYgWF5uvAVFzf1y97Q0b/I6yaaw3SVwx5Nxca8E+vbTbUpF92lRjMRywAswniJ0zRwgHFgDg==
X-Received: by 10.31.95.7 with SMTP id t7mr1263733vkb.0.1476776536060; Tue, 18
 Oct 2016 00:42:16 -0700 (PDT)
MIME-Version: 1.0
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Tue, 18 Oct 2016 10:42:15 +0300
Message-ID: <CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114e2932d838b1053f1ed478
Subject: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12

--001a114e2932d838b1053f1ed478
Content-Type: text/plain; charset=UTF-8

Hi,

Please assign a CVE for the following issue:

Bug #73147    Use After Free in unserialize()
https://bugs.php.net/bug.php?id=73147
http://git.php.net/?p=php-src.git;a=commit;h=0e6fe3a4c96be2d3e88389a5776f878021b4c59f

Thanks,

Kaplan

--001a114e2932d838b1053f1ed478--
