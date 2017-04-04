X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["752" "Tuesday" "4" "April" "2017" "07:31:52" "-0700" "Anthony Baker" "abaker@apache.org" "<CAEwge-E4y=EVfhwpfRwsbnBH_hBS3Q-BJS+1BX5omYGW4dnR1w@mail.gmail.com>" "27" "[oss-security] [CVE-2017-5649] Apache Geode information disclosure vulnerability" nil nil nil "4" "2017040414:31:52" "[oss-security] [CVE-2017-5649] Apache Geode information disclosure vulnerability" (number mark "U       abaker@apach Apr  4   27/752   " thread-indent "\"[oss-security] [CVE-2017-5649] Apache Geode information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31895 invoked by uid 550); 4 Apr 2017 14:44:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26000 invoked from network); 4 Apr 2017 14:32:07 -0000
X-Gm-Message-State: AFeK/H2B55lWCdTxXnNXV8pK7+grHNh2YdNrIW9GfgRusosDuZKBgBrTE42ITKrzRFJ79pkSFbXcuVl2HrxwzQ74
X-Received: by 10.159.33.166 with SMTP id 35mr10056755uac.147.1491316312886;
 Tue, 04 Apr 2017 07:31:52 -0700 (PDT)
MIME-Version: 1.0
From: Anthony Baker <abaker@apache.org>
Date: Tue, 4 Apr 2017 07:31:52 -0700
X-Gmail-Original-Message-ID: <CAEwge-E4y=EVfhwpfRwsbnBH_hBS3Q-BJS+1BX5omYGW4dnR1w@mail.gmail.com>
Message-ID: <CAEwge-E4y=EVfhwpfRwsbnBH_hBS3Q-BJS+1BX5omYGW4dnR1w@mail.gmail.com>
To: user@geode.apache.org, dev@geode.apache.org, announce@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [CVE-2017-5649] Apache Geode information disclosure vulnerability

CVE-2017-5649: Apache Geode information disclosure vulnerability

Severity:  Medium
Base score:  5.5 (CVSS:3.0/AV:N/AC:L/PR:H/UI:N/S:U/C:H/I:N/A:L)

Vendor:
The Apache Software Foundation

Versions Affected:
Geode 1.1.0

Description:
When a cluster has enabled security by setting the security-manager
property, a user should have DATA:READ permission to view data stored
in the cluster.  However, if an authenticated user has CLUSTER:READ
but not DATA:READ permission they can access the data
browser page in Pulse.  From there the user could execute an OQL query
that exposes data stored in the cluster.

Mitigation:
1.1.0 users should upgrade to 1.1.1

Credit:
This issue was discovered by Jinmei Liao.

References:
https://www.apache.org/security/
