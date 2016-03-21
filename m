X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8245" "Monday" "21" "March" "2016" "14:32:15" "+0800" "Marina Glancy" "marina@moodle.com" "<CAB_jSYwVGQrFsH6syD=az8-4Moazj5de0xvRrYnAiRuhaG=Tgw@mail.gmail.com>" "183" "[oss-security] moodle security release" nil nil nil "3" "2016032106:32:15" "[oss-security] moodle security release" (number mark "U       marina@moodl Mar 21  183/8245  " thread-indent "\"[oss-security] moodle security release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24408 invoked by uid 550); 21 Mar 2016 06:32:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24371 invoked from network); 21 Mar 2016 06:32:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=moodle.com; s=google;
        h=mime-version:date:message-id:subject:from:to;
        bh=bx6Nvlr1f956SOxgMPothfvVdPEAWyhTGUu9axN7J5E=;
        b=WswzOAjLWea9OILP6B9fNPUB8PwIdnKJJ7WQZTFPjqQH1Z4qRhdKS8o/wmSJh/Bkta
         uAkqy3wyIjzabIhQVYzMok/kXh5zjqN85WhNgvRalmi8T4AMUyCNwS5dmP835tt4+4u4
         gx4rjEYh+4Gn3gQCjYdEzZALZ8w3Mkwg3K5Nw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=bx6Nvlr1f956SOxgMPothfvVdPEAWyhTGUu9axN7J5E=;
        b=LisnFtP9AKiqJuXuEGq6So2abFJwcnli4mJFgccwtMODELs0umNt13q/UYYoOOZjDb
         qfJqJVPBl6PlqcMeiNYs2VEWfE4GudA5OdifEbLr9ESQS8WTrAPqTXsuTD0JbS5tfpMh
         Ob0ZX9P9zybaiAhimiNJiS3ZhgqGBh43ecQaxiBhjL1stu6gg9GYf+OXNihNVeTbz9cj
         IMSJQLNfzHz7Kw96HS+89WN7kmQOA63dAvDwVLGAlL39TDUcJ5eM/qhJ91HNDONhsfbX
         wv+L3hx5Yq5XDkxw601h6SaqyVU+St29hJHPIopo2Vh6LnPyZEArrHifrB5r1WJtg9q6
         8gkg==
X-Gm-Message-State: AD7BkJIyfJ40lXP42+eKnBjR4vzvo2N8ldKto4ZTjazF+/x5buVpSoFa2qHJfr4Ttx2j5iVsbRAyLtQf+vIo3wFk
MIME-Version: 1.0
X-Received: by 10.31.44.77 with SMTP id s74mr30105897vks.4.1458541935286; Sun,
 20 Mar 2016 23:32:15 -0700 (PDT)
Date: Mon, 21 Mar 2016 14:32:15 +0800
Message-ID: <CAB_jSYwVGQrFsH6syD=az8-4Moazj5de0xvRrYnAiRuhaG=Tgw@mail.gmail.com>
From: Marina Glancy <marina@moodle.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] moodle security release

The following security notifications have now been made public. Thanks
to OSS members for their cooperation.

Marina Glancy
Development Process Manager
e: marina@moodle.com
p: +61 8 9467 4167 w: moodle.com

==============================================================================
MSA-16-0003: Incorrect capability check when displaying users emails in
Participants list

Description:       Teachers who otherwise were not supposed to see students'
                   emails could see them in the participants list
Issue summary:     Incorrect capability check when displaying users emails in
                   Participants list
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10, 2.7 to 2.7.12
                   and earlier unsupported versions
Versions fixed:    3.0.3, 2.9.5, 2.8.11 and 2.7.13
Reported by:       Matt Jenner
Issue no.:         MDL-52433
CVE identifier:    CVE-2016-2151
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52433

==============================================================================
MSA-16-0004: XSS from profile fields from external db

Description:       Moodle traditionally trusted content from external DB
                   however it was decided that external datasources may not be
                   aware of web security practices and data could cause
                   problems after importing to Moodle
Issue summary:     XSS from profile fields from external db
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10, 2.7 to 2.7.12
                   and earlier unsupported versions
Versions fixed:    3.0.3, 2.9.5, 2.8.11 and 2.7.13
Reported by:       Jay Knight
Issue no.:         MDL-50705
CVE identifier:    CVE-2016-2152
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50705

==============================================================================
MSA-16-0005: Reflected XSS in mod_data advanced search

Description:       User with higher permissions could be tricked into clicking
                   a link which would result in XSS attack
Issue summary:     Reflected XSS in mod_data advanced search
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10, 2.7 to 2.7.12
                   and earlier unsupported versions
Versions fixed:    3.0.3, 2.9.5, 2.8.11 and 2.7.13
Reported by:       Ian Song
Issue no.:         MDL-52727
Workaround:        Educate staff to always use only modern browsers that block
                   such attacks by default
CVE identifier:    CVE-2016-2153
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52727

==============================================================================
MSA-16-0006: Hidden courses are shown to students in Event Monitor

Description:       Users without capability to view hidden courses but with
                   capability to subscribe to Event Monitor rules could see
                   the names of hidden courses
Issue summary:     Hidden courses are shown to students in Event Monitor
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10
Versions fixed:    3.0.3, 2.9.5 and 2.8.11
Reported by:       Roger
Issue no.:         MDL-51167
Workaround:        Revoke capability to subscribe to Event Monitor rules from
                   regular users
CVE identifier:    CVE-2016-2154
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-51167

==============================================================================
MSA-16-0007: Non-Editing Instructor role can edit exclude checkbox in Single
View

Description:       Incorrect capability check in Single View grade report
                   could result in giving a teacher extra permission
Issue summary:     Non-Editing Instructor role can edit exclude checkbox in
                   Single View
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10
Versions fixed:    3.0.3, 2.9.5 and 2.8.11
Reported by:       Mark McKay
Issue no.:         MDL-52378
CVE identifier:    CVE-2016-2155
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52378

==============================================================================
MSA-16-0008: External function get_calendar_events return events that pertains
to hidden activities

Description:       Users without capability to view hidden acitivites could
                   still see associated calendar events via web services
Issue summary:     External function get_calendar_events return events that
                   pertains to hidden activities
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10, 2.7 to 2.7.12
                   and earlier unsupported versions
Versions fixed:    3.0.3, 2.9.5, 2.8.11 and 2.7.13
Reported by:       Juan Leyva
Issue no.:         MDL-52808
CVE identifier:    CVE-2016-2156
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52808

==============================================================================
MSA-16-0009: CSRF in Assignment plugin management page

Description:       CSRF possible on admin page, however exploit unlikely
                   benefit anybody and can easily be reversed
Issue summary:     CSRF in Assignment plugin management page
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10, 2.7 to 2.7.12
                   and earlier unsupported versions
Versions fixed:    3.0.3, 2.9.5, 2.8.11 and 2.7.13
Reported by:       Paul Holden
Issue no.:         MDL-53031
CVE identifier:    CVE-2016-2157
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-53031

==============================================================================
MSA-16-0010: Enumeration of category details possible without authentication

Description:       Despite force login setting guests could still access
                   course category details
Issue summary:     Enumeration of category details possible without
                   authentication
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10, 2.7 to 2.7.12
                   and earlier unsupported versions
Versions fixed:    3.0.3, 2.9.5, 2.8.11 and 2.7.13
Reported by:       Krista Koivisto
Issue no.:         MDL-52774
CVE identifier:    CVE-2016-2158
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52774

==============================================================================
MSA-16-0011: Add no referrer to links with _blank target attribute

Description:       Improve security when following external links that were
                   added with _blank target
Issue summary:     Add no referrer to links with _blank target attribute
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10, 2.7 to 2.7.12
                   and earlier unsupported versions
Versions fixed:    3.0.3, 2.9.5, 2.8.11 and 2.7.13
Reported by:       Hugh Davenport
Issue no.:         MDL-52651
CVE identifier:    CVE-2016-2190
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52651

==============================================================================
MSA-16-0012: External function mod_assign_save_submission does not check due
dates

Description:       Students were able to add assignment submissions after the
                   due date through web service
Issue summary:     External function mod_assign_save_submission does not check
                   due dates
Severity/Risk:     Minor
Versions affected: 3.0 to 3.0.2, 2.9 to 2.9.4, 2.8 to 2.8.10, 2.7 to 2.7.12
                   and earlier unsupported versions
Versions fixed:    3.0.3, 2.9.5, 2.8.11 and 2.7.13
Reported by:       Juan Leyva
Issue no.:         MDL-52901
CVE identifier:    CVE-2016-2159
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-52901

==============================================================================
