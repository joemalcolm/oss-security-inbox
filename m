Received: (qmail 29898 invoked by uid 550); 27 Mar 2026 14:48:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3987 invoked from network); 27 Mar 2026 11:33:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1774611211;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=yEiwO02UT7B27tOSxjx1cs091iO4A9fw4Zt14YBZ7fY=;
	b=GJjjDKQMIB0GvLQz2Bzd3QcFy3quxIec90F6Rnlmquy8Wr6JmsWXhWCtbMP1HC386w/gI3
	OlexFZNlqsJfLhsFzEQzzuIBuJTezljijAMQj7SDsuM1optJTBEQCiMPvxv5Tvby8fV186
	GrB3N+iaPE4uFnheFw9ipi9GIYdx+EI=
X-MC-Unique: mm1OugnYMaCQxDH2Zz4JpQ-1
X-Mimecast-MFC-AGG-ID: mm1OugnYMaCQxDH2Zz4JpQ_1774611208
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774611207; x=1775216007;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yEiwO02UT7B27tOSxjx1cs091iO4A9fw4Zt14YBZ7fY=;
        b=sOzisDaCp8StGEDW0iNj8+GnvJdOnrpxYxblMoF/YgS/PT9BjLy5qxAMH51QLL+JH+
         I7rdyRjk//nPv/hbeSYSeD+godJFnO0ZqVNEYdNLmVVyWIwGaxtmXT1VXrx4PnJMqvHA
         NisgyYgx630F4oJP4EBHfOIOyU+pAHSdf7xDgrAzGzHGWhSqCxCdLdkf/q/0Oht++jot
         mTteavOvbWjrdWi3NBmA0aX9Pp2Y+kBQlr99DTA/15aAXsv9lyFp0aJZCVqZsO3wRNgU
         nOOnIu+KMVcpyKln7uQxH7oh/7U+IieGYJdwnM5+K5bjrgsP6F57L3cqK7lS+JQ/vo1h
         VGTw==
X-Gm-Message-State: AOJu0YxhxnHwlwMsMTE9SKxD4kBxT2iiBb/gAyOcgvrRvT0Dp8CTjpvE
	zzwYxZ0CNQ2Oky5BzzlhDQTIVlzOzkrwdK2GNOxXqC3+IEdKuS0od4VE1IQYZWfhNitm1z/1UC/
	uSRZStwM/D2T8aHTsQkexzxwsfY0BNC0pwHu/uleGPP+W1S/zSktvZkO8LjvVLUhEeIKj3ORIfm
	dRzhDz5RvbAjCOZnIjnxS95Oxa0WfMj/9B1cFqIwjPyH6ii58BRs1mV8s=
X-Gm-Gg: ATEYQzzpylq7CUgKUPGHuNG7SfxbvBC/QUeDIQMby3DBr/WuNJMGuaZmRfTPp2MCI02
	RL6XC8WxRjhoeYfPBbuqNX6virOLcdHBSuE5Qe6os3LVFlcd4twUYkitEU6F01v5FLy0fiRD/4s
	kMyNt1DR19zDXvT3CIWh4lvzB12Yk3wrdFn7BXGmMGMBKryvQ1Q1YRvoLoLEEgnB+JZcTGnjOor
	BkD3Q==
X-Received: by 2002:a05:690c:6e87:b0:79a:3e5b:d86e with SMTP id 00721157ae682-79bde06bee6mr17184797b3.49.1774611207435;
        Fri, 27 Mar 2026 04:33:27 -0700 (PDT)
X-Received: by 2002:a05:690c:6e87:b0:79a:3e5b:d86e with SMTP id
 00721157ae682-79bde06bee6mr17184557b3.49.1774611206924; Fri, 27 Mar 2026
 04:33:26 -0700 (PDT)
MIME-Version: 1.0
From: Ondrej Gajdusek <ogajduse@redhat.com>
Date: Fri, 27 Mar 2026 12:33:16 +0100
X-Gm-Features: AQROBzBtIPDbCNhJ8Q64O3SztxGoiNNBUYT53r_pvL3EZMsS-23mqepJpwUjaqA
Message-ID: <CAK4yqw5WmSY=YDLj3CLmvh+mxtQ7g_YNThLKPhA44R3BEG1Pnw@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _iGIfvu_MKMZiFceK0EiYyzvO-4owiniBEnILoJdfLo_1774611208
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000009accba064dffde68"
Subject: [oss-security] CVE-2026-1961: Foreman: Remote Code Execution via command injection
 in WebSocket proxy

--0000000000009accba064dffde68
Content-Type: text/plain; charset="UTF-8"

Hi,

A security vulnerability has been fixed in Foreman, an open-source
infrastructure lifecycle management tool.

CVE-2026-1961: Remote Code Execution via command injection in WebSocket
proxy

A command injection vulnerability was discovered in Foreman's WebSocket
proxy implementation. The vulnerability occurs when constructing shell
commands using unsanitized hostname values from compute resource providers
(such as VMware vSphere, Libvirt, etc.). An attacker operating a malicious
compute resource server can achieve remote code execution on the Foreman
server when an administrator accesses VM console functionality through the
normal workflow.

Affected versions: Foreman up to and including 3.18.0

CVSS v3.1 Score: 8.0 (High)
Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I:H/A:H

Fixed in: Foreman 3.18.1, Foreman 3.17.2, Foreman 3.16.3

Credit: Houssam Sahli

References:
- Foreman security page: https://theforeman.org/security.html#2026-1961
- Redmine issue: https://projects.theforeman.org/issues/39121
- GitHub PR: https://github.com/theforeman/foreman/pull/10921

Thanks,
Ondrej Gajdusek
Foreman Project

--0000000000009accba064dffde68--

