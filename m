X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["955" "Monday" "12" "April" "2021" "16:09:59" "-0500" "Mike Drob" "mdrob@apache.org" nil "29" "[oss-security] CVE-2021-27905: Apache Solr: SSRF vulnerability with the Replication handler" nil nil nil "4" nil nil (number mark "U       mdrob@apache Apr 12   29/955   " thread-indent "\"[oss-security] CVE-2021-27905: Apache Solr: SSRF vulnerability with the Replication handler\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-27905: Apache Solr: SSRF vulnerability with the Replication handler" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7885 invoked by uid 550); 12 Apr 2021 21:55:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19535 invoked from network); 12 Apr 2021 21:10:23 -0000
X-Gm-Message-State: AOAM530M7HkEXOKeSNC7Td9jYXADAKfi3z4GcsUW9iUvMk6coA6OqbD6
	sowfzrAryxRqf8kAI/wyTP6l48udVyoucg2o5HmQsg==
X-Google-Smtp-Source: ABdhPJy9tYpbRtO1K9wL3QzniqBqpAH7u0FPPMCeo8GDkYHrvHnsttW8ALfsHmoi1s8AHh9vpD7wxxwDltdTjjQSRYA=
X-Received: by 2002:a17:902:e851:b029:eb:1fd0:fa8e with SMTP id
 t17-20020a170902e851b02900eb1fd0fa8emr1881992plg.38.1618261810443; Mon, 12
 Apr 2021 14:10:10 -0700 (PDT)
MIME-Version: 1.0
From: Mike Drob <mdrob@apache.org>
Date: Mon, 12 Apr 2021 16:09:59 -0500
X-Gmail-Original-Message-ID: <CAJRvFdp+WMVa5n5DRT53Ov4h59doeLGOz11A89Oa4ou2k++t_Q@mail.gmail.com>
Message-ID: <CAJRvFdp+WMVa5n5DRT53Ov4h59doeLGOz11A89Oa4ou2k++t_Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005d93d605bfccf042"
Subject: [oss-security] CVE-2021-27905: Apache Solr: SSRF vulnerability with the Replication handler

--0000000000005d93d605bfccf042
Content-Type: text/plain; charset="UTF-8"

Description:

The ReplicationHandler (normally registered at "/replication" under a
Solr core) has a "masterUrl" (also "leaderUrl" alias) parameter that
is used to designate another ReplicationHandler on another Solr core
to replicate index data into the local core.  To prevent a SSRF
vulnerability, Solr ought to check these parameters against a similar
configuration it uses for the "shards" parameter.  Prior to this bug
getting fixed, it did not.

This problem affects essentially all Solr versions prior to it getting
fixed in 8.8.2.

This issue is being tracked as SOLR-15217

Mitigation:

Ensure that any access to the replication handler is purely internal
to Solr.  Typically, it's only accessed externally for
diagnostic/informational purposes.

Credit:

Reported by Caolinhong(Skay) from QI-ANXIN Cert (QI-ANXIN Technology Group Inc.)

--0000000000005d93d605bfccf042--
