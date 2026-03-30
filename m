Received: (qmail 9801 invoked by uid 550); 30 Mar 2026 18:19:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30541 invoked from network); 30 Mar 2026 17:41:18 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1774892468; cv=none;
        d=google.com; s=arc-20240605;
        b=ljD6peZ7SNiEHWrwPy9NXzRv3ls4TtEXbY6sieCa3q+4QpupGS6Bv1aH6kbTIVpT2/
         mtti3OkePkj8+dqTuN01wjfS/cncfiBfq8Wo+mg5UiPf3WJIiULZnXkygPE9V5WyxIZ7
         aZDcJlMsC+Nx+v94e9AcP5C6OjZE7n/+0wmzT/cbwQ0aliELa8WTcpY3WtWanK9jrch/
         wRpmL9Igpzf6RPNE+kWbSn6VB1b5QvO6E5Rf+9JOSs3WAGFwD8kvMOAfQGYiKkpw1Slt
         REsQn0qfeWayNlQcKMobDhlvNCmrwtzQuNi6YI76UCaXFQopT6JDqBDKszUHS/CfC5l8
         CieQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=1Cn4fiU2KSuuWg2njR7oZH/BJoTswLTxdeSczc+m42s=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=d5U7Fn3fttXvIgGGVOAXKYOtJVB+BqmB3/ffXP9Dlexn95dS6+5mj/PgC2qPGBrB+0
         Wzl6C+jowvuXmRtCV6ZPgqLBSJeUxhAmzUg3u5y+19h3JiHMMbFviKiL7PkS+jE6wOtr
         V0Im7yJfUEDC+82ApnGH0Mj7Iax/QmVp2Q8kwxu9TYj9RspOiCl6J2IFuC7Q0elvgrSC
         7ubeYlGZxA9bNOTxBcQFEwfVYOg6F2k8gjNjOuDoDOyAPayBFWlOGurWkeBAvZLkr4yl
         aIUkNSLMzkE3k+AZaAy5+9imXFaWPFD2LITodys0BV7n9oInmZ+4iMiUadi/GO6IKgp7
         5l2Q==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774892468; x=1775497268; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1Cn4fiU2KSuuWg2njR7oZH/BJoTswLTxdeSczc+m42s=;
        b=XuNfWnFY+lE61EyUQmA0zcCarmBggKopGf69mPcLgS0PQQ1reZLIZnsTqPnaYvv3q/
         IpMF7FSkYv4ckAzEngXNa6yY36eaV6DJJHKapoqEsOxylD/i+5EIbogRF3bNLmyWj0rE
         jkhQ/LNGB0ub2vOeRtAUxnnfZ7AIX3qSPBfBToglP/1qrM67IO9V+1Wn/EjQXdoUJNPQ
         EiaBvFj/z9//EMmEM2Ize/vs6HtEJbnwDEQgseLivsieKsTkOLnKqrZTJDTwc9Bjzbl+
         dvUnM3h3nET1v74LMQnJeGSWto4+0bx/ssKYtHWHrHC4sfnAvHwEp8fSUR3ZeMcaZ5eE
         BBhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774892468; x=1775497268;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Cn4fiU2KSuuWg2njR7oZH/BJoTswLTxdeSczc+m42s=;
        b=BQyWHQyVc00D7q2d8qmscV/RJSyGnFM6cMQJKKyVcLKtlzZLQBUC68/MZi3PR8ML9u
         +Vi/gqQV2jzNKd2aD8Kvu7vVRHpG/bZKQbHiQkCFZtLiehXaJYHhvBGZSdU8NhCsFCGn
         sNxSYJoiUNZ1gWSqL78bdbgIZWQQfuslBbp29X4KHaQOprB3nDxHSdy8cdTzkbRypwuI
         5spFi/yI69nBbc3HW2MgWKLh8W9VilDPmryODKbcUMyHVyD/Vmg4R9gQ/osmColb5K2I
         Jr3Xp39Jm+6biDBsfhF5sz/SlDoota8T1aKbStvUS79TQJImVgqLxQz2nt9rpD7U9Vt1
         9HAA==
X-Gm-Message-State: AOJu0YzSxfpEZQEvVNQpYzOn9at3EW55cIBW7kGlFNP4fPYCHvoW1ds+
	CUjsklkOd62C7tgja3GWdVRw2GUL+FMipYZDzmDZb8yHMmvVTbjkZs+sz6wFe8DQXUBMjOwlemW
	nTyF7hg+mB59uAzf1jmRla7k8dEDlX6/32PvP+Us=
X-Gm-Gg: ATEYQzwRvhDdUBhAHQ+X+XgrpoKpKDfrj5Mheh70Ud4+PYrNR6rBfB7jdbngqkvG+IV
	Gjgk8npewkT59TdRAiQpUxg+GQTjV41MSRs4dbER4NzJOZpYAnQvXoQ7Tsmek0QVyiMTXYapePQ
	hQ2oJfC6eLLMTUU+eyTbkylZ7QN1rVHpvQqP36Hsg0F6HhzVnRuK4sxYoqPk4Bu5DlTc9XS1Q7t
	sa2p0soA0k0lLT0J3JXefe+gfvbS2Pn9DMBfrc8UH38o0s77Iwi5xOLWUSVMV3I0xLpoeyOO0sV
	GShk4g==
X-Received: by 2002:a05:6808:6b8b:b0:467:f6db:d8ac with SMTP id
 5614622812f47-46a8a4367abmr5668240b6e.17.1774892468071; Mon, 30 Mar 2026
 10:41:08 -0700 (PDT)
MIME-Version: 1.0
From: Siddhesh Poyarekar <siddhesh.poyarekar@gmail.com>
Date: Mon, 30 Mar 2026 13:40:57 -0400
X-Gm-Features: AQROBzCMNG4ws9MHGwbXebrpA7U0fOwBDpPToDD1lmaqcAMpi0maRey6Bl5lRr0
Message-ID: <CAAHN_R2MsZMzhGEx=fNbjh6mqXf8_zpuHwXp-0+KOuWytUgD4Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] The GNU C Library security advisory update for 2026-03-30

Hello,

The following security advisory has been published:

GLIBC-SA-2026-0007:
===================

iconv crash due to assertion failure with untrusted input

The iconv() function in the GNU C Library versions 2.43 and earlier may
crash due to an assertion failure when converting inputs from the
IBM1390 or IBM1399 character sets, which may be used to remotely crash
an application.

This vulnerability can be trivially mitigated by removing the IBM1390
and IBM1399 character sets from systems that do not need them.


Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD
