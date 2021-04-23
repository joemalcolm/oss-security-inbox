X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1235" "Friday" "23" "April" "2021" "10:21:24" "-0400" "Brian Fox" "brianf@apache.org" nil "33" "[oss-security] CVE-2021-26291: Apache Maven: block repositories using http by default" nil nil nil "4" nil nil (number mark "U       brianf@apach Apr 23   33/1235  " thread-indent "\"[oss-security] CVE-2021-26291: Apache Maven: block repositories using http by default\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26291: Apache Maven: block repositories using http by default" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6129 invoked by uid 550); 23 Apr 2021 17:01:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3607 invoked from network); 23 Apr 2021 14:21:49 -0000
X-Gm-Message-State: AOAM530CnNA3gA3QDIPhL+y/l7E1DzToHRZXBujASMFQjrwwB70pyi0f
	5IakquDJpNkEtf8hveZ8TTOWXC01s3hg4EXT4I+hAA==
X-Google-Smtp-Source: ABdhPJwkQjHW4JNHeX33wUJMXRE8FIUlARZNsKEFQKhtQX+WayzWnGikoC4YxmjRTI+DJW7wUKkRL+nwpET2ykOI93s=
X-Received: by 2002:a62:2cb:0:b029:259:feaa:75e7 with SMTP id
 194-20020a6202cb0000b0290259feaa75e7mr4078421pfc.24.1619187694793; Fri, 23
 Apr 2021 07:21:34 -0700 (PDT)
MIME-Version: 1.0
From: Brian Fox <brianf@apache.org>
Date: Fri, 23 Apr 2021 10:21:24 -0400
X-Gmail-Original-Message-ID: <CAMk_BejpF0w9DGjHXTiqhsvSOeWK=MsggpD4RDhhfSzYPbYX_w@mail.gmail.com>
Message-ID: <CAMk_BejpF0w9DGjHXTiqhsvSOeWK=MsggpD4RDhhfSzYPbYX_w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2021-26291: Apache Maven: block repositories using http by default

Subject: CVE-2021-26291: Apache Maven: block repositories using http by def=
ault

Description:

Apache Maven will follow repositories that are defined in a
dependency=E2=80=99s Project Object Model (pom) which may be surprising to
some users, resulting in potential risk if a malicious actor takes
over that repository or is able to insert themselves into a position
to pretend to be that repository. Maven is changing the default
behavior in 3.8.1+ to no longer follow http (non-SSL) repository
references by default. More details available in the referenced urls.

If you are currently using a repository manager to govern the
repositories used by your builds, you are unaffected by the risks
present in the legacy behavior, and are unaffected by this
vulnerability and change to default behavior. See this link for more
information about repository management:
https://maven.apache.org/repository-management.html

This issue is being tracked as MNG-7118

Credit:

Apache Maven would like to thank Jonathan Leitschuh for highlighting
the need for this change.

References:

https://lists.apache.org/thread.html/r9a027668558264c4897633e66bcb7784099fd=
ec9f9b22c38c2442f00%40%3Cusers.maven.apache.org%3E

ASF-EmailInstructionsChanges
