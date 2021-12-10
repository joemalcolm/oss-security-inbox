X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7085" "Friday" "10" "December" "2021" "21:52:26" "+0100" "Timur Olzhabayev" "timur.olzhabayev@grafana.com" nil "170" "[oss-security] CVE-2021-43813 and CVE-2021-43815 - Grafana directory traversal for some .md and .csv files" nil nil nil "12" nil nil (number mark "U       timur.olzhab Dec 10  170/7085  " thread-indent "\"[oss-security] CVE-2021-43813 and CVE-2021-43815 - Grafana directory traversal for some .md and .csv files\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-43813 and CVE-2021-43815 - Grafana directory traversal for some .md and .csv files" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17774 invoked by uid 550); 10 Dec 2021 20:58:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12136 invoked from network); 10 Dec 2021 20:52:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grafana.com; s=g1;
        h=mime-version:from:date:message-id:subject:to;
        bh=dYIPVcFr9Pvp5yfCSKR8HYXnX/ZWJqS4jaFD945cot4=;
        b=OGaJwS4od2pItc/ahGas2hIzubwENZ5trUA9uj/UjH1FBfIN2YQ6ghoJnR/TB0/33y
         h2aOGa0+Edw1OnRsygnH37dDWKhpOxMmaJIzAxuMOkPIc6BqufxfcdL3lZcg8Jdg5Js0
         mCN1hRSCZNRCdhDdxS0EQLX74cfcan0YSk7aIjtDXvZFcvT3/wl5dvga34MLPgOJnlJS
         YE8Lye6kCpZAgkWQjd5xaDbTqdwI78HsxeZnh1/HrbHK1/jroFbPKI66dWS5pQaFh8hV
         O8m8AeOW09caKqUS3LoDxrqtefF8E4YwjGtj15Dc5dPraFS1D/gAokAVVqXkz6HP7hdT
         lNQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dYIPVcFr9Pvp5yfCSKR8HYXnX/ZWJqS4jaFD945cot4=;
        b=Cwk4MvhiV2y2YknfVnQktjQsnBa0eMRioPRhET+7K0mf8O1TS7YinCQFperlJkw7yJ
         YekV0rTScHryyUuKfQ/IAzk71Ch9SShw8woLFVfqayVuerGqnC6OdhwidBMBdVdKSIAc
         e1BmibFjxUcMiekne52Lx7+fM83xQW/g3sCeqBd2BTghTg664PtURiSJZcZzHffLywK5
         K0mgwtJf3cWKYYUUj9B6kfAf1+O/lB3PFswc0KOCS5sC4dokdEEHynRiczDyyV0kMd9t
         KaXi92R9S3SeN5McffnvFWMVVmu2qGv7PxqybaynpiSblc+Ehu7p1MdwcbAfms3g1Gqp
         ynEA==
X-Gm-Message-State: AOAM5301mz0ZVXsIIYm2pvPTK2RouNgI/b/p9+b0E2L8uCKVYjkYiNS+
	qeluXRvVBB4VPxa4T0am9YCjgE5FEWhQhsOmxNBIM11mK7ayFQ==
X-Google-Smtp-Source: ABdhPJxY97CSUtuOW/tmMq5KFV1O1AOFZd27xKsKu0QnN0fymsEgpl9fDDukbVi84FkkwMSTtKsDh+GvP2YPS++ZzE8=
X-Received: by 2002:a05:651c:50c:: with SMTP id o12mr15621680ljp.438.1639169557428;
 Fri, 10 Dec 2021 12:52:37 -0800 (PST)
MIME-Version: 1.0
From: Timur Olzhabayev <timur.olzhabayev@grafana.com>
Date: Fri, 10 Dec 2021 21:52:26 +0100
Message-ID: <CAK6y_OOtwB2Z7Y2aTKh2phmCxVuVffP=5z_LeYvcSCrTiEx4sA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000032de4a05d2d0e79f"
Subject: [oss-security] CVE-2021-43813 and CVE-2021-43815 - Grafana directory traversal for
 some .md and .csv files

--00000000000032de4a05d2d0e79f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We released Grafana 8.3.2 and 7.5.12 on December 10th. This patch release
includes a moderate severity security fix for directory traversal for:

   - arbitrary .md files: CVE-2021-43813, Grafana 5.0.0 to 8.3.1, and
   - arbitrary .csv files: CVE-2021-43815, Grafana 8.0.0-beta3 to 8.3.1.

The vulnerabilities are limited in scope, and only allow access to files
with the extension .md or .csv to authenticated users. The .csv vulnerabili=
ty
requires a developer testing tool called TestData DB
<https://grafana.com/docs/grafana/latest/datasources/testdata/> data source
to be enabled and configured, and this feature is not enabled per default.

Thanks to our defense-in-depth approach, at no time has Grafana Cloud
<https://grafana.com/cloud> been vulnerable.

This is a follow-up patch to our recent CVE-2021-43798
<https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-43798> release. =
If
you haven=E2=80=99t read about that high severity security fix, we recommen=
d you
review the initial blog post
<https://grafana.com/blog/2021/12/07/grafana-8.3.1-8.2.7-8.1.8-and-8.0.7-re=
leased-with-high-severity-security-fix/>
along
with our update on the 0day
<https://grafana.com/blog/2021/12/08/an-update-on-0day-cve-2021-43798-grafa=
na-directory-traversal/>
=2E

Given the attention CVE-2021-43798 has brought, there=E2=80=99s a risk that
additional researchers will find CVE-2021-43813. Out of an abundance of
caution and given that both CVE-2021-43813 and CVE-2021-43815 are only CVSS
Score 4.3 Moderate CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N through
their limited scope, we are immediately releasing to the public and on a
Friday.

We identified several vulnerability issues in the last few weeks and at a
higher rate than in the years before. The infosec industry usually comes
together after a few CVEs, and we benefit from that extra scrutiny.
Although it can be difficult, ultimately it=E2=80=99s for the overall benef=
it of
Grafana and the community. Please know that this is a top priority for us.
We are spending significant resources on this in the remainder of 2021
already, including full outside assessment. We will continue and increase
this investment in 2022 and beyond.

Release 8.3.2, only containing a security fix:
<https://grafana.com/grafana/download/8.3.2>

   <https://grafana.com/grafana/download/8.3.2>
   - <https://grafana.com/grafana/download/8.3.2>Download Grafana 8.3.2
   <https://grafana.com/grafana/download/8.3.2>
   - Release notes
   <https://grafana.com/docs/grafana/next/release-notes/release-notes-8-3-2=
/>

Release 7.5.12, only containing a security fix:

   - Download Grafana 7.5.12 <https://grafana.com/grafana/download/7.5.12>
   - Release notes
   <https://grafana.com/docs/grafana/next/release-notes/release-notes-7-5-1=
2/>

Directory Traversal (CVE-2021-43813
<https://github.com/grafana/grafana/security/advisories/GHSA-c3q8-26ph-9g2q>
)Summary

CVSS Score: 4.3 Moderate CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N,
Grafana versions 5.0.0 to 8.3.1

On 2021-12-09, GitHub Security Labs notified us of a vulnerability through
which authenticated users could read out fully lowercase or fully uppercase
.md files through directory traversal. Doing our own follow-up
investigation we found a related vulnerability through which authenticated
users could read out arbitrary .csv files through directory traversal.
Thanks to our defense-in-depth approach, at no time has Grafana Cloud
<https://grafana.com/cloud/?pg=3Dblog> been vulnerable.

The vulnerable URL path is: /api/plugins/.*/markdown/.* for .md files
Affected versions with moderate severity

CVE-2021-43813: Grafana 5.0.0 to 8.3.1
CVE-2021-43815: Grafana 8.0.0-beta3 to 8.3.1
Solutions and mitigations

All installations between 5.0.0 and 8.3.1 should be upgraded as soon as
possible.

If you cannot upgrade, running a reverse proxy in front of Grafana that
normalizes the PATH of the request will mitigate the vulnerability. The
proxy will have to also be able to handle url encoded paths. Alternatively,
for fully lowercase or fully uppercase .md files, you can block
/api/plugins/.*/markdown/.* without losing any functionality beyond inlined
plugin help text.

To mitigate the csv path traversal vulnerability all configured TestData DB
<https://grafana.com/docs/grafana/latest/datasources/testdata/> data
sources (a UI testing data source that is disabled by default) should be
deleted.
Detecting exploits

Search your request logs for requests matching ..%2f.
Timeline and postmortem

Here is a detailed timeline starting from when we originally learned of the
issue. All times in UTC.

   - 2021-12-09 14:32 - Github Security Labs notify us about the .md
    vulnerability
   - 2021-12-09 15:02 - Incident channel is open and announced
   - 2021-12-09 15:11 - CVE is requested / GitHub Advisory is created
   - 2021-12-09 15:20 - Investigation into potentially related issues
   started
   - 2021-12-09 15:22 - Issue reproduced and confirmed that it is limited
   to *.md files
   - 2021-12-09 15:27 - Confirmed that Hosted Grafana is protected by the
   reverse proxy, similar to previous CVE
   - 2021-12-09 16:07 - Possibly /api/ds/query is affected and might be
   leveraged to read .csv files via path traversal
   - 2021-12-09 16:10 - PR with a possible fix the markdown path traversal
   is raised in private mirror repo
   - 2021-12-09 16:42 - We have confirmed that .csv files are also affected
   in some cases
   - 2021-12-09 19:05 - Fix confirmed
   - 2021-12-09 23:00: Decision release to direct to public on 2021-12-10
   14:30 UTC
   - 2021-12-09 23:36: Announcement email sent to customers
   - 2021-12-10 10:11: Decision to split out .csv vulnerability into its
   own CVE
   - 2021-12-10: Public release

Acknowledgement

We would like to thank the GitHub Security Lab team
<https://securitylab.github.com/> for responsibly disclosing the initial
issue to us.
Reporting security Issues

If you think you have found a security vulnerability, please send a report
to security@grafana.com. This address can be used for all of Grafana Labs'
open source and commercial products (including but not limited to Grafana,
Grafana Cloud, Grafana Enterprise, and grafana.com). We can accept only
vulnerability reports at this address. We would prefer that you encrypt
your message to us by using our PGP key. The key fingerprint is

F988 7BEA 027A 049F AE8E 5CAA D125 8932 BE24 C5CA

The key is available from keyserver.ubuntu.com
<https://keyserver.ubuntu.com/pks/lookup?search=3D0xF9887BEA027A049FAE8E5CA=
AD1258932BE24C5CA&fingerprint=3Don&op=3Dindex>
=2E
Security announcements

We maintain a security category on our blog
<https://grafana.com/tags/security/>, where we will always post a summary,
remediation, and mitigation details for any patch containing security fixes.

You can also subscribe to our RSS feed
<https://grafana.com/tags/security/index.xml>.
--=20
Best,
Timur
Grafana Labs

--00000000000032de4a05d2d0e79f--
