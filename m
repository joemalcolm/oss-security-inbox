X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1316" "Wednesday" "9" "August" "2017" "15:22:55" "-0400" "P. Taylor Goetz" "ptgoetz@apache.org" "<5C79EC72-2D96-4919-853D-27690491137C@apache.org>" "43" "[oss-security] [CVE-2017-9799] Apache Storm Possible Code Execution As A Different User " nil nil nil "8" "2017080919:22:55" "[oss-security] [CVE-2017-9799] Apache Storm Possible Code Execution As A Different User" (number mark "U       ptgoetz@apac Aug  9   43/1316  " thread-indent "\"[oss-security] [CVE-2017-9799] Apache Storm Possible Code Execution As A Different User \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10046 invoked by uid 550); 9 Aug 2017 19:30:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5907 invoked from network); 9 Aug 2017 19:23:09 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:cc:to;
        bh=2sf4FG0IKNwkXJdDf1l+UlvvPqoTWAjztw2SCFmoUgk=;
        b=X3B5e+lieP3jXc7TfGzQnYKY08+68nhXqwVU4VaukW/IAFSLk7MjrtbkgbcDp8/8lX
         mrfRg1ti/Aw7NugWFPW6y1IN+xS4lPvUoZ/gV4e1eoLPHTYDU6UV0Um4HD65BTZeGs9Z
         WGan1i+asyCRP5GxbC1uiRx0A9ldhiELeQxJH598xtw3xgzrg0rZBJ1k3adpfkczJRs4
         kMK+a95rn1iXmBQWrsRlBpTqa24MPWCvfKk+/cRgu8WwtcT6nNiM9rgbSw81Ovt3ALCt
         Js2ue6omRzNQgzqqlpZuAmn+1ehbZm9aIql5oRRjUR8hQCwevAHBx/NkwAmYdstOBDsD
         Lywg==
X-Gm-Message-State: AHYfb5iOI9xS/5SBNov+4/vVSSX25vJe+UTb9CRtiEvs28IX8MDER2Of
	1WLmBbPtQ0Dcwg==
X-Received: by 10.55.175.67 with SMTP id y64mr4427632qke.130.1502306577591;
        Wed, 09 Aug 2017 12:22:57 -0700 (PDT)
From: "P. Taylor Goetz" <ptgoetz@apache.org>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_EF4C79C9-BF85-40C2-A039-C7C3FA3C84BC"
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <5C79EC72-2D96-4919-853D-27690491137C@apache.org>
Date: Wed, 9 Aug 2017 15:22:55 -0400
Cc: security@apache.org,
 oss-security@lists.openwall.com,
 bugtraq@securityfocus.com
To: user@storm.apache.org,
 dev@storm.apache.org
X-Mailer: Apple Mail (2.3273)
Subject: [oss-security] [CVE-2017-9799] Apache Storm Possible Code Execution As A Different
 User 

--Apple-Mail=_EF4C79C9-BF85-40C2-A039-C7C3FA3C84BC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
Apache Storm 1.0.0, 1.0.1, 1.0.2, 1.0.3
Apache Storm 1.1.0

Description:
It was found that under some situations and configurations of storm it is t=
heoretically possible for the owner of a topology to trick the supervisor t=
o launch a worker as a different, non-root, user. In the worst case this co=
uld lead to secure credentials of the other user being compromised.  This v=
ulnerability only applies to Apache Storm installations with security compo=
nents enabled.

Mitigation:
Users of the affected versions should apply one of the following mitigation=
s:

- Upgrade to Apache Storm 1.0.4 or later
- Upgrade to Apache Storm 1.1.1 or later

Apache Storm 1.1.1 and 1.0.4 can be downloaded here:

http://storm.apache.org/downloads.html

Credit:
This issue was identified by the Apche Storm PMC

References:
https://github.com/apache/storm/blob/v1.1.1/SECURITY.md <https://github.com=
/apache/storm/blob/v1.1.1/SECURITY.md>
https://github.com/apache/storm/blob/v1.0.4/SECURITY.md <https://github.com=
/apache/storm/blob/v1.0.4/SECURITY.md>


--Apple-Mail=_EF4C79C9-BF85-40C2-A039-C7C3FA3C84BC--
