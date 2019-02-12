X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["691" "Tuesday" "12" "February" "2019" "11:48:27" "-0800" "Tomas Fernandez Lobbe" "tflobbe@apache.org" "<CAECwjAVRB1Nm6RRs4_L19OSs0576yp-d1hd=XTfxSxkaGKJfzw@mail.gmail.com>" "29" "[oss-security] CVE-2017-3164: Apache Solr: SSRF issue" "^Date:" nil nil "2" "2019021219:48:27" "[oss-security] CVE-2017-3164: Apache Solr: SSRF issue" (number mark "        tflobbe@apac Feb 12   29/691   " thread-indent "\"[oss-security] CVE-2017-3164: Apache Solr: SSRF issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9685 invoked by uid 550); 12 Feb 2019 19:52:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5860 invoked from network); 12 Feb 2019 19:48:53 -0000
X-Gm-Message-State: AHQUAuY+bR9JpcWK0Vqel45jkLAimYWRs2FAm5EplqIoxzrQUKiIaBAV
	KFdFERrn95ctbi86BLZ8mAfkvB/gHPZwZqIBHUg=
X-Google-Smtp-Source: AHgI3IYVC5QSeBXPoiUtP7d0YcffEniLHTO4hB1kcCTI2vG1+lpr54G83s/1wMm5RNOl8qe70mH/KD/4n9kuh1cekyE=
X-Received: by 2002:a17:902:690c:: with SMTP id j12mr5607721plk.206.1550000918735;
 Tue, 12 Feb 2019 11:48:38 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAECwjAVRB1Nm6RRs4_L19OSs0576yp-d1hd=XTfxSxkaGKJfzw@mail.gmail.com>
Message-ID: <CAECwjAVRB1Nm6RRs4_L19OSs0576yp-d1hd=XTfxSxkaGKJfzw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000029b0bc0581b7b6eb"
Date: Tue, 12 Feb 2019 11:48:27 -0800
From: Tomas Fernandez Lobbe <tflobbe@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-3164: Apache Solr: SSRF issue
To: oss-security@lists.openwall.com

--00000000000029b0bc0581b7b6eb
Content-Type: text/plain; charset="UTF-8"

CVE-2017-3164 SSRF issue in Apache Solr

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache Solr versions from 1.3 to 7.6.0

Description:
The "shards" parameter does not have a corresponding whitelist mechanism,
so it can request any URL.

Mitigation:
Upgrade to Apache Solr 7.7.0 or later.
Ensure your network settings are configured so that only trusted traffic is
allowed to ingress/egress your hosts running Solr.

Credit:
dk from Chaitin Tech

References:
https://issues.apache.org/jira/browse/SOLR-12770
https://wiki.apache.org/solr/SolrSecurity

--00000000000029b0bc0581b7b6eb--
