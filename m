X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1118" "Wednesday" "6" "March" "2019" "22:41:37" "-0800" "Tomas Fernandez Lobbe" "tflobbe@apache.org" "<CAECwjAWWcYFtuxjHYXRkJ_w9Gz6__ObzTGOP+BGb6KiHFdgaBQ@mail.gmail.com>" "36" "[oss-security] CVE-2019-0192 Deserialization of untrusted data via jmx.serviceUrl in Apache Solr" "^Date:" nil nil "3" "2019030706:41:37" "[oss-security] CVE-2019-0192 Deserialization of untrusted data via jmx.serviceUrl in Apache Solr" (number mark "        tflobbe@apac Mar  6   36/1118  " thread-indent "\"[oss-security] CVE-2019-0192 Deserialization of untrusted data via jmx.serviceUrl in Apache Solr\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32172 invoked by uid 550); 7 Mar 2019 08:05:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13629 invoked from network); 7 Mar 2019 06:42:10 -0000
X-Gm-Message-State: APjAAAUYs1AfcHch41lMfM4ghpGf1x/8/4LYLVuxv1wHL9Y5RQg6Av/v
	bNL7f1UvkywiDNhwrBnJEVV4MoqIYR7QvxxuNho=
X-Google-Smtp-Source: APXvYqyMaItvGSLol+05KJRT1AtsKITU9dGkAXUVOdOSXgqDGH4cO/Q80+MGueGgBaXJYfcHa/1hjxhcjoA7myrIUi8=
X-Received: by 2002:a17:902:3124:: with SMTP id w33mr11032397plb.43.1551940908556;
 Wed, 06 Mar 2019 22:41:48 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAECwjAWWcYFtuxjHYXRkJ_w9Gz6__ObzTGOP+BGb6KiHFdgaBQ@mail.gmail.com>
Message-ID: <CAECwjAWWcYFtuxjHYXRkJ_w9Gz6__ObzTGOP+BGb6KiHFdgaBQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000009125df05837b66e3"
Date: Wed, 6 Mar 2019 22:41:37 -0800
From: Tomas Fernandez Lobbe <tflobbe@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-0192 Deserialization of untrusted data via jmx.serviceUrl in
 Apache Solr
To: oss-security@lists.openwall.com

--0000000000009125df05837b66e3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity: High

Vendor: The Apache Software Foundation

Versions Affected:
5.0.0 to 5.5.5
6.0.0 to 6.6.5

Description:
ConfigAPI allows to configure Solr's JMX server via an HTTP POST request.
By pointing it to a malicious RMI server, an attacker could take advantage
of Solr's unsafe deserialization to trigger remote code execution on the
Solr side.

Mitigation:
Any of the following are enough to prevent this vulnerability:
* Upgrade to Apache Solr 7.0 or later.
* Disable the ConfigAPI if not in use, by running Solr with the system
property =E2=80=9Cdisable.configEdit=3Dtrue=E2=80=9D
* If upgrading or disabling the Config API are not viable options, apply
patch in [1] and re-compile Solr.
* Ensure your network settings are configured so that only trusted traffic
is allowed to ingress/egress your hosts running Solr.

Credit:
Michael Stepankin

References:
[1] https://issues.apache.org/jira/browse/SOLR-13301
[2] https://wiki.apache.org/solr/SolrSecurity

--0000000000009125df05837b66e3--
