X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1082" "Monday" "11" "January" "2021" "13:38:40" "+0100" "Jaroslav Tulach" "jaroslav.tulach@gmail.com" "<20923736.EfDdHjke4D@logout>" "38" "[oss-security] [CVE-2020-17534] HTML/Java API 1.7: A race condition between deletion of the temporary file and creation of the temporary directory" nil nil nil "1" "2021011112:38:40" "[oss-security] [CVE-2020-17534] HTML/Java API 1.7: A race condition between deletion of the temporary file and creation of the temporary directory" (number mark "U       jaroslav.tul Jan 11   38/1082  " thread-indent "\"[oss-security] [CVE-2020-17534] HTML/Java API 1.7: A race condition between deletion of the temporary file and creation of the temporary directory\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-17534] HTML/Java API 1.7: A race condition between deletion of the temporary file and creation of the temporary directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23965 invoked by uid 550); 11 Jan 2021 12:47:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20382 invoked from network); 11 Jan 2021 12:38:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:reply-to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GotQIIU7nGxjYctSDmJugWJMCeSiA6KNWZkv6WMsSDQ=;
        b=XZuGk/6420vxG/UVTu/y3wnRgn9EnCA4teuhh2oNbp+oXUzgUXMPIJVDGl4HRpAUIm
         ndppg4Difu7njBCzkt7fp40QK/iFZNCmxNMqVIaFTTxFWVf6yArpijpXg3lq/6xLB6tB
         95XGdYAUGun5uK+CooJEmF+voptcWwasg0acJYmlEPAkimUfA5eVewFNWr0Fb3OR/3PQ
         LDdiy3TfGg3kZ2TEvK5PhKDfE6H7sfTRfY+7J43aCBrbHwJTMUz1T7POKTVFce6zPV6t
         j8PNz1DpybZxO2qv53ku1nT5LJIcUGnOBRO17FtJ5sFZAIJF8ZyqbkgzMdTideonllT/
         p/YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=GotQIIU7nGxjYctSDmJugWJMCeSiA6KNWZkv6WMsSDQ=;
        b=N0U3IeDSzFnDDEZL1/dP+n/q/tjvhmehR6f12l6fsYJxWjjyiZZjszlyY4Zq82e4hG
         +kM6Q6wRv6TlRNoh3H4eAjQXzd49QexCJZtbKEaxqiZHE81VQ2idyjm1VvHesV3CFX7H
         xlZF4jKNTtChOyk1ng91nKz8gmrD2/nfGUqHD/4T3ltYtcluKlwvg1duTo1G0KjgxByF
         N2yKq1qEYkD5wqIqzPbKCJB3g6Sk2cvkMhvz0U3Z8aERFA8egDWphMHK5BSWI0GYcHF2
         meRzualhw4ngcwPIL1k0WrMvUdbDTOmquOgjFTrngshQTBBHkGPhrVWlevcu1hGIZidc
         yQYQ==
X-Gm-Message-State: AOAM532XeMDWcWotyMpKX0u8ku+eUkuLea3EZc/db2tQDtADzSNbEQQQ
	RtzebJV4pfiMykmdtW/xTkM=
X-Google-Smtp-Source: ABdhPJxON2c2wZ+hL/i5rLVDn5BkmwpQipflJERU3o7fSiQo3DnWoyJ7PY971amdbnYy8aH4WDM/ag==
X-Received: by 2002:a50:fe0e:: with SMTP id f14mr14303380edt.159.1610368722611;
        Mon, 11 Jan 2021 04:38:42 -0800 (PST)
From: Jaroslav Tulach <jaroslav.tulach@gmail.com>
To: Apache NetBeans <dev@netbeans.apache.org>, Jonathan Leitschuh <jonathan.leitschuh@gmail.com>, Apache Security Team <security@apache.org>, oss-security@lists.openwall.com
Date: Mon, 11 Jan 2021 13:38:40 +0100
Message-ID: <20923736.EfDdHjke4D@logout>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart7199003.EvYhyI6sBW"
Content-Transfer-Encoding: 7Bit
Subject: [oss-security] [CVE-2020-17534] HTML/Java API 1.7: A race condition between deletion of the temporary file and creation of the temporary directory

--nextPart7199003.EvYhyI6sBW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="iso-8859-1"

CVE-ID------CVE-2020-17534

Summary-------A race condition between the deletion of the temporary file and creation of 
the temporary directory


There exists a race condition between the deletion of the temporary file and the creation 
of the temporary directory in `webkit` subproject of HTML/Java API version 1.7.  


A similar vulnerability has recently been disclosed in other Java projects and the fix in 
HTML/Java API version 1.7.1 follows theirs: To avoid local privilege escalation version 1.7.1 
creates the temporary directory atomically without dealing with the temporary file: https://
github.com/apache/netbeans-html4j/commit/
fa70e507e5555e1adb4f6518479fc408a7abd0e6[1]


-----------

- Avoid using webkit presenter 1.7
- Update to HTML/Java API 1.7.1

Credit:-------The problem was identified by Jonathan Leitschuh



--------
[1] https://github.com/apache/netbeans-html4j/commit/
fa70e507e5555e1adb4f6518479fc408a7abd0e6

--nextPart7199003.EvYhyI6sBW--



