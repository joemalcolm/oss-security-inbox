X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2540" "Wednesday" "6" "October" "2021" "23:11:37" "+0200" "Wadeck Follonier" "wfollonier@cloudbees.com" nil "68" "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil "10" nil nil (number mark "U       wfollonier@c Oct  6   68/2540  " thread-indent "\"[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30068 invoked by uid 550); 6 Oct 2021 21:27:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18334 invoked from network); 6 Oct 2021 21:12:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=/dtrIgdTM5f1+wSQlQybSnCnhSx4TVvgdmthgfm6+Ww=;
        b=l5Moz73T7flO5mc0tLbqaWL1z02AU6Z6v4hO5Skn9qOxt0/062oPprcJ6pY7AXk+zx
         puaX3VyPe1dc9Xe3pyRezeVFf0UICYc6GsEfPM+ckigW8JAihBs5uqns2vZX5Mi/mx8n
         7unxNC0DnpYfJzRXkWwe87dApoJnrCTT47XmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/dtrIgdTM5f1+wSQlQybSnCnhSx4TVvgdmthgfm6+Ww=;
        b=7MacD2G+VbBfMS6uB1SkkDalUbuUe3YIhfdfvYLsoBglT+WmqiQq/ZZdQUfO3bmuV7
         IIMd3OfVHB9ZS+fxojblZrSmYWv8TSM6Ffyvm0lcTvzmBpux5XplkHStX3+lv820yHir
         ArdJh6fJn2sU3dmlagnTerKgKaM1M3FNqrVLHHLkP7siPUrbLvR75MTewT12hwTpzZaF
         BI+n10Z9/qX2/6krtabqpno7oWQJiKMCIUyJmmQPb26NuKA0DrW6iQXLOh3gOc1jHaOu
         YryXlEEVSvJn2ufr4DQUbr8tkxbv9EM60fM6OWAx2RQf4cEJ/9wTKfGDZ45/H0XZrW/u
         6YfQ==
X-Gm-Message-State: AOAM531dfTo4946yc4Ql8dbAiCUA1oXXgOdRsIW6S67yzaTbnOudo4ZL
	W3GE6p3uAU59J/wDPe2Yt8JN95UU0rfC+HRoM1uNxlR4Pydjfw==
X-Google-Smtp-Source: ABdhPJyO8+iB11AKkMbsT6YzqbMVZ8tKzr3WSnxBqouUFcEoFAcW8FIn2ZxJNIbkpwpFry5WljZ4wU71Zzn1RxfhLr4=
X-Received: by 2002:a05:651c:1697:: with SMTP id bd23mr332232ljb.442.1633554734135;
 Wed, 06 Oct 2021 14:12:14 -0700 (PDT)
MIME-Version: 1.0
From: Wadeck Follonier <wfollonier@cloudbees.com>
Date: Wed, 6 Oct 2021 23:11:37 +0200
Message-ID: <CAAWM14eMK8bt1=DE7_sTA33fGf4=pJQcyPK6x-W3hBE4N0Erfw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a6539205cdb599ad"
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

--000000000000a6539205cdb599ad
Content-Type: text/plain; charset="UTF-8"

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.315
* Jenkins LTS 2.303.2
* Git Plugin 4.8.3


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2021-10-06/
<https://www.jenkins.io/security/advisory/2021-10-06/?>

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-2424 / CVE-2021-21682
Jenkins stores jobs and other entities on disk using their name shown on
the UI as file and folder names.

On Windows, when specifying a file or folder with a trailing dot character
(`example.`), the file or folder will be treated as if that character was
not present (`example`). As both are legal names for jobs and other
entities in Jenkins 2.314 and earlier, LTS 2.303.1 and earlier, this could
allow users with the appropriate permissions to change or replace
configurations of jobs and other entities.


SECURITY-2475 / CVE-2014-3577
Jenkins 2.314 and earlier, LTS 2.303.1 and earlier bundles a version of the
commons-httpclient library with the vulnerability CVE-2014-3577 that
incorrectly verified SSL/TLS certificates, making it susceptible to
man-in-the-middle attacks.

This library is widely used as a transitive dependency in Jenkins plugins.


SECURITY-2481 / CVE-2021-21683
The file browser for workspaces, archived artifacts, and `userContent/` in
Jenkins 2.314 and earlier, LTS 2.303.1 and earlier may interpret some paths
to files as absolute on Windows.

This results in a path traversal vulnerability allowing attackers with
Overall/Read permission (Windows controller) or Job/Workspace permission
(Windows agents) to obtain the contents of arbitrary files.


SECURITY-2499 / CVE-2021-21684
Git Plugin 4.8.2 and earlier does not escape the Git SHA-1 checksum
parameters provided to commit notifications when displaying them in a build
cause.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to submit crafted commit notifications to the
`/git/notifyCommit` endpoint.

--000000000000a6539205cdb599ad--
