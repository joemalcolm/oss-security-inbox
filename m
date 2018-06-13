X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["471" "Wednesday" "13" "June" "2018" "19:34:15" "+0400" "Loganaden Velvindron" "loganaden@gmail.com" "<CAOp4FwSfmC=vLLSTxZYFbAbkh_j3eJJGqvwTg5R_bgzh9vyuEA@mail.gmail.com>" "15" "[oss-security] Intel FP security issue" "^Cc:" nil nil "6" "2018061315:34:15" "[oss-security] Intel FP security issue" (number mark "        loganaden@gm Jun 13   15/471   " thread-indent "\"[oss-security] Intel FP security issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7892 invoked by uid 550); 13 Jun 2018 15:35:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7224 invoked from network); 13 Jun 2018 15:34:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=atH6sAsEsKFX602zFyzVg+Ym+aiq9Jwj8NgY8oA26nE=;
        b=M0MGG38TGcCLEPuqusAIzyMBQFiXNtpsztWSg8FWr6VwZeJReeReIl6LQtGJQ5oO7J
         AJMcSAXU1KcPkTmLMRomyPZD9mTqZbVqx00PU/oylFxG9hcawM17ZM2cRu2peE9L4roL
         v5wgS7RE0EJgNKvHcSWvYY9oDqg4oeay7fJK1imUQbuayfjQ+Lqj9NlcQZfFHLaRy6Bq
         lNzUIW3LHZf3ksVaWPBkhbBAPfZVXwelufmY/mCExnWe06TDCbTRlDZPVDkjUkfSvWs/
         rQI8BeamdjLstk1M35fUJj6qYRUylZXZXSkBzGuRbHqeDWHTEoqNHN6jEjJMlokXmqqv
         86tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=atH6sAsEsKFX602zFyzVg+Ym+aiq9Jwj8NgY8oA26nE=;
        b=AT0AK8MomLk48c0LjaCTNf9sM6YfF+7ZZhwpf7otCh/Ca+QtakCru0Ueu4chXcMZm4
         3xTx75AyZtZyH0+8agNe/lkFW7/KeLpGUQ+wjilwwDnEplHTBff+0pLyq/DorimdsNlb
         aFKnfT4jypcSgwHjwzxQrOA75Vf+y2NmUAPXMLuS6eDmv4+Vy8cfqKKgkXzOuxZumZO3
         t3DXmVqB/l3dkaAv6VdO0looIPi5SHZFeMBb6v3Jn8OyEkCKzjyvmiNx4z7HASqyuCxt
         YZvOU5jbv6eTcn1DDfFKfbTJJKwpS6lfhPzpc8etKJKpvtsFESVvTkyALkzSvbFATSS1
         EYPg==
X-Gm-Message-State: APt69E1r60EGIR9RR8/mx3/hjKheeeo6WRuep3UnLqNc2ScLr3+Y17SQ
	jCT7rn3oWonBxNvfjk3nkqWru6bYwW+KwJwd/zwxfVUc
X-Google-Smtp-Source: ADUXVKJE+Y0KxuyIxISaSmREtNc0p87rQSVRjbYegAoCAAg+O4FaRiwitexwIlbDMAYiidv1dpiaG9kI2BiKQ8UIhNA=
X-Received: by 2002:a6b:b513:: with SMTP id e19-v6mr5341772iof.250.1528904055875;
 Wed, 13 Jun 2018 08:34:15 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAOp4FwSfmC=vLLSTxZYFbAbkh_j3eJJGqvwTg5R_bgzh9vyuEA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: secure@intel.com
Date: Wed, 13 Jun 2018 19:34:15 +0400
From: Loganaden Velvindron <loganaden@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Intel FP security issue
To: oss-security@lists.openwall.com

Hi All,

Both OpenBSD and DragonflyBSD have gone ahead and committed fixes for
the rumored Intel FP issue:

OpenBSD: https://marc.info/?l=openbsd-cvs&m=152818076013158&w=2
DragonflyBSD: http://lists.dragonflybsd.org/pipermail/commits/2018-June/672324.html

I think that the cat is already out of the bag, and releasing details
of this security problem makes sense. Since this has gone public, Is
there a reason to keep this under embargo ?

Kind regards,
//Logan
C-x-C-c
