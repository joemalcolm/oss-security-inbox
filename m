X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["999" "Wednesday" "13" "July" "2016" "10:05:26" "+0200" "Mathias Svensson" "idolf@google.com" "<CACG6YS0Q_DcgZ+N9_X1PcdTZ45hkVDe4JYEF-hMaL92b2wh0rw@mail.gmail.com>" "32" "[oss-security] CVE request: Information leak in LibTIFF" nil nil nil "7" "2016071308:05:26" "[oss-security] CVE request: Information leak in LibTIFF" (number mark "U       idolf@google Jul 13   32/999   " thread-indent "\"[oss-security] CVE request: Information leak in LibTIFF\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14318 invoked by uid 550); 13 Jul 2016 08:05:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14280 invoked from network); 13 Jul 2016 08:05:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=JWed3jHJqK4LSNdBEvHX4Kz0nA9ldy6yxHIVTEAFJzU=;
        b=A7eTR2r0JPL4BBhhlAsNTqg2DrWGkdNebIMyTIReaLxLCCDQM+Bgnj8zYugg3UF74e
         v5nbEqHBpl3D60uWNZyyaW6lE0tzaAXJ0ggeh6XhpaAUDA3HZbLdiQC8Ilk3dwsmVTCd
         x9faKDiFjEI6+uJoIzpnGmMvPwSplRSBgXTb3PNQG0LPpYWm6XwlGStRYt5N0nxKPIQl
         N1DoEYCv83/ikNe+aMRanElbUnwffaPSq1N6t6rZnMh0KaGLtOZkLavbzdA1/9KMo1xQ
         4hdMSzYH5Z4p1Lo8S2fE/7zqQutnlw9lqEuAVjeIkumb3iqEcUQRTEYyzNVPdk8tLLOr
         Ri0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JWed3jHJqK4LSNdBEvHX4Kz0nA9ldy6yxHIVTEAFJzU=;
        b=lctrpYAStEhDa6Xhoe9VHFzplaRLWnpq4JLD+Afr2WU4hsJWD7EIJVn4xZbl4559dH
         XkEMonD633Lc/kT28eWy4eYw+z3MqcEVQRjypJ8+jSO+u7gTP86ImidkKfcTW7R9cV57
         i9psfFq2qFcozS5fRV+47tVbRRGeFVWxZ080x0/JcQJ85+cGv2iC1JQnK36x2qAz3d5K
         zycv/aEUoj3koBQkGitOYZhAeECRa6Yn3CacwThtdUjnreNCGmSgijSZCPlO8FWu5LoW
         D74ETlHkUiJBfZRN1uIpVjHzYLRL+90AXQz97daCgVNwLMmLph80ZUKEbuOM6gMlu3N7
         /PHw==
X-Gm-Message-State: ALyK8tKktIrhJdxklabeUzNIEUqwdbIX5FMpQTAQIHyxgXMSKDhxZbc9OI6J8xMC3w2X5JBpBxv07xKiM+ljXQdF
X-Received: by 10.28.218.67 with SMTP id r64mr9103902wmg.10.1468397146510;
 Wed, 13 Jul 2016 01:05:46 -0700 (PDT)
MIME-Version: 1.0
From: Mathias Svensson <idolf@google.com>
Date: Wed, 13 Jul 2016 10:05:26 +0200
Message-ID: <CACG6YS0Q_DcgZ+N9_X1PcdTZ45hkVDe4JYEF-hMaL92b2wh0rw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114699924ed76105377fda66
Subject: [oss-security] CVE request: Information leak in LibTIFF

--001a114699924ed76105377fda66
Content-Type: text/plain; charset=UTF-8

Hello oss-security,

I would like to request a CVE number for an information leak in LibTIFF,
specifically in the file libtiff/tif_read.c.

The vulnerability allows an attacker to specify a negative index into the
file-content buffer and copy data from that position until the end of the
buffer.

This will allow an attacker to crash the process by accessing unmapped
memory and (depending on how LibTIFF is used) might also allow an attacker
to leak sensitive information.

The issue is fixed in CVS HEAD with the commit:

revision 1.49
date: 2016-07-10 20:00:21 +0200;  author: erouault;  state: Exp;  lines: +6
-3;  commitid: YhOZoKv5OA9gNNdz;
* libtiff/tif_read.c: Fix out-of-bounds read on
memory-mapped files in TIFFReadRawStrip1() and TIFFReadRawTile1()
when stripoffset is beyond tmsize_t max value (reported by
Mathias Svensson)


Kinds regards,
Mathias Svensson
Google Security Team

--001a114699924ed76105377fda66--
