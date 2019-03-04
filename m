X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["894" "Monday" "4" "March" "2019" "14:34:34" "+0100" "Alex R" "alexr@apache.org" "<CAPNiXbF1ZYsMjNeoHLqd5wS2Rr9F-5xmAeMYq0wMYrY2=QdkeA@mail.gmail.com>" "32" "[oss-security] CVE-2018-11793: Mesos components might crash when parsing deeply nested JSON structures." "^Date:" nil nil "3" "2019030413:34:34" "[oss-security] CVE-2018-11793: Mesos components might crash when parsing deeply nested JSON structures." (number mark "U       alexr@apache Mar  4   32/894   " thread-indent "\"[oss-security] CVE-2018-11793: Mesos components might crash when parsing deeply nested JSON structures.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27772 invoked by uid 550); 4 Mar 2019 13:46:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17675 invoked from network); 4 Mar 2019 13:34:59 -0000
X-Gm-Message-State: APjAAAUBBDdCxJp2yvknHSFtfeU3f/HULdWK+fcly6m27Mc3DWONKAM4
	IE1EuN0uuZW+HS8GXrmp79Fskkg7aab5LTSA1E4=
X-Google-Smtp-Source: APXvYqwIHAAyI+VIfIwwUz01V1K0JUfMADbGURia6BxMwgMfYbY18Nqz9mIuYUx5VXsq+K/bt5dOHw1ycxQvr3UcMpE=
X-Received: by 2002:a05:6102:d2:: with SMTP id u18mr9537987vsp.172.1551706485421;
 Mon, 04 Mar 2019 05:34:45 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAPNiXbF1ZYsMjNeoHLqd5wS2Rr9F-5xmAeMYq0wMYrY2=QdkeA@mail.gmail.com>
Message-ID: <CAPNiXbF1ZYsMjNeoHLqd5wS2Rr9F-5xmAeMYq0wMYrY2=QdkeA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000dbfb0c058344d159"
Date: Mon, 4 Mar 2019 14:34:34 +0100
From: Alex R <alexr@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-11793: Mesos components might crash when parsing deeply
 nested JSON structures.
To: dev <dev@mesos.apache.org>, user <user@mesos.apache.org>, 
	security <security@apache.org>, oss-security@lists.openwall.com, 
	Terry Chia <terrycwk1994@gmail.com>

--000000000000dbfb0c058344d159
Content-Type: text/plain; charset="UTF-8"

Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Mesos 1.4.0 to 1.7.0
The unsupported Apache Mesos pre-1.4.0 releases may be also affected.

Description:
When parsing a JSON payload with deeply nested JSON structures, the
parser might overflow the stack due to unbounded recursion. A
malicious actor can therefore cause a denial of service of Mesos
masters rendering the Mesos-controlled cluster inoperable.

Mitigation:
pre-1.4.x users should upgrade to at least 1.4.3
1.4.x users should upgrade to 1.4.3
1.5.x users should upgrade to 1.5.2
1.6.x users should upgrade to 1.6.2
1.7.0 users should upgrade to 1.7.1
1.8-dev users should obtain Mesos 1.8.0 or later

Credit:
This issue was discovered by Terry Chia (Ayrx).

Alex on behalf of Mesos PMC

--000000000000dbfb0c058344d159--
