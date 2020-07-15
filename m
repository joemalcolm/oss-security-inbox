X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4030" "Wednesday" "15" "July" "2020" "17:52:43" "+0200" "Wadeck Follonier" "wfollonier@cloudbees.com" "<CAAWM14cNTy-LSFk6iHYXCQE+pXG8VjQdZw9byBeTk21nCrPFyA@mail.gmail.com>" "102" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil "7" "2020071515:52:43" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" (number mark "U       wfollonier@c Jul 15  102/4030  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3135 invoked by uid 550); 15 Jul 2020 16:38:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16128 invoked from network); 15 Jul 2020 15:53:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=yEzKBi9Eyh3Vh6UOMzNgCnmO0OkAvPeuCeMmOSbYKn8=;
        b=cCPimaxkaP7W+DqCvEdzInximVm23haZT+CNdTXCwHgvPeWfWQmteaBYcKpAXc09T1
         Bn3w/HlWkhdcVarpqR/EnNPeCuYHLs3G4hbXwesBHw6tafNZYVB46X7pwOVmK7i/03ui
         0Zi5OKsJh6+NmFkH8AXTQLWq4WhXKSSS605YQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yEzKBi9Eyh3Vh6UOMzNgCnmO0OkAvPeuCeMmOSbYKn8=;
        b=OCm96ZTk9Ljz1GIuFPoy7DPK0ZMevv7XSxzrD95+rC8oI4Rrw2qUIuKwq3P9syjGRU
         uA6Vc5qkqYjzZ1C8erxDwDYcK0lNeQdzVfNqlA7BoN3ftkk7YkKIl/++6pa9Rh9t3rvK
         Z/sKW8yBDpTulZYOivfY8VGU3t24TtuBJHSmrvbDoPA8TLtB3oIvuytnw9gge/yXKj0f
         ESVSeAowdCoqoRvmgrLaKJ3QMcUkucozGT6Qnlbn++SRhgHectzJ/GGkH9Y4o4HD9RiK
         6iAv1Pe/n8HQIEBxr0jRXfHM9quYPWmY5ePIoiYRv+PYikgA/xgkHEK0DcaJf9nWL5zI
         hz7g==
X-Gm-Message-State: AOAM530Lf6txo9MyNAiYVlIvOE04slnEcl3OJdQguwwV1kDCdT5uyKSx
	fXyyir1DtQUH0MyqBtX24vgovGY/uF3hM546P93ksybkWrwCNA==
X-Google-Smtp-Source: ABdhPJzIvYKquU8uuKhd1Ht9DNql27r+Fv07AOGKOGDqYWU3a04X79gMUs92LZesIHhy8X2me6EmARY157WU6ihs1hc=
X-Received: by 2002:a92:8915:: with SMTP id n21mr169107ild.166.1594828400711;
 Wed, 15 Jul 2020 08:53:20 -0700 (PDT)
MIME-Version: 1.0
From: Wadeck Follonier <wfollonier@cloudbees.com>
Date: Wed, 15 Jul 2020 17:52:43 +0200
Message-ID: <CAAWM14cNTy-LSFk6iHYXCQE+pXG8VjQdZw9byBeTk21nCrPFyA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004d70f605aa7cec1f"
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

--0000000000004d70f605aa7cec1f
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.245
* Jenkins LTS 2.235.2
* Deployer Framework Plugin 1.3
* Gitlab Authentication Plugin 1.6
* Matrix Authorization Strategy Plugin 2.6.2
* Matrix Project Plugin 1.17


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://jenkins.io/security/advisory/2020-07-15/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-1868 / CVE-2020-2220
Jenkins 2.244 and earlier, LTS 2.235.1 and earlier does not escape the
agent name on build time trend pages. This results in a stored cross-site
scripting (XSS) vulnerability exploitable by users with Agent/Configure
permission.


SECURITY-1901 / CVE-2020-2221
Jenkins 2.244 and earlier, LTS 2.235.1 and earlier does not escape the
upstream job's display name shown as part of a build cause. This results in
a stored cross-site scripting (XSS) vulnerability exploitable by users with
Job/Configure permission.


SECURITY-1902 / CVE-2020-2222
Jenkins 2.244 and earlier, LTS 2.235.1 and earlier does not escape the job
name in the 'Keep this build forever' badge tooltip. This results in a
stored cross-site scripting (XSS) vulnerability exploitable by users able
to configure job names.

As job names do not generally support the character set needed for XSS,
this is believed to be difficult to exploit in common configurations.


SECURITY-1945 / CVE-2020-2223
Jenkins 2.244 and earlier, LTS 2.235.1 and earlier does not escape the
`href` attribute of links to downstream jobs displayed in the build console
page. This results in a stored cross-site scripting (XSS) vulnerability
exploitable by users with Job/Configure permission.


SECURITY-1924 / CVE-2020-2224
Matrix Project Plugin 1.16 and earlier does not escape node names shown in
tooltips on the overview page of builds with a single axis. This results in
a stored cross-site scripting (XSS) vulnerability exploitable by users with
Agent/Configure permission.


SECURITY-1925 / CVE-2020-2225
Matrix Project Plugin 1.16 and earlier does not escape the axis names shown
in tooltips on the overview page of builds with multiple axes. This results
in a stored cross-site scripting (XSS) vulnerability exploitable by users
with Job/Configure permission.


SECURITY-1909 / CVE-2020-2226
Matrix Authorization Strategy Plugin 2.6.1 and earlier does not escape user
names shown in the permission table. This results in a stored cross-site
scripting (XSS) vulnerability. When using project-based matrix
authorization, this vulnerability can be exploited by a user with
Job/Configure or Agent/Configure permission, otherwise by users with
Overall/Administer permission.


SECURITY-1915 / CVE-2020-2227
Deployer Framework Plugin is a framework plugin allowing other plugins to
provide a way to deploy artifacts. Deployer Framework Plugin 1.2 and
earlier does not escape the URL displayed in the build home page. This
results in a stored cross-site scripting (XSS) vulnerability exploitable by
users able to provide the location.

The exploitability of this vulnerability depends on the specific
implementation using Deployer Framework Plugin. The Jenkins security team
is not aware of any exploitable implementation.


SECURITY-1792 / CVE-2020-2228
Gitlab Authentication Plugin 1.5 and earlier does not differentiate between
user names and hierarchical group names when performing authorization. This
allows an attacker with permissions to create groups in GitLab to gain the
privileges granted to another user or group.

--0000000000004d70f605aa7cec1f--
