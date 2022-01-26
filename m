X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["667" "Wednesday" "26" "January" "2022" "14:29:17" "+0800" "Zhang Yonglun" "zhangyonglun@apache.org" nil "23" "[oss-security] CVE-2022-23944: Apache ShenYu (incubating) Improper access control" nil nil nil "1" nil nil (number mark "U       zhangyonglun Jan 26   23/667   " thread-indent "\"[oss-security] CVE-2022-23944: Apache ShenYu (incubating) Improper access control\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23944: Apache ShenYu (incubating) Improper access control" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28227 invoked by uid 550); 26 Jan 2022 11:14:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13556 invoked from network); 26 Jan 2022 06:29:43 -0000
X-Gm-Message-State: AOAM532ylOxlSZz0bvzXztrsR7zikqJwwxkGhHrMEdfYfvad1MmzKtcL
	tZdOfHxul0kwwpS7odObwNNyeVBXhl/5PBOQFfs=
X-Google-Smtp-Source: ABdhPJy8rKEUfhCPeGzBojVmnAo3xILq+qDj7FY9XNrFD01CFtdF3rKokFiLhKLjjhuDreJ0+e8Tx6NTdqZ4yJMkckU=
X-Received: by 2002:ac5:c890:: with SMTP id n16mr1948563vkl.26.1643178567875;
 Tue, 25 Jan 2022 22:29:27 -0800 (PST)
MIME-Version: 1.0
From: Zhang Yonglun <zhangyonglun@apache.org>
Date: Wed, 26 Jan 2022 14:29:17 +0800
X-Gmail-Original-Message-ID: <CA+ZBtZ66qeLCWBy0DBUoRngMfP+dWdW6aRrGE6AO9nD51=opZg@mail.gmail.com>
Message-ID: <CA+ZBtZ66qeLCWBy0DBUoRngMfP+dWdW6aRrGE6AO9nD51=opZg@mail.gmail.com>
To: oss-security@lists.openwall.com, dev@shenyu.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-23944: Apache ShenYu (incubating) Improper access control

Severity: moderate

Description:

Any user can access /plugin API without authentication. The project
use Shiro to authenticate, but the default WhiteLists are defineded in
application include /plugin path.
So everybody can access /plugin API which will list the details of all
 plugins include id, name, config (may include password). We can also
add a new plugin with  POST method while using /plugin API.
This issue affects Apache ShenYu (incubating) 2.4.0 and 2.4.1.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.2 or apply patch
https://github.com/apache/incubator-shenyu/pull/2462.


--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
