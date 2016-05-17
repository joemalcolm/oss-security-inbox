X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4097" "Tuesday" "17" "May" "2016" "17:01:24" "+0800" "Marina Glancy" "marina@moodle.com" "<CAB_jSYzrYau1c_zEO-BczpEKc7W617NKeuphfJt=HLgE9bMbfA@mail.gmail.com>" "92" "[oss-security] Moodle security release 3.0.4, 2.9.6, 2.8.12, 2.7.14" nil nil nil "5" "2016051709:01:24" "[oss-security] Moodle security release 3.0.4, 2.9.6, 2.8.12, 2.7.14" (number mark "U       marina@moodl May 17   92/4097  " thread-indent "\"[oss-security] Moodle security release 3.0.4, 2.9.6, 2.8.12, 2.7.14\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7187 invoked by uid 550); 17 May 2016 09:01:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6109 invoked from network); 17 May 2016 09:01:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=moodle.com; s=google;
        h=mime-version:date:message-id:subject:from:to;
        bh=IFg/Eu8pM0QnSUsmmaIBzGJeExn7ewg+ogRzEBJ7EGY=;
        b=j0/XN3OjqZErsO+Q1ZE+oB0JWRHW/B203VMm1rbAfeUwHFdQE7KqDKmYOyFa42wGDa
         8RCPbY2uF5C+OO9EFkNlnCWtHC1HR8DXQPqnxR/MOYTEqasMHirHY/yw1uzZsTQUtAN0
         W+KFng+59/1msSes3+O+E2RwXJtYJsO4R+uWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=IFg/Eu8pM0QnSUsmmaIBzGJeExn7ewg+ogRzEBJ7EGY=;
        b=bxSpK+8Rs2dV84b1YOfPCv5Vuwt9RM4CR+p7tvwUCzGqKCpAeb+CBaVnYPOJJoZoN1
         Qpocir93U10VtbZOYpJvrC01+T7DCpqEQSTO1+oBV7cMsBJ5hyb5Li5AmK9P5VYWVN8k
         k8Tg+OndPAcmkHqeXn2DXIu+FtYpf6FhiElfHUg4If9DgJkXxLGEw8dklI1ln0xaDBDP
         y47+52Z4sNqjxRsptESrVTAmxWfEuQoAxlnYYBp7oD1xD7Yw8R5nZYxrzTDqJ73R1mSp
         wMcFjAKoUq9S156kOV6uKtS5nvp0bEQFWF4JfVOGXKgUxRIXbxFw1CkN7hNu0mWQP3rd
         TOyw==
X-Gm-Message-State: AOPr4FUNvVOXA+GXpQQoR4THhoMtDYhWUfFf9Ocim9L+UD2lTIbDoCndBOL4aEsmm/K7G+z5MwBJA7vRtOrQIzFz
MIME-Version: 1.0
X-Received: by 10.157.5.199 with SMTP id 65mr40926otd.161.1463475684997; Tue,
 17 May 2016 02:01:24 -0700 (PDT)
Date: Tue, 17 May 2016 17:01:24 +0800
Message-ID: <CAB_jSYzrYau1c_zEO-BczpEKc7W617NKeuphfJt=HLgE9bMbfA@mail.gmail.com>
From: Marina Glancy <marina@moodle.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Moodle security release 3.0.4, 2.9.6, 2.8.12, 2.7.14

The following security notifications have now been made public
following release of Moodle 3.0.4, 2.9.6, 2.8.12 and 2.7.14. Thanks to
OSS members for their cooperation.

==============================================================================
MSA-16-0013: Users are able to change profile fields that were locked by the
administrator

Description:       User editing form only disabled the profile fields in UI
                   and did not actually prevent users from editing them
Issue summary:     Tricky users can change locked profile fields
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.3, 2.9 to 2.9.5, 2.8 to 2.8.11, 2.7 to 2.7.13
                   and earlier unsupported versions
Versions fixed:    3.0.4, 2.9.6, 2.8.12 and 2.7.14
Reported by:       Vadim Dvorovenko
Issue no.:         MDL-53954
CVE identifier:    CVE-2016-3729
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-53954

==============================================================================
MSA-16-0015: Information disclosure of hidden forum names and sub-names.

Description:       Name of the inaccessible forum or forum discussion could be
                   disclosed as part of the error message on the subscription
                   page
Issue summary:     Information disclosure of hidden forum names and sub-names.
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.3, 2.9 to 2.9.5 and 2.8 to 2.8.11
Versions fixed:    3.0.4, 2.9.6 and 2.8.12
Reported by:       Callum
Issue no.:         MDL-53696
CVE identifier:    CVE-2016-3731
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-53696

==============================================================================
MSA-16-0016: User can view badges of other users without proper permissions

Description:       Capability check to view other badges was performed for the
                   current user instead for the user whose badges are being
                   viewed
Issue summary:     Badges code checks viewotherbadges capability in the wrong
                   context
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.3, 2.9 to 2.9.5, 2.8 to 2.8.11, 2.7 to 2.7.13
                   and earlier unsupported versions
Versions fixed:    3.0.4, 2.9.6 and 2.8.12
Reported by:       Tim Hunt
Issue no.:         MDL-53589
CVE identifier:    CVE-2016-3732
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-53589

==============================================================================
MSA-16-0017: Course idnumber not protected from teacher restore

Description:       During the course restore teacher could overwrite idnumber
                   even without having the capability to change it
Issue summary:     Course idnumber not protected from teacher restore
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.3, 2.9 to 2.9.5, 2.8 to 2.8.11, 2.7 to 2.7.13
                   and earlier unsupported versions
Versions fixed:    3.0.4, 2.9.6, 2.8.12 and 2.7.14
Reported by:       Donna Hrynkiw
Issue no.:         MDL-51369
CVE identifier:    CVE-2016-3733
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-51369

==============================================================================
MSA-16-0018: CSRF in script marking forum posts as read

Description:       CSRF possible in the URL that marks forum posts as read
Issue summary:     Forum markposts.php missing sesskey check
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.3, 2.9 to 2.9.5, 2.8 to 2.8.11, 2.7 to 2.7.13
                   and earlier unsupported versions
Versions fixed:    3.0.4, 2.9.6, 2.8.12 and 2.7.14
Reported by:       Andrew Nicols
Issue no.:         MDL-53755
CVE identifier:    CVE-2016-3734
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-53755

==============================================================================

Marina Glancy
Development Process Manager
e: marina@moodle.com
p: +61 8 9467 4167 w: moodle.com
