X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2226" "Wednesday" "25" "November" "2015" "16:28:18" "+0100" "Jacob Vosmaer" "jacob@gitlab.com" "<CADMWQoN+5h8vzSt+DFKN1YTzma0V3TFgiH2o6d2P6Tu50xRmsg@mail.gmail.com>" "61" "[oss-security] CVE request: RCE in gitlab-shell 2.6.6-2.6.7" nil nil nil "11" "2015112515:28:18" "[oss-security] CVE request: RCE in gitlab-shell 2.6.6-2.6.7" (number mark "U       jacob@gitlab Nov 25   61/2226  " thread-indent "\"[oss-security] CVE request: RCE in gitlab-shell 2.6.6-2.6.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23878 invoked by uid 550); 25 Nov 2015 15:28:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23855 invoked from network); 25 Nov 2015 15:28:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gitlab-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=jhPHhNEyfOPtyipwpEHe4lYK3HFlfkVBQa4RATaapIU=;
        b=yow8rCRidRtJDCLoZtUWvCPKrruW9Xjt9SyRwVgCwYOWoFJ7KJmnh9uHKEwezNOo42
         bD+f9BgGTwUilJS5FwwgByghh1C24kWC9z+K0p50gESed2plsAZ/PQaj3/55qXhwhDfL
         0DA6gg1jOUx+juAfI5m/D7ZYXaMBW+5Zyt1UW3sU3cHyz6wjWsFLgx8puxUIX7F6cvU3
         KOJUwGHswLByuRXHeFvYDd9xswcY4x5w+6cgnx4IiUkfPW4wDh6GeToGJgUYywyTrzea
         ld6u9VIaziGJus2ZUuX4r8Wjq2yim6P7Jf/XBHB8uT1zhaycMsNRvAHoMlYbSwMymV7F
         2t+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=jhPHhNEyfOPtyipwpEHe4lYK3HFlfkVBQa4RATaapIU=;
        b=cMbypuggt+/xcMshU5OdKvH4RM1WdmTfCtdz9xq1Al0GqKCGL+9R+XJBMBTQQmOIUQ
         YdVfu2kU2yOM0ksPAbNzB3+UNe3IE7vTP5E4tqeEMKR8nVy/iT0w/mnqN3iDr5w7gNh7
         3OyAoG4WVFO4VSYwTEtj1qyBa8lTntFCL4c5cKOK4by7zwnh1LFjieAktupKkYpCS4fM
         KxDqJqsB8ii+QYJNdAmVn5TUkvxbfgYLbY4QH+myVy4DL0uri6d/73JDnHlenJryrC5Q
         IHTySeaKt7UeSqQea7Bckl3NRehNWSQZcIKkR5Kz1toiciX7cX+WZchdnAqFIH+Ye6EN
         IHWg==
X-Gm-Message-State: ALoCoQlwHjnxPQxrsRCcRjF0bDJe0hQwlNmcioUQA5n5Qv9TNFrtX0W01ujNvSMPdg8khTeM7BhO
MIME-Version: 1.0
X-Received: by 10.28.45.216 with SMTP id t207mr5475899wmt.89.1448465298724;
 Wed, 25 Nov 2015 07:28:18 -0800 (PST)
Date: Wed, 25 Nov 2015 16:28:18 +0100
Message-ID: <CADMWQoN+5h8vzSt+DFKN1YTzma0V3TFgiH2o6d2P6Tu50xRmsg@mail.gmail.com>
From: Jacob Vosmaer <jacob@gitlab.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1142312099c19905255f1b71
Subject: [oss-security] CVE request: RCE in gitlab-shell 2.6.6-2.6.7

--001a1142312099c19905255f1b71
Content-Type: text/plain; charset=UTF-8

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Hi,

I would like to request one (1) CVE for the vulnerability in
gitlab-shell described below. Thanks in advance.

We have found a remote code execution vulnerability in gitlab-shell
2.6.6 and 2.6.7. This affects GitLab Community Edition 8.2.0 and
GitLab Enterprise Edition 8.2.0. GitLab 8.1.4 and earlier versions
are not affected by this vulnerability.

GitLab allows users to push and pull Git data over SSH. To prevent
full system access via SSH we use gitlab-shell, a program that
sanitizes and validates SSH commands that run on the GitLab server
to send and receive Git data. Due to a change in gitlab-shell
2.6.6-2.6.7, an attacker who has a user account on a GitLab server
can bypass the sanitization in gitlab-shell and run arbitrary
commands on the GitLab server.

The only versions of GitLab that include a vulnerable version of
gitlab-shell  are GitLab Community Edition 8.2.0 and GitLab Enterprise
Edition 8.2.0. If you are still running GitLab 8.1 or earlier then
you are not affected by this vulnerability.  As an administrator
you can check your gitlab-shell version by going to
gitlab.example.com/admin and looking in the upper right corner in
the 'Components' section. Only gitlab-shell versions 2.6.6 and 2.6.7
are affected.

If you installed GitLab 8.2.0 on your server then you should  [upgrade
immediately](https://about.gitlab.com/update/).

This vulnerability was fixed by:
https://gitlab.com/gitlab-org/gitlab-shell/commit/dacb8ec07645f254c3a2cf7d6f1d6c26b4f33dce

Best regards,

Jacob Vosmaer
GitLab Inc.
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEcBAEBCgAGBQJWVdMIAAoJEB2vXw0YK62WrOYH/3qJbQfKpEeRkKRobDQwjpXw
85NHkoeTPmneHe41KEeUrgt5YdkrZs4kjTlaAq5CgbxRgVTQdo907q4Y4O3TgmBl
gnO0qJ7qATTKkZoK3h5YQUckhDXeyRIC4xYxmADefBRBKrlyWQWgh61p2rN/5/1T
v3YmdDa+2DqYYhxNIUhHeIL9sF7XVhD3fOwNSZ/2w6ShgP9Zc1i6fHO0vbkU0ZX0
WpG5h8TGIuvp6BgaIBo0u0eFgC7Q3e9Wi3GWwr200GAwOqqfIQDJKpFAUbH/EVTp
SGR/lwxbrspUkU8cMNEwJBs4eREBxH0cIyq1TtqZlyRYhJrqYzjhNHg1Npi7bPg=
=hvt4
-----END PGP SIGNATURE-----

Best regards,

Jacob Vosmaer
GitLab B.V.

--001a1142312099c19905255f1b71--
