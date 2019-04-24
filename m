X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["915" "Wednesday" "24" "April" "2019" "17:04:55" "+1000" "Noble Paul" "noble@apache.org" "<CABVqxwCYodUFPHcR407OMiOSThCXyd3d+6xZz1ODGcyRTsznsQ@mail.gmail.com>" "21" "[oss-security] CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure" nil nil nil "4" "2019042407:04:55" "[oss-security] CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure" (number mark "U       noble@apache Apr 24   21/915   " thread-indent "\"[oss-security] CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19862 invoked by uid 550); 24 Apr 2019 10:04:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30497 invoked from network); 24 Apr 2019 07:05:19 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=M+7OGQFMNfUkaVxKiYifmg0xQ8tfCrFJx1cNggzGyhk=;
        b=Up4Nf6Ou44ZxdjPSDKSWc6qTvoBgr9sr9V7144+SFQZTeWbCFbE1qzpZYNcSmZMhyH
         Job4iFgvh43kTL/VruoieJuPSwqmmQlsr3h87yLhm9/hro6hcMv+xQmy30s6eTDT0AKN
         r546A/R9VRDIhtGXg6ISF877BOOP2BSUXRMT0Jz5fZicNN15URozIIPk9ikBz9RbAxv5
         0y9NNi0ViFuYjaUnjbOkbc5IuTVuGlSMocogtrSnLs6uGOXdcisBCzsLojUOavogagDM
         4Zlfh91f+bEAO+C2KU0j+j/Dh0IXKS/LhZKaaUK6oQ/Nuhmr5ZoTu4zyfVmEWPQPe2W8
         +5Mw==
X-Gm-Message-State: APjAAAWNFhU2t6J1yJ2DQuNOA6zZoE7fAzX6P5L9jxLF/D1jMfmMGUXE
	PqNd6PAJd0Lix6XZgmouXMy0yc8XP2eOji0ZfxI=
X-Google-Smtp-Source: APXvYqxQja8RC2HzVwiYj4RrPh6w1TUDSCujsbPX6cGLEclkFQAhQcoYc8FqknnjrLzpsJ8IUJlHt/FEhh0/q06PgWM=
X-Received: by 2002:a0c:d2f2:: with SMTP id x47mr24158081qvh.90.1556089507057;
 Wed, 24 Apr 2019 00:05:07 -0700 (PDT)
MIME-Version: 1.0
From: Noble Paul <noble@apache.org>
Date: Wed, 24 Apr 2019 17:04:55 +1000
Message-ID: <CABVqxwCYodUFPHcR407OMiOSThCXyd3d+6xZz1ODGcyRTsznsQ@mail.gmail.com>
To: Lucene Dev <dev@lucene.apache.org>, java-user@lucene.apache.org, security@apache.org, 
	oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2018-11802: Apache Solr authorization bug vulnerability disclosure

CVE-2018-11802: Apache Solr authorization bug disclosure
Severity: Important
Vendor: The Apache Software Foundation
Versions Affected: Apache Solr 7.6 or less

Description:
jira  ticket : https://issues.apache.org/jira/browse/SOLR-12514
In apache Solr the cluster can be partitioned into multiple
collections and only a subset of nodes actually host any given
collection. However, if a node receives a request for a collection it
does not host, it proxies the request to a relevant node and serves
the request. Solr bypasses all authorization settings for such
requests. This affects all Solr versions that uses the default
authorization mechanism of Solr (RuleBasedAuthorizationPlugin)

Mitigation:
A fix is provided in Solr 7.7 version and upwards. If you use Solr's
authorization mechanism, please upgrade to a version newer than Solr
7.7.

Credit: This issue was discovered by Mahesh Kumar Vasanthu Somashekar.
