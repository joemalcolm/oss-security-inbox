X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1070" "Friday" "21" "December" "2018" "22:47:06" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20181221214706.GA21869@eldamar.local>" "25" "[oss-security] sqlite: CVE-2018-20346: integer overflow (resulting in buffer overflow) for FTS3 queries" nil nil nil "12" "2018122121:47:06" "[oss-security] sqlite: CVE-2018-20346: integer overflow (resulting in buffer overflow) for FTS3 queries" (number mark "U       carnil@debia Dec 21   25/1070  " thread-indent "\"[oss-security] sqlite: CVE-2018-20346: integer overflow (resulting in buffer overflow) for FTS3 queries\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13804 invoked by uid 550); 21 Dec 2018 21:47:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13575 invoked from network); 21 Dec 2018 21:47:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wElno4NghIizOWbVkd2ESsqZKIwyvzMiQ67jL7RrkaY=;
        b=tGvIM+uSGniekH3SVlundhgTPgkCGO748MIhVGllrvsDvCHHG2DpjR8zRvJcVwZLd/
         OwxZlfqFsB9YurFW+diiyq3N5dIwZ5jPQ4XMhYvtM4bD5w1VhwPcZi4pZlxlP/YVDQHK
         R5yQjAzwudqu0r8xS+WMzVof+SmtY6kE63LnZWoOejQgUAHARnuRiWobCDH42sesWwsb
         LRCivFuIp2yRvNyyNIH1lXxbU+vnqKEpAu7S8hKRULaIM/6hUpulPPl2f83sA8S+vPJT
         SSPaUXWjplVbWNP74JPT4bwHhOCzF8TLJq0eQS4T4PZBWp57j0s+yZg3qA5ljJdVUbJ0
         5Aqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=wElno4NghIizOWbVkd2ESsqZKIwyvzMiQ67jL7RrkaY=;
        b=Z/cTu7gn2vbHZ/JiRv0vyou34/U2nMoAkO4Hy4D123qcteHCngHbt/VScUij+sDN2L
         yHkV4YCjxl40WTc0WCpJUYqMW6tm4D9HTDDtfFZdAqQJ1+T1VXKCoLmIGA8f9yYyIaBk
         9TUfo5VVwke19Q/WyxeV1eZowtOs6rrXPcIyDalobFv7iC3FqZgFAeXy73Gok8SfF3G5
         HsQQmP//+yB6FBnCUKuuPe4uXkF58hfrFUpk6LCHxX0YDdQPzmKAjkFarqeNYl/q082Z
         5v2IG7BpETpETjOphzgwbT5dQz2pjsb7WEDdFArl5GYRszWmb9XYPOqn/RX+1foKQJRi
         7Sdw==
X-Gm-Message-State: AA+aEWZtkz9j+npMUmnOzIvied56LwrJ7Sfz9lviTSTopdG6X0ujtJR8
	a0B5qxwDGKaUZlMZSPzjZBSsqu/vVAo=
X-Google-Smtp-Source: AFSGD/UK6/fd4uQsDiyyqPSpDddYpqUyLg2oLyTG6Scqbdb0Q/5tNPMm5J5D4O/OySN58gJWbvUEMQ==
X-Received: by 2002:a50:a3d1:: with SMTP id t17mr3641180edb.238.1545428831468;
        Fri, 21 Dec 2018 13:47:11 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 21 Dec 2018 22:47:06 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20181221214706.GA21869@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] sqlite: CVE-2018-20346: integer overflow (resulting in buffer
 overflow) for FTS3 queries

Hi

MITRE has assigned CVE-2018-20346 for the "Magellan" called vulnerabilities.
The description in the CVE database reads as:

> SQLite before 3.25.3, when the FTS3 extension is enabled, encounters
> an integer overflow (and resultant buffer overflow) for FTS3 queries
> that occur after crafted changes to FTS3 shadow tables, allowing
> remote attackers to execute arbitrary code by leveraging the ability
> to run arbitrary SQL statements (such as in certain WebSQL use cases),
> aka Magellan.

below some references for the issue:

https://bugzilla.redhat.com/show_bug.cgi?id=1659379
https://bugzilla.redhat.com/show_bug.cgi?id=1659677
https://www.mail-archive.com/sqlite-users@mailinglists.sqlite.org/msg113218.html
https://blade.tencent.com/magellan/index_en.html
https://chromereleases.googleblog.com/2018/12/stable-channel-update-for-desktop.html
https://crbug.com/900910
https://chromium.googlesource.com/chromium/src/+/c368e30ae55600a1c3c9cb1710a54f9c55de786e
https://www.sqlite.org/releaselog/3_25_3.html
https://access.redhat.com/articles/3758321

Salvatore
