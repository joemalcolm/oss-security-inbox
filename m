X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["452" "Sunday" "16" "August" "2015" "17:22:50" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>" "15" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" nil nil nil "8" "2015081615:22:50" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" (number mark "        gustavo.grie Aug 16   15/452   " thread-indent "\"[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16102 invoked by uid 550); 16 Aug 2015 15:23:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16033 invoked from network); 16 Aug 2015 15:23:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=G+lCsCH8dVpcY/QlSJVFEmWnGUa8/vwmSSdHPuW+kGg=;
        b=grtM7ofr5vBBmNsMOSx15+vccocULafzb60bdQ4ppPwWQpMX0J+CsinSbOLnSd+QHz
         D1HVnYhiikar78z7cAzNp0aB2gEz50/xp99VE5C8+1CT25Q/nn6b6hC05K9PA4krSrSq
         acSgVWnTkunTzNYjfh9GussvLyQF+SlatPazZwT2NOHThT03iBOXzGA5ulUM0nWXsUnz
         oJmgPbs9jzF/7Px7mEHQvLZRVhII1i6eJapt/VXedyHD4dVr88HLQN2ILN8UPGMjqbX4
         wd/kUKW8vrPSw5CP+hZwqRVCTPPfnz06STX/QADq0ILEyKIyTg+i4yx5Qz9RoVaaTHJz
         EOAA==
MIME-Version: 1.0
X-Received: by 10.112.90.165 with SMTP id bx5mr46143825lbb.53.1439738570912;
 Sun, 16 Aug 2015 08:22:50 -0700 (PDT)
Message-ID: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1134613816bb3d051d6f4274
Date: Sun, 16 Aug 2015 17:22:50 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)
To: oss-security@lists.openwall.com

--001a1134613816bb3d051d6f4274
Content-Type: text/plain; charset=UTF-8

A new double free affecting JasPer JPEG-2000 (libjasper 1.900) has been
found triggered by function jasper_image_stop_load.
Despite this library is used by many programs (
http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one providing
support, so there is no fix so far.

This vulnerability was found by QuickFuzz.

Regards,
Gustavo.

--001a1134613816bb3d051d6f4274--
