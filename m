X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1192" "Friday" "1" "June" "2018" "10:16:50" "-0700" "Denis Magda" "dmagda@apache.org" "<CAK0qHnrDU3PVMWdeBEZjatHGjiB8SBbmk1UMuPEphvMuCHkbhA@mail.gmail.com>" "37" "[oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114" "^Date:" nil nil "6" "2018060117:16:50" "[oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114" (number mark "U       dmagda@apach Jun  1   37/1192  " thread-indent "\"[oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11987 invoked by uid 550); 1 Jun 2018 17:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8085 invoked from network); 1 Jun 2018 17:17:40 -0000
X-Gm-Message-State: ALKqPwfFQiMzWkpjl9HXJ4An8DcDhscqpHdLT19mNMLvY6Ki65j9/8pp
	HmP9ntFJC+GoZcmu/jROnkbPN7CMjSENsdBCedwJpg==
X-Google-Smtp-Source: ADUXVKK9ApZ4VJuxqa4RSy5Dd50Np6HGEWvyH+QsZAiCaEKtGCOW3rhDJU5IvGIrryF3C1R8XGUxF9IdTl75jPetybI=
X-Received: by 2002:a19:9dca:: with SMTP id g193-v6mr7686892lfe.65.1527873440538;
 Fri, 01 Jun 2018 10:17:20 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAK0qHnrDU3PVMWdeBEZjatHGjiB8SBbmk1UMuPEphvMuCHkbhA@mail.gmail.com>
Message-ID: <CAK0qHnrDU3PVMWdeBEZjatHGjiB8SBbmk1UMuPEphvMuCHkbhA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000af7da6056d97c10a"
Date: Fri, 1 Jun 2018 10:16:50 -0700
From: Denis Magda <dmagda@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114
To: announce@apache.org, dev <dev@ignite.apache.org>, user@ignite.apache.org, 
	oss-security@lists.openwall.com, "Rai, Harendra" <harendra.rai@ncr.com>

--000000000000af7da6056d97c10a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[CVE-2014-0114]: Apache Ignite is vulnerable to existing CVE-2014-0114

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Ignite 2.4 or earlier

Impact:
An attacker can execute arbitrary code on Ignite nodes in the case when
Ignite classpath contains arbitrary vulnerable classes.

Description:
Apache Ignite used commons-beanutils-1.8.3.jar library which did not
suppress the class property, which allowed remote attackers to "manipulate"
the ClassLoader and execute arbitrary code via the class parameter, as
demonstrated by the passing of this parameter to the getClass method of the
ActionForm object in Struts 1.

Mitigation:
=E2=80=A2    All Ignite versions: make sure there are no vulnerable classes=
 among
your custom code used in Apache Ignite.
=E2=80=A2    Upgrade to Apache Ignite 2.5 or later version

Credit:
Harendra Rai of NCR Corporation discovered the impact of the existing
vulnerability on Apache Ignite.

References:
* https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2014-0114

--000000000000af7da6056d97c10a--
