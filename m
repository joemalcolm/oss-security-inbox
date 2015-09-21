X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5575" "Monday" "21" "September" "2015" "09:51:24" "+0800" "Marina Glancy" "marina@moodle.com" "<CAB_jSYzUXixCi2=9Eoh0iWn+fGPmQMGJ7_eRYvde-g3cNAHMOw@mail.gmail.com>" "127" "[oss-security] Moodle security release" nil nil nil "9" "2015092101:51:24" "[oss-security] Moodle security release" (number mark "U       marina@moodl Sep 21  127/5575  " thread-indent "\"[oss-security] Moodle security release\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16213 invoked by uid 550); 21 Sep 2015 01:52:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15980 invoked from network); 21 Sep 2015 01:51:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=moodle.com; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=QSegBijbtoGxqNUOixksLE6E6ZIyVngmVis12AWBlsY=;
        b=ixP+AlO9qDskuizLNNgM/onY9YfbjnphvPTQZrRa1sgbFk2arcNuHNFsMJmoMD6pAG
         hI/7wxDnQMaSI5gZ9wI8e2GUNj3mob23wPKUy0INOpcJBonajFpOip7nSUJZX83zo/td
         03+txdVPg/i0VW5J2Uw2y5zpZ1VEuBKyWDu5w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=QSegBijbtoGxqNUOixksLE6E6ZIyVngmVis12AWBlsY=;
        b=GxJ1dQQjxWF/EjtNsWoaeKK/0tqbEDykXgquAj9RYz5HLBaDThP/dTpuP1SRk+pEm3
         OkOnewjHPNH05AUAPsVPId3/51n1d6Gc4GBvbCq5HWt76KXMF/suzlCb+J7LkWpb1VjI
         yFOuLj0WUbLIEKCk+2lUUSeRp0T5gCwO5M6uCW2gEeObVF+osCMy5nvhkv50nQ/8TzJd
         AK2/kKTyIA/OW73iqAmLjhNxVbV66/WX1L1xv18cXLiHhWkr5qCs6dUHA6zt5y0qJQpI
         ZsGShKVXGxRhht0xMy7e/VBnqB9/1LAm1hw42hllMA8ZnkunoY/fEmp3GBj0T0w2sGl7
         JlAQ==
X-Gm-Message-State: ALoCoQlRDzsad1HvVOv5Db33eqMkgwSpS+9Lrtp3IHP1XeypCqlWzasJCdAXhLAf414NbuZvGZot
MIME-Version: 1.0
X-Received: by 10.180.99.66 with SMTP id eo2mr11183891wib.88.1442800284892;
 Sun, 20 Sep 2015 18:51:24 -0700 (PDT)
Date: Mon, 21 Sep 2015 09:51:24 +0800
Message-ID: <CAB_jSYzUXixCi2=9Eoh0iWn+fGPmQMGJ7_eRYvde-g3cNAHMOw@mail.gmail.com>
From: Marina Glancy <marina@moodle.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Moodle security release

The following security notifications have now been made public. Thanks
to OSS members for their cooperation.

Marina Glancy
Development Process Manager
marina@moodle.com
+61894674167 | moodle.com
The world's open source learning platform

==============================================================================
MSA-15-0030: Students can re-attempt answering questions in the lesson

Description:       Completed and graded lesson activity was not protected
                   against making new attempt to answer some questions
Issue summary:     Students can re-attempt answering questions in the lesson
Severity/Risk:     Minor
Versions affected: 2.9 to 2.9.1, 2.8 to 2.8.7, 2.7 to 2.7.9 and earlier
                   unsupported versions
Versions fixed:    2.9.2, 2.8.8 and 2.7.10
Reported by:       Eric Eakin
Issue no.:         MDL-50516
CVE identifier:    CVE-2015-5264
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50516

==============================================================================
MSA-15-0031: Teacher in forum can still post to "all participants" and groups
they are not members of

Description:       Group access is not properly checked when posting to "all
                   participants" in forum
Issue summary:     Teacher without accessallgroups can still post to "all
                   participants" and groups they're not members of
Severity/Risk:     Minor
Versions affected: 2.7 to 2.7.9 and earlier unsupported versions
Versions fixed:    2.7.10
Reported by:       David Scotson
Issue no.:         MDL-50576
CVE identifier:    CVE-2015-5272
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50576

==============================================================================
MSA-15-0032: Users can delete files uploaded by other users in wiki

Description:       Users can delete files uploaded by other users in wiki
                   without capability to manage files
Issue summary:     Disable free access to the file manager in the wiki via the
                   text editor.
Severity/Risk:     Minor
Versions affected: 2.9 to 2.9.1, 2.8 to 2.8.7, 2.7 to 2.7.9 and earlier
                   unsupported versions
Versions fixed:    2.9.2, 2.8.8 and 2.7.10
Reported by:       John Provasnik
Issue no.:         MDL-48371
CVE identifier:    CVE-2015-5265
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-48371

==============================================================================
MSA-15-0033: Meta course synchronisation enrols suspended students as managers
for a short period of time

Description:       On large installations, when sync script takes a long time,
                   suspended students may get assigned a manager role in meta
                   course for several minutes
Issue summary:     Meta course sync enroling suspended students as managers
                   and causing large database growth
Severity/Risk:     Minor
Versions affected: 2.9 to 2.9.1, 2.8 to 2.8.7, 2.7 to 2.7.9 and earlier
                   unsupported versions
Versions fixed:    2.9.2, 2.8.8 and 2.7.10
Reported by:       Brian Winstead
Issue no.:         MDL-50744
CVE identifier:    CVE-2015-5266
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50744

==============================================================================
MSA-15-0034: Vulnerability in password recovery mechanism

Description:       Password recovery token can be guessed because of php
                   randomisation limitations
Issue summary:     Vulnerability in password recovery mechanism
Severity/Risk:     Serious
Versions affected: 2.9 to 2.9.1, 2.8 to 2.8.7, 2.7 to 2.7.9 and earlier
                   unsupported versions
Versions fixed:    2.9.2, 2.8.8 and 2.7.10
Reported by:       Vincent Herbulot (@us3r777)
Issue no.:         MDL-50860
CVE identifier:    CVE-2015-5267
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50860

==============================================================================
MSA-15-0035: Rating component does not check separate groups

Description:       When viewing ratings the group access was not properly
                   checked allowing users from other groups to view ratings
Issue summary:     Rating component does not check separate groups
Severity/Risk:     Minor
Versions affected: 2.9 to 2.9.1, 2.8 to 2.8.7, 2.7 to 2.7.9 and earlier
                   unsupported versions
Versions fixed:    2.9.2, 2.8.8 and 2.7.10
Reported by:       Juan Leyva
Issue no.:         MDL-50173
CVE identifier:    CVE-2015-5268
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50173

==============================================================================
MSA-15-0036: XSS in grouping description

Description:       Capability to manage groups does not have XSS risk, however
                   it was possible to add XSS to the grouping description
Issue summary:     XSS in grouping description
Severity/Risk:     Minor
Versions affected: 2.9 to 2.9.1, 2.8 to 2.8.7, 2.7 to 2.7.9 and earlier
                   unsupported versions
Versions fixed:    2.9.2, 2.8.8 and 2.7.10
Reported by:       Marina Glancy
Issue no.:         MDL-50709
CVE identifier:    CVE-2015-5269
Changes (master):
http://git.moodle.org/gw?p=moodle.git&a=search&h=HEAD&st=commit&s=MDL-50709

==============================================================================
