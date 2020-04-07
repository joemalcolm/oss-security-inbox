X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1157" "Tuesday" "7" "April" "2020" "12:04:59" "+0530" "Hardik Vyas" "hvyas@redhat.com" nil "41" nil "^Date:" nil nil "4" nil nil (number mark "        hvyas@redhat Apr  7   41/1157  " thread-indent "\"[oss-security] CVE-2020-1759 ceph: secure mode of msgr2 breaks both confidentiality and integrity aspects for long-lived sessions\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1759 ceph: secure mode of msgr2 breaks both confidentiality and integrity aspects for long-lived sessions" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9571 invoked by uid 550); 7 Apr 2020 07:19:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19884 invoked from network); 7 Apr 2020 06:35:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586241315;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=p7p4LdbfnH8iWXxrkAHYu/Z5Hi4pLJ7lwTUoOzJ9OWE=;
	b=hN2UpmKwMlZMV2yjHf81Lh4iKsj+WWSgYEJkRS12vSyR7IMux1o6y6HzO4WuUIgK/qwQ23
	v1TArplK4KxRg3kcQqZ9UmtDLhjyoNfKCS4c5dbH7chjs7gMxgjizG+Wl18kwMsJZt0K0t
	iPxi7+4sbevh0NszgXqRzzFry8wOcEg=
X-MC-Unique: py__rdtTMbS4pQ-T2kpVlQ-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BvuSsaL+QTVlETnh7c2Ar8MW1uUN63kesYfaYi7yeBE=;
        b=jYXmY9mhpyN3oGJxVlx2Tl4DqXWt+/zKFj34rNIw34Cu2Affojz3xOkg8tYcyvs8BF
         wdgNqBI5kb4oiXXHNSN8tyo+iaUBIay/DeCW0AvTNEumO6GfLX2czG/d1aP0LupBXNHs
         QMLmtRtCXpct6oszL5tNCcCRjv0vBjCh4HUpeNkSrJIDusCs1Vtwn9lA6rd40I675HBG
         WtOkWZtmFCgAcV/9KpMY2GBh0cryBi9m/s5BE+Jc0Q2cVDW3UJBN8IPTxTG4J22u/Y0J
         pkK6pIU6pNaLKxYyWeu2xQ26PHB/PElOy1qTZ3Re49ptSEoR02yJ+w9YRXJp1Kn0FYG2
         e7sw==
X-Gm-Message-State: AGi0PuYz1X80MlHwtDQ+RuagPotcN3TE+DQFQFuUC7+G2Wt9lXlPCG15
	iIpHaX8Tw+QZ08qSWikJCN8hkh3NOYSegYboFlZKnKMF5LHLpTRxt0XWhzhlzXy8wgHcN0D0VF6
	u/z/cF/JcnOYQ42X+xKnYLWi4oDo42MQcQ3VEmxvSxiZd
X-Received: by 2002:a05:620a:c13:: with SMTP id l19mr699003qki.199.1586241310915;
        Mon, 06 Apr 2020 23:35:10 -0700 (PDT)
X-Google-Smtp-Source: APiQypIjaeQpNxGs86OCoEui4Nzvm49L/ZiVGA/HVzKDV9Kw2pi1jjCsp3zi3X6kINbJo1D2KItYtAXHko6ipfaPZ2Y=
X-Received: by 2002:a05:620a:c13:: with SMTP id l19mr698981qki.199.1586241310536;
 Mon, 06 Apr 2020 23:35:10 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAOo2v=CeSZ3h9ui1Fr=nfZqFOM1h7zdZQfhwFr58DAqzQQ=WhA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="000000000000d7caf305a2ad95c5"
Date: Tue, 7 Apr 2020 12:04:59 +0530
From: Hardik Vyas <hvyas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2020-1759 ceph: secure mode of msgr2 breaks both confidentiality
 and integrity aspects for long-lived sessions
To: oss-security@lists.openwall.com

--000000000000d7caf305a2ad95c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

A nonce reuse vulnerability was discovered in the secure mode of the
messenger v2 protocol, which can allow an
attacker to forge auth tags and potentially manipulate the data by
leveraging the reuse of a nonce in a session.
Messages encrypted using a reused nonce value are susceptible to serious
confidentiality and integrity attacks.

This flaw was introduced in commit fe387e02b11d ("msg/async, v2: drop
depedency on uint128_t. Clean up onwire
crypto.") and affects all the ceph versions from v14.1.1. Red Hat has
assigned CVE-2020-1759 for this issue.

Upstream Patches:

https://github.com/ceph/ceph-ci/commit/84d2e215969cde830b086d11544aeb366661=
4211
https://github.com/ceph/ceph-ci/commit/659ec7dc6e30fe961832f813da007f49e603=
a33d


Credit: Ilya Dryomov (Red Hat)


PS: The patches are currently available from ceph.git clone(ceph-ci) and
will be pushed to active releases soon.

Regards,
--=20

Hardik Vyas / Red Hat Product Security

BD48 C633 DE34 733A BBC3  3B72 8A14 AEBB D68B 9381

--000000000000d7caf305a2ad95c5--

