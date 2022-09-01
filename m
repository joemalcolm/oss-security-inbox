Received: (qmail 3794 invoked by uid 550); 1 Sep 2022 12:32:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20102 invoked from network); 1 Sep 2022 12:15:54 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: ACgBeo16gE4vCVr1p6MM4hcOLiTlmPRyhzVXqK2Idkoz4XlaQbpOEFJa
	012SoWCgPmOYEb5hyvZ1d7K/yCwi7wlyahpiLQs=
X-Google-Smtp-Source: AA6agR5aDuxfFWSYGhZxsJDiEiM4pkvp4jxmWsDrBoioNCUTOmCoB79/g8GoGzXcz6aUZc5tWIgHzmfh2ztyBRdDm2Y=
X-Received: by 2002:a1c:f709:0:b0:3a6:3452:fcbe with SMTP id
 v9-20020a1cf709000000b003a63452fcbemr5131330wmh.164.1662034529875; Thu, 01
 Sep 2022 05:15:29 -0700 (PDT)
MIME-Version: 1.0
From: Zhang Yonglun <zhangyonglun@apache.org>
Date: Thu, 1 Sep 2022 20:15:11 +0800
X-Gmail-Original-Message-ID: <CA+ZBtZ7wgQi-kfn0KobGNri1GYMd=+ZGirA1yftq5SEHAtr-PA@mail.gmail.com>
Message-ID: <CA+ZBtZ7wgQi-kfn0KobGNri1GYMd=+ZGirA1yftq5SEHAtr-PA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@shenyu.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-37435: Apache ShenYu Admin Improper Privilege Management

Severity: moderate

Description:

Apache ShenYu Admin has insecure permissions, which may allow
low-privilege administrators to modify high-privilege administrator's
passwords.
This issue affects Apache ShenYu 2.4.2 and 2.4.3.

Mitigation:

Upgrade to Apache ShenYu 2.5.0 or apply patch
https://github.com/apache/shenyu/pull/3658.

Credit:

Apache ShenYu would like to thank Lulu Gu for reporting this issue.

--

Zhang Yonglun
Apache ShenYu
Apache ShardingSphere
