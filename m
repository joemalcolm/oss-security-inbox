X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["542" "Tuesday" "10" "July" "2018" "10:31:48" "-0500" "Bobby Evans" "bobby@apache.org" "<CAJ_hc2PY9TbWc6Ai0Hjjy1RW8foRapext65ypY0qmtsRu5zZqg@mail.gmail.com>" "15" "[oss-security] CVE-2018-1331: Apache Storm remote code execution vulnerability" "^Cc:" nil nil "7" "2018071015:31:48" "[oss-security] CVE-2018-1331: Apache Storm remote code execution vulnerability" (number mark "U       bobby@apache Jul 10   15/542   " thread-indent "\"[oss-security] CVE-2018-1331: Apache Storm remote code execution vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10089 invoked by uid 550); 10 Jul 2018 15:34:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8091 invoked from network); 10 Jul 2018 15:32:13 -0000
X-Gm-Message-State: APt69E1olRLb6PY5OwpYsK/xoAkp6oS8+emKTChZtJBbG/jdDsG6rPxT
	46BdM+9izmGyQ/0wkom5/0BW6Xo7BN8at6gHWvAM8w==
X-Google-Smtp-Source: AAOMgpecqZetHB4fTjhNWyJG0j3JWy3GiQ35lrlp6lfuk/o/9vJqaPreqJxcyF0kFD+em7AUgBkBo/i7DUm0V5PT200=
X-Received: by 2002:a5e:9910:: with SMTP id t16-v6mr22069783ioj.113.1531236719121;
 Tue, 10 Jul 2018 08:31:59 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAJ_hc2PY9TbWc6Ai0Hjjy1RW8foRapext65ypY0qmtsRu5zZqg@mail.gmail.com>
Message-ID: <CAJ_hc2PY9TbWc6Ai0Hjjy1RW8foRapext65ypY0qmtsRu5zZqg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b5fcf00570a6d48f"
Cc: Apache Security Team <security@apache.org>, 
	"private@storm.apache.org" <private@storm.apache.org>
Date: Tue, 10 Jul 2018 10:31:48 -0500
From: Bobby Evans <bobby@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-1331: Apache Storm remote code execution vulnerability
To: oss-security@lists.openwall.com

--000000000000b5fcf00570a6d48f
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2018-1331
[PRODUCT]:Apache Storm
[VERSION]:Apache Storm 0.10.0 through 0.10.2, 1.0.0 through 1.0.6, 1.1.0
through 1.1.2, 1.2.0 through 1.2.1
[PROBLEMTYPE]:Remote Code Execution
[REFERENCES]: http://storm.apache.org/2018/06/04/storm122-released.html
http://storm.apache.org/2018/06/04/storm113-released.html

An attacker with access to a secure storm cluster in some cases could
execute arbitrary code as a different user.

--000000000000b5fcf00570a6d48f--
