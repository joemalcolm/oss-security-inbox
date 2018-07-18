X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["543" "Wednesday" "18" "July" "2018" "08:30:18" "+0100" "Alexey Sokolov" "alexey+znc@asokolov.org" "<f1c32a4f-e1dc-fcab-fcde-bae9d1460b1a@asokolov.org>" "22" "[oss-security] CVE-2018-14056: path traversal in ZNC" nil nil nil "7" "2018071807:30:18" "[oss-security] CVE-2018-14056: path traversal in ZNC" (number mark "U       alexey+znc@a Jul 18   22/543   " thread-indent "\"[oss-security] CVE-2018-14056: path traversal in ZNC\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21856 invoked by uid 550); 18 Jul 2018 09:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30122 invoked from network); 18 Jul 2018 07:30:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asokolov-org.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:openpgp:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=g/aP0Ty5QYX2DqKLYhGki4JbvtOuS1wo1FAMGGlnExs=;
        b=bmkIUhRkuXJrd6AWipAuLuUAjys4UQNgIvHrIuCxXGHnAZqa1b7eMJPcBxtQwu9Dry
         qfnn+FkIOQZ3bepG4Cfqw4IfPF0LPpgGYjlOfS3+pZu/QMRbWavRrweP06XQmKEuh6cO
         ymcMjtbtzju23niZhIZejh4b7C2/rS+vF+Wq7xSQ1UkqBpo8ovD8LtImcoB/Oy1HdNDG
         O04AJSfTcawRnFAJyOHoEvomRSFgxODLMuLgUCy4j0K1I0BVF0gz8Qa6BmkPFFNg6ytm
         mjmfqVeu/fL0zTNqS59J+aeK+vBDgEVwHre+WfZdJ5evNEZkZFeEB6oSVDVWh8ECHY3X
         /TNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:openpgp:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=g/aP0Ty5QYX2DqKLYhGki4JbvtOuS1wo1FAMGGlnExs=;
        b=ZFATfMKnWeBe0+i7Fcse/nkdL/z4p5YW23HuQEASXhPtIG+Tvv7/aURl9VKMbd0VLM
         /msng5PjYAkw8gO9edIWmWCIFDElAuVu5qgWu1unHhQ64sBPOqENCt8g+VbZy4UxDGoc
         ni3g1fCaWbv6mCxt50I5YghA/j+hDyndA5AaGb3St8g8VT1mRsG9v9Yraajk6z/LZ8QW
         oQx7xDnpB9L7WeKws2fa2IvcdWyJ3J368bIPc65n+Zr2snBUO/bhilDBjfrqzYbtfXU8
         HOIU9btweXJcBaFjC8F0wPtR8/ysTO5J7B21pa/unmysRW0GGGyPbUBxPmVDSWvbavZs
         pwtw==
X-Gm-Message-State: AOUpUlEeTkdbzz6qltl3ymTdROXVQtrRkCFb992+ceZc40gUuRH1g3or
	hb0XNKVZrgIuCAOlg/GMrBVYXNJuWR/TtA==
X-Google-Smtp-Source: AAOMgpezSf4cCRqQ8oUFQrG8CFdkQi8yhwXIRFdDXjM/ni6uSgU8jVBtAl5U0lT3lJ+MJb0MspQtxA==
X-Received: by 2002:a50:eacb:: with SMTP id u11-v6mr5938292edp.7.1531899019395;
        Wed, 18 Jul 2018 00:30:19 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Alexey Sokolov <alexey+znc@asokolov.org>
Openpgp: preference=signencrypt
Message-ID: <f1c32a4f-e1dc-fcab-fcde-bae9d1460b1a@asokolov.org>
Date: Wed, 18 Jul 2018 08:30:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2018-14056: path traversal in ZNC

Severity: medium

Versions affected:
0.045 through 1.7.0

Mitigation:
upgrade to 1.7.1, or disable HTTP via `/msg *status AddPort`, `/msg
*status DelPort` commands.

Description:
ZNC before 1.7.1-rc1 is prone to a path traversal flaw. A non-admin user
can set web skin name to ../ to access files outside of the intended
skins directories and to cause DoS.

Upstream patch:
https://github.com/znc/znc/commit/a4a5aeeb17d32937d8c7d743dae9a4cc755ce773

Reported by: Jeriko One <jeriko.one@gmx.us>

-- 
Best regards,
Alexey "DarthGandalf" Sokolov
