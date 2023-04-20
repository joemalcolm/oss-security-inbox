Received: (qmail 25749 invoked by uid 550); 20 Apr 2023 17:55:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1369 invoked from network); 20 Apr 2023 16:05:41 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AAQBX9c+ImMCAFrZuWJ+Y+e2ZCTtPduxmw71w80vRf2rA7ZtmDrBvGUG
	S+7KUbrUG1zKqRBPrlL5o5Nu+a2Pk6g7pPouzeM=
X-Google-Smtp-Source: AKy350amzahK7gTUWO8CrpNkk5+eL9taU8I37o2DhAiTCIXD1GWnw0JKwumuoohXIUYZBlYDuXlJV9IWiPl+OGhRhog=
X-Received: by 2002:aa7:c74e:0:b0:502:1cae:8b11 with SMTP id
 c14-20020aa7c74e000000b005021cae8b11mr2424267eds.23.1682006726101; Thu, 20
 Apr 2023 09:05:26 -0700 (PDT)
MIME-Version: 1.0
From: Huajie Wang <benjobs@apache.org>
Date: Fri, 21 Apr 2023 00:05:14 +0800
X-Gmail-Original-Message-ID: <CAKYehMbX4+vq2adrfE0wpK0uGoORMOeewXB2F=8h1EWzp14h-A@mail.gmail.com>
Message-ID: <CAKYehMbX4+vq2adrfE0wpK0uGoORMOeewXB2F=8h1EWzp14h-A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev <dev@streampark.apache.org>
Content-Type: multipart/alternative; boundary="0000000000006b537005f9c6b575"
Subject: [oss-security] CVE-2022-45801: Apache StreamPark (incubating): LDAP Injection Vulnerability

--0000000000006b537005f9c6b575
Content-Type: text/plain; charset="UTF-8"

Apache StreamPark (incubating): LDAP Injection Vulnerability


Severity: Moderate

Versions Affected:

Apache StreamPark 1.0.0 before 2.0.0


Description:

Apache StreamPark 1.0.0 to 2.0.0 have a LDAP injection vulnerability.
LDAP Injection is an attack used to exploit web based applications
that construct LDAP statements based on user input. When an
application fails to properly sanitize user input, it's possible to
modify LDAP statements through techniques similar to SQL Injection.
LDAP injection attacks could result in the granting of permissions to
unauthorized queries, and content modification inside the LDAP tree.
This risk may only occur when the user logs in with ldap, and the user
name and password login will not be affected, Users of the affected
versions should upgrade to Apache StreamPark 2.0.0 or later


Mitigation:

Users of the affected versions should apply one of the following

- Upgrade to Apache StreamPark 2.0.0 or later

References:
https://streampark.incubator.apache.orghttps://www.cve.org/CVERecord?id=CVE-2022-45801



Best,
Huajie Wang

--0000000000006b537005f9c6b575--
