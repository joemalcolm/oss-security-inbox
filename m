X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["727" "Monday" "12" "April" "2021" "16:09:58" "-0500" "Mike Drob" "mdrob@apache.org" nil "25" "[oss-security] CVE-2021-29262: Apache Solr: Misapplied Zookeeper ACLs can result in leakage of configured authentication and authorization settings" nil nil nil "4" nil nil (number mark "U       mdrob@apache Apr 12   25/727   " thread-indent "\"[oss-security] CVE-2021-29262: Apache Solr: Misapplied Zookeeper ACLs can result in leakage of configured authentication and authorization settings\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-29262: Apache Solr: Misapplied Zookeeper ACLs can result in leakage of configured authentication and authorization settings" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5636 invoked by uid 550); 12 Apr 2021 21:55:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19505 invoked from network); 12 Apr 2021 21:10:21 -0000
X-Gm-Message-State: AOAM530AllYfjecAxrJBCf/v0yfDh96Y6boxmqlecYtKLUShOk+Q29h+
	IFGqYWy9sREo0mvHURqi7xYJ+hWhUA0x8liQEt0TdA==
X-Google-Smtp-Source: ABdhPJzPLIQwxGZTydTl5W96jqtCwQnSeaS2tYxOHXSk+fXddVUC4rzLjTeA4TwCsFzulyIhjihrB1Ux/VKS+1rP+mM=
X-Received: by 2002:a17:90a:e7cc:: with SMTP id kb12mr1143217pjb.31.1618261809074;
 Mon, 12 Apr 2021 14:10:09 -0700 (PDT)
MIME-Version: 1.0
From: Mike Drob <mdrob@apache.org>
Date: Mon, 12 Apr 2021 16:09:58 -0500
X-Gmail-Original-Message-ID: <CAJRvFdpVe6LQf3TDoPyhhQBeMTLQe+kRdyMH+Ge5kJ8L5NYcog@mail.gmail.com>
Message-ID: <CAJRvFdpVe6LQf3TDoPyhhQBeMTLQe+kRdyMH+Ge5kJ8L5NYcog@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000048ac2605bfccf09b"
Subject: [oss-security] CVE-2021-29262: Apache Solr: Misapplied Zookeeper ACLs can result in
 leakage of configured authentication and authorization settings

--00000000000048ac2605bfccf09b
Content-Type: text/plain; charset="UTF-8"

Description:

When starting Apache Solr versions prior to 8.8.2, configured with the
SaslZkACLProvider or VMParamsAllAndReadonlyDigestZkACLProvider and no
existing security.json znode, if the optional read-only user is
configured then Solr would not treat that node as a sensitive path and
would allow it to be readable.

Additionally, with any ZkACLProvider, if the security.json is already
present, Solr will not automatically update the ACLs.

This issue is being tracked as SOLR-15249

Mitigation:

Manually set appropriate ACLs on /security.json znode.

Credit:

Timothy Potter and Mike Drob, Apple Cloud Services

--00000000000048ac2605bfccf09b--
