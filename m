X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["634" "Tuesday" "10" "April" "2018" "13:40:48" "+0300" "Tomer Brisker" "tbrisker@redhat.com" "<CAE=eJscZ-56D2hFjn1LMRQMOOhQG0aUF-4snqfasXfDMW4e5QA@mail.gmail.com>" "21" "[oss-security] CVE-2018-1097 Foreman: oVirt credentials exposed by host power API" nil nil nil "4" "2018041010:40:48" "[oss-security] CVE-2018-1097 Foreman: oVirt credentials exposed by host power API" (number mark "U       tbrisker@red Apr 10   21/634   " thread-indent "\"[oss-security] CVE-2018-1097 Foreman: oVirt credentials exposed by host power API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29860 invoked by uid 550); 10 Apr 2018 10:50:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24443 invoked from network); 10 Apr 2018 10:41:40 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NGQbiYe4bzWb+tyGOlxs44DszDciUWoaAHJnLQeNrik=;
        b=FrFbYi8rtBLsXtduvi6l50E37EFUQHU0yZS2aWK7a6qaeQCdXNdN59J6T5AdudhHrL
         ESj36VAfw5MriQGEMC0rD0TW5AAdDX66HwdSbGudG910xk2PaXzBJuzwBoiY7IdLdbLh
         +bLWi/evPkEnaSuQddwwOWxRCFp5+SgqSUYFRgLWJFc8wzmTqKeZxdp6G/XARiKZAks/
         Xi188sEgckETx68N6Ex5Gpx1X1THeoxT+75S0qbHkgwU58nRsnKwK6rr/4PhcDItmRoz
         WMimHm7DZBPe+ZfxEhMC0VGlvZssOHGU0FvuTA8jk03l7KT8SQJv9qvckOVIahzZ7xim
         cOrg==
X-Gm-Message-State: ALQs6tBkPwVPwbnmsTgcu9yWpnEyHYo9NFJ0PN/LAva2TR2WQgwb7XiA
	mKS8wzObtk1L9K0pNBb1xupHCzuhhVls4JBUhfIyyw==
X-Google-Smtp-Source: AIpwx48uVNw7H0CFzqzMIZKOPAI6QPpTCsj6autG2ohWehAwD842Pf303WvmKZSxv6GnUxtBxMHYdIqG5J5bB8ac974=
X-Received: by 10.129.172.80 with SMTP id z16mr13212080ywj.179.1523356889146;
 Tue, 10 Apr 2018 03:41:29 -0700 (PDT)
MIME-Version: 1.0
From: Tomer Brisker <tbrisker@redhat.com>
Date: Tue, 10 Apr 2018 13:40:48 +0300
Message-ID: <CAE=eJscZ-56D2hFjn1LMRQMOOhQG0aUF-4snqfasXfDMW4e5QA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f403045efcbe3e88bf05697c2a4d"
Subject: [oss-security] CVE-2018-1097 Foreman: oVirt credentials exposed by host power API

--f403045efcbe3e88bf05697c2a4d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

An information disclosure vulnerability was discovered in the host power
API in Foreman.
When sending a power action to a host provisioned on an oVirt compute
resource, the API responded with details of the compute resource, including
credentials in clear text.

This issue affect Foreman 1.3 or newer.
A fix is included in the 1.16.1 release.
Details are available at http://projects.theforeman.org/issues/22546=E2=80=
=8B

--=20
Have a nice day,
Tomer Brisker
Red Hat Engineering

--f403045efcbe3e88bf05697c2a4d--
