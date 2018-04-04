X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["950" "Wednesday" "4" "April" "2018" "14:58:43" "-0700" "Daniel Dai" "daijy@apache.org" "<CABDpyChQXi-JSh=bytOLsdq7o+eSst6hU_s8RN4jQoPzLR2vLQ@mail.gmail.com>" "24" "[oss-security] [SECURITY] CVE-2018-1315 'COPY FROM FTP' statement in HPL/SQL can write to arbitrary location if the FTP server is compromised" nil nil nil "4" "2018040421:58:43" "[oss-security] [SECURITY] CVE-2018-1315 'COPY FROM FTP' statement in HPL/SQL can write to arbitrary location if the FTP server is compromised" (number mark "U       daijy@apache Apr  4   24/950   " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1315 'COPY FROM FTP' statement in HPL/SQL can write to arbitrary location if the FTP server is compromised\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28601 invoked by uid 550); 4 Apr 2018 23:50:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17591 invoked from network); 4 Apr 2018 21:59:01 -0000
X-Gm-Message-State: ALQs6tAwqvc2yzSXm4YDaoBTVrKNRHTKQGcE9GvCzNFkw4ZkLyN+7o1N
	xh9W5DkwK9xPKaLAcOIVlnnrKF1IcMozg5KV4RI=
X-Google-Smtp-Source: AIpwx4+xFnht58lOzxipq7kDuiFF8CK+wNJsORCo1YG18foPCUi3/htcEwuCxPlH5BicERHJrLV33RNs6HKYcxWa9Ng=
X-Received: by 10.107.101.21 with SMTP id z21mr17326419iob.3.1522879123722;
 Wed, 04 Apr 2018 14:58:43 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Dai <daijy@apache.org>
Date: Wed, 4 Apr 2018 14:58:43 -0700
X-Gmail-Original-Message-ID: <CABDpyChQXi-JSh=bytOLsdq7o+eSst6hU_s8RN4jQoPzLR2vLQ@mail.gmail.com>
Message-ID: <CABDpyChQXi-JSh=bytOLsdq7o+eSst6hU_s8RN4jQoPzLR2vLQ@mail.gmail.com>
To: user@hive.apache.org, dev@hive.apache.org, announce@apache.org, 
	security <security@hive.apache.org>, oss-security@lists.openwall.com, 
	Danny Grander <danny@snyk.io>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [SECURITY] CVE-2018-1315 'COPY FROM FTP' statement in HPL/SQL can
 write to arbitrary location if the FTP server is compromised

CVE-2018-1315: 'COPY FROM FTP' statement in HPL/SQL can write to
arbitrary location if the FTP server is compromised

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: Hive 2.1.0 to 2.3.2

Description: When 'COPY FROM FTP' statement is run using HPL/SQL extension to
Hive, a compromised/malicious FTP server can cause the file to be
written to an arbitrary location on the cluster where the command is
run from. This is because FTP client code in HPL/SQL does not verify
the destination
location of the downloaded file. This does not affect hive
cli user and hiveserver2 user as hplsql is a separate command line
script and needs to be invoked differently.

Mitigation: User who use HPL/SQL with Hive 2.1.0 through 2.3.2 should upgrade to
2.3.3 which removes support for "COPY FROM FTP". Alternatively, the
usage of HPL/SQL can be disabled through
other means.

Credit: This issue was discovered by Danny Grander of Snyk
