Received: (qmail 32613 invoked by uid 550); 30 Jan 2023 19:47:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27788 invoked from network); 30 Jan 2023 19:38:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jfr.im; s=google;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QsLrAs+rHHFBc0uVowVlCUZvUpM9SNBN2tG3SJ7Av2k=;
        b=LFCO7o1UJShQvJwOhCP+70xVMEoXfRTtv6Y+xLrFaODjENVoiVox8xanC7oS7Z2CKC
         peUGL8Hqw7OXpIyNyBdlamylXlhbCwkhaNBQLOVwu1M5/t7vzHbRyzq/G22souzmyR7+
         5Am6Qxi8gbDlgt6Owl7rSiZXEi6pDCT0Zevog8x86Z3ZSgJgkkf2EwGj7PDWAUwkOktY
         ALV3SVO3bAGAsd/xPYAoLM4d3/Hsnx87VVsp+J4gI4A8v0+J7GBo45D5xG5K8fmztDcQ
         hZmSfPWnEU/nKeQoqIRxIi0kXAoMKP43SBbmGzH2Barz2MQqJ6Gg4Ekl2OPnALcb5R3F
         0OnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QsLrAs+rHHFBc0uVowVlCUZvUpM9SNBN2tG3SJ7Av2k=;
        b=zArHDg796BGZP39+7KlsDF0Vksh/ZAnfczTKoAIdyo58tJZ5+4+0JkLA0iCIQrykoP
         N7Sj0uPp2z9F/t9dRI2sg+mbVTckxiOfTiXJnKfXxildZV//cJrqHDteDFikyokm3VMl
         X2kS2eDn7dGMCNMGM7EcJWQCsrNJz0kZQGx26lHrrHYhdF2hwvavgONtbtscge7gNnCo
         MfaZoSOI7NMg3bCHQVJnKkzm9T+0fAbu9wzfxYwc+4RA46xke4vvj6OxosrTtjKz1RlE
         qEcetoBVWfoWVoFjPAbAPdTt7C6bqNmeeMJRuKHZSEH4VhBTaJSXFs82GqSYGrgg2g4T
         3NWw==
X-Gm-Message-State: AO0yUKXwWvBGQMAZng7IgbtyVKmXTCV7GdzgEheMYK7XZo1QKbDn6wpT
	c08075F20LrPv21szswhlmjQFoWbrWC6b8y4
X-Google-Smtp-Source: AK7set88D9Hvz2W+CxWaSEJZ4WYodpSaJOIovLfmUBnsBDTKxFyPG1IkX6L3rIunLEv0E4g0OkFqqQ==
X-Received: by 2002:a05:6870:f707:b0:15f:8e58:f000 with SMTP id ej7-20020a056870f70700b0015f8e58f000mr4317926oab.15.1675107521112;
        Mon, 30 Jan 2023 11:38:41 -0800 (PST)
X-Received: by 2002:a05:6870:414e:b0:163:319f:d28 with SMTP id
 r14-20020a056870414e00b00163319f0d28mr1833302oad.265.1675107520621; Mon, 30
 Jan 2023 11:38:40 -0800 (PST)
MIME-Version: 1.0
References: <Y9GEU0G9N5etu+H3@sol.localdomain>
In-Reply-To: <Y9GEU0G9N5etu+H3@sol.localdomain>
From: John Runyon <me@jfr.im>
Date: Mon, 30 Jan 2023 13:38:29 -0600
X-Gmail-Original-Message-ID: <CADCiM6vwTMJoOuLmdmmCeKovvmdthDbou+Qx0g1n-rJ_FygBUQ@mail.gmail.com>
Message-ID: <CADCiM6vwTMJoOuLmdmmCeKovvmdthDbou+Qx0g1n-rJ_FygBUQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000ba406405f3805cac"
Subject: Re: [oss-security] Data operand dependent timing on Intel and Arm CPUs

--000000000000ba406405f3805cac
Content-Type: text/plain; charset="UTF-8"

>  I consider this issue to be a CPU security vulnerability

By that logic, allowing users to log into their system is a security
vulnerability.

A choice taken by design is not generally a vuln, even if/though it creates
vulns in other systems.

--000000000000ba406405f3805cac--
